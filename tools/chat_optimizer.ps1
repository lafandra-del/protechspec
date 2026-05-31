<#
.SYNOPSIS
    Оптимизатор токенов чата с Claude API.
.DESCRIPTION
    Мониторинг расхода токенов, дедупликация контекста, автогенерация
    HANDOFF-файла при достижении 90% лимита контекстного окна.
    Без внешних зависимостей — только встроенный PowerShell + .NET.
.PARAMETER System
    Системный промпт (опционально).
.PARAMETER Model
    Модель Claude (по умолчанию claude-sonnet-4-6).
.PARAMETER Output
    Папка для HANDOFF-файла (по умолчанию текущая).
.PARAMETER ApiKey
    API-ключ Anthropic. По умолчанию из $env:ANTHROPIC_API_KEY.
.PARAMETER WarnAt
    Порог предупреждения 0–1 (по умолчанию 0.75).
.PARAMETER FinalizeAt
    Порог финализации 0–1 (по умолчанию 0.90).
.EXAMPLE
    .\tools\chat_optimizer.ps1
.EXAMPLE
    .\tools\chat_optimizer.ps1 -System "Ты техспец онлайн-школ" -Model claude-opus-4-8
.EXAMPLE
    .\tools\chat_optimizer.ps1 -Output .\handoffs -FinalizeAt 0.01
#>

param(
    [string] $System     = '',
    [string] $Model      = 'claude-sonnet-4-6',
    [string] $Output     = '.',
    [string] $ApiKey     = $env:ANTHROPIC_API_KEY,
    [double] $WarnAt     = 0.75,
    [double] $FinalizeAt = 0.90
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

# ── Константы ────────────────────────────────────────────────────────────────

$ContextLimits = @{
    'claude-opus-4-8'            = 200000
    'claude-sonnet-4-6'          = 200000
    'claude-haiku-4-5-20251001'  = 200000
}

$Limit          = if ($ContextLimits.ContainsKey($Model)) { $ContextLimits[$Model] } else { 200000 }
$ApiBase        = 'https://api.anthropic.com/v1'
$AnthropicVer   = '2023-06-01'

# ── Проверка API-ключа ───────────────────────────────────────────────────────

if (-not $ApiKey) {
    Write-Host 'Ошибка: ANTHROPIC_API_KEY не задан.' -ForegroundColor Red
    Write-Host 'Передайте через -ApiKey или задайте переменную окружения ANTHROPIC_API_KEY.' -ForegroundColor DarkGray
    exit 1
}

# ── Хэш сообщения (MD5 по role+content) ─────────────────────────────────────

function Get-MsgHash {
    param($Msg)
    $content = if ($Msg.content -is [string]) {
        $Msg.content
    } else {
        $Msg.content | ConvertTo-Json -Compress -Depth 10
    }
    $str   = "$($Msg.role):$content"
    $bytes = [System.Text.Encoding]::UTF8.GetBytes($str)
    $hash  = [System.Security.Cryptography.MD5]::Create().ComputeHash($bytes)
    return ([System.BitConverter]::ToString($hash)) -replace '-', ''
}

# ── Цветной прогресс-бар ─────────────────────────────────────────────────────

function Write-TokenBar {
    param([double]$Pct)
    $used    = [int]($Pct * $Limit)
    $filled  = [math]::Min([int]($Pct * 20), 20)
    $empty   = 20 - $filled
    $bar     = ('█' * $filled) + ('░' * $empty)
    $pctStr  = '{0:F1}' -f ($Pct * 100)
    $usedStr = '{0:N0}' -f $used
    $limStr  = '{0:N0}' -f $Limit
    $line    = "[$bar] $pctStr%  $usedStr / $limStr токенов"

    $color = if ($Pct -ge $FinalizeAt) { 'Red' }
             elseif ($Pct -ge $WarnAt)  { 'Yellow' }
             else                        { 'Green' }
    Write-Host $line -ForegroundColor $color
}

# ── HTTP-запрос к Anthropic API ──────────────────────────────────────────────

function Invoke-Claude {
    param(
        [string]    $Endpoint,
        [hashtable] $Body,
        [string]    $BetaHeader = ''
    )

    $headers = @{
        'x-api-key'         = $ApiKey
        'anthropic-version' = $AnthropicVer
        'content-type'      = 'application/json'
    }
    if ($BetaHeader) { $headers['anthropic-beta'] = $BetaHeader }

    $json = $Body | ConvertTo-Json -Depth 10 -Compress

    try {
        return Invoke-RestMethod `
            -Uri         "$ApiBase/$Endpoint" `
            -Method      POST `
            -Headers     $headers `
            -Body        $json `
            -ContentType 'application/json'
    }
    catch {
        $code   = $_.Exception.Response?.StatusCode?.value__
        $detail = try { $_.ErrorDetails.Message } catch { $_.Exception.Message }
        Write-Host "Ошибка API ($code): $detail" -ForegroundColor Red
        throw
    }
}

# ── Подсчёт токенов ──────────────────────────────────────────────────────────

function Get-TokenCount {
    param([array]$Msgs)
    if ($Msgs.Count -eq 0) { return 0 }

    $body = @{ model = $Model; messages = @($Msgs) }
    if ($System) { $body['system'] = $System }

    $result = Invoke-Claude `
        -Endpoint   'messages/count_tokens' `
        -Body       $body `
        -BetaHeader 'token-counting-2024-11-01'

    return [int]$result.input_tokens
}

# ── Дедупликация ─────────────────────────────────────────────────────────────

function Remove-Duplicates {
    param([array]$Msgs)

    $seen  = @{}
    $clean = [System.Collections.Generic.List[object]]::new()

    foreach ($msg in $Msgs) {
        $h = Get-MsgHash $msg
        if (-not $seen.ContainsKey($h)) {
            $seen[$h] = $true
            $clean.Add($msg)
        }
    }

    return , $clean.ToArray()   # запятая сохраняет тип [array] при возврате
}

# ── Генерация handoff ────────────────────────────────────────────────────────

function Save-Handoff {
    param([array]$Msgs)

    $request = @'
Создай файл-передачу для продолжения работы в новом чате.
Используй формат CLAUDE.md. Включи строго следующие разделы:

# Проект
Краткое описание проекта, стека и целей.

# Что сделано
Список выполненных задач с ключевыми техническими решениями.

# Текущее состояние
На чём остановились, что в процессе.

# Следующие шаги
Конкретный список того, что нужно сделать дальше.

# Ключевые решения и ограничения
Договорённости, предпочтения пользователя, ограничения стека.

Будь лаконичным и конкретным. Файл должен позволить новому чату продолжить работу без потери контекста.
'@

    $allMsgs = @($Msgs) + @(@{ role = 'user'; content = $request })
    $body    = @{ model = $Model; max_tokens = 2048; messages = @($allMsgs) }
    if ($System) { $body['system'] = $System }

    $response = Invoke-Claude -Endpoint 'messages' -Body $body
    $content  = $response.content[0].text

    $null = New-Item -ItemType Directory -Path $Output -Force
    $ts       = Get-Date -Format 'yyyyMMdd_HHmmss'
    $filePath = Join-Path $Output "HANDOFF_$ts.md"

    [System.IO.File]::WriteAllText(
        (Resolve-Path $Output).Path + "\HANDOFF_$ts.md",
        $content,
        [System.Text.Encoding]::UTF8
    )

    return $filePath
}

# ── Основной цикл ────────────────────────────────────────────────────────────

$messages  = @()
$finalized = $false

Write-Host ''
Write-Host "ChatOptimizer  |  модель: $Model  |  лимит: $('{0:N0}' -f $Limit) токенов" -ForegroundColor Cyan
Write-Host "Предупреждение при $([int]($WarnAt * 100))%  |  Финализация при $([int]($FinalizeAt * 100))%" -ForegroundColor DarkGray
Write-Host "Введите сообщение. Ctrl+C или 'exit' для выхода." -ForegroundColor DarkGray
Write-Host ''

try {
    while (-not $finalized) {
        $userInput = (Read-Host 'Вы').Trim()

        if (-not $userInput) { continue }
        if ($userInput -in @('exit', 'quit', 'выход')) { break }

        # Добавить сообщение и дедуплицировать
        $messages  = @($messages) + @(@{ role = 'user'; content = $userInput })
        $before    = $messages.Count
        $messages  = Remove-Duplicates $messages
        $removed   = $before - $messages.Count
        if ($removed -gt 0) {
            Write-Host "🧹 Удалено дублирующихся сообщений: $removed" -ForegroundColor Cyan
        }

        # Токены
        $tokens = Get-TokenCount $messages
        $pct    = $tokens / $Limit
        Write-TokenBar $pct

        # Финализация
        if ($pct -ge $FinalizeAt) {
            Write-Host ''
            Write-Host "🔴 Достигнуто $([math]::Round($pct * 100))% лимита. Генерирую handoff..." -ForegroundColor Red
            $path = Save-Handoff $messages
            Write-Host "✅ Handoff сохранён: $path" -ForegroundColor Green
            Write-Host '📋 Скопируйте содержимое файла в начало нового чата.' -ForegroundColor Yellow
            $finalized = $true
            break
        }

        # Предупреждение
        if ($pct -ge $WarnAt) {
            $remaining = [int](($FinalizeAt - $pct) * $Limit)
            Write-Host "⚡ Внимание: осталось ~$('{0:N0}' -f $remaining) токенов до финализации" -ForegroundColor Yellow
        }

        # Запрос к Claude
        $body = @{ model = $Model; max_tokens = 4096; messages = @($messages) }
        if ($System) { $body['system'] = $System }

        $response  = Invoke-Claude -Endpoint 'messages' -Body $body
        $reply     = $response.content[0].text
        $messages  = @($messages) + @(@{ role = 'assistant'; content = $reply })

        Write-Host ''
        Write-Host "Claude: $reply" -ForegroundColor White
        Write-Host ''
    }
}
finally {
    Write-Host 'Завершение.' -ForegroundColor DarkGray
}
