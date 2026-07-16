#Requires -Version 7
<#
.SYNOPSIS
  Проверка технической документации PROTECHSPEC.
.DESCRIPTION
  Блоки: обязательные файлы, Markdown-структура, index.html,
  файловая структура, кодировка.
  Уровни: FAIL (выход 1), WARN, INFO (рекомендации).
.EXAMPLE
  pwsh -NoProfile -File tools/doc_check.ps1
#>

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

# ────────────────────────────── helpers ──────────────────────────────────────

$failures = [System.Collections.Generic.List[string]]::new()
$warnings  = [System.Collections.Generic.List[string]]::new()
$infos     = [System.Collections.Generic.List[string]]::new()

function Add-Failure([string]$msg) { $script:failures.Add($msg) }
function Add-Warning([string]$msg) { $script:warnings.Add($msg) }
function Add-Info   ([string]$msg) { $script:infos.Add($msg) }

function Write-Section([string]$title) {
    Write-Host "`n── $title " -ForegroundColor Cyan -NoNewline
    Write-Host ('─' * [Math]::Max(2, 50 - $title.Length)) -ForegroundColor DarkGray
}
function Write-OK([string]$msg) {
    Write-Host "  [OK]   $msg" -ForegroundColor Green
}
function Write-Detail([string]$label, [string]$value) {
    Write-Host "         ${label}: " -NoNewline -ForegroundColor DarkGray
    Write-Host $value -ForegroundColor White
}

# ─────────────────────── 1. ОБЯЗАТЕЛЬНЫЕ ФАЙЛЫ ───────────────────────────────

Write-Section '1. Обязательные файлы'

$required = @(
    'AGENTS.md',
    'README.md',
    'CHANGELOG.md',
    'log_project.md',
    'commit.md',
    'index.html',
    '.gitignore',
    '.editorconfig',
    'photo.jpg',
    'tools/check.ps1',
    'tools/chat_optimizer.ps1',
    '.github/workflows/repo-check.yml'
)

foreach ($f in $required) {
    if (Test-Path -LiteralPath $f) {
        Write-OK $f
    } else {
        Add-Failure "Отсутствует обязательный файл: $f"
        Write-Host "  [FAIL] $f" -ForegroundColor Red
    }
}

# ─────────────────────── 2. MARKDOWN: СТРУКТУРА ───────────────────────────────

Write-Section '2. Markdown — структура и ошибки'

$root    = (Get-Location).Path
$mdFiles = Get-ChildItem -Recurse -File -Filter '*.md' |
           Where-Object { $_.FullName -notmatch [regex]::Escape("$root\.git") }

foreach ($file in $mdFiles) {
    $rel   = $file.FullName.Replace($root + '\', '')
    $lines = Get-Content -LiteralPath $file.FullName -Encoding UTF8 -ErrorAction SilentlyContinue

    # 2.1 Пустой файл
    if (-not $lines -or $lines.Count -eq 0) {
        Add-Failure "$rel — файл пустой"
        Write-Host "  [FAIL] $rel" -ForegroundColor Red
        continue
    }

    $issues = @()

    # 2.2 H1 в начале
    $firstNonEmpty = $lines | Where-Object { $_.Trim() -ne '' } | Select-Object -First 1
    if ($firstNonEmpty -notmatch '^#\s+\S+') {
        Add-Warning "$rel — нет заголовка H1 в начале файла"
        $issues += 'нет H1'
    }

    # 2.3 Иерархия заголовков (нет пропуска уровней)
    $prevLevel = 0
    $n = 0
    foreach ($line in $lines) {
        $n++
        if ($line -match '^(#{1,6})\s+\S') {
            $lvl = $Matches[1].Length
            if ($prevLevel -gt 0 -and ($lvl - $prevLevel) -gt 1) {
                Add-Warning "${rel}:${n} — пропуск уровня заголовка (H${prevLevel}→H${lvl})"
                $issues += "H${prevLevel}→H${lvl} на строке $n"
            }
            $prevLevel = $lvl
        }
    }

    # 2.4 Плейсхолдеры
    $n = 0
    foreach ($line in $lines) {
        $n++
        if ($line -match '\[(TODO|FIXME|TBD|PLACEHOLDER|ВАШ|YOUR)\b' -or
            $line -match '^\s*[-*]\s+(TODO|FIXME|TBD)\b') {
            Add-Info "${rel}:${n} — плейсхолдер: $($line.Trim())"
            $issues += "плейсхолдер строка $n"
        }
    }

    # 2.5 Битые относительные ссылки
    $n = 0
    foreach ($line in $lines) {
        $n++
        $ms = [regex]::Matches($line, '\[.*?\]\(((?!https?://|mailto:|#)[^\)]+)\)')
        foreach ($m in $ms) {
            $target = ($m.Groups[1].Value -split '#')[0].Trim()
            if ($target -and -not (Test-Path -LiteralPath $target)) {
                Add-Warning "${rel}:${n} — битая ссылка: $target"
                $issues += "битая ссылка строка $n"
            }
        }
    }

    # 2.6 Trailing whitespace
    $twCount = @($lines | Where-Object { $_ -match '\s+$' }).Count
    if ($twCount -gt 0) {
        Add-Info "$rel — $twCount строк с trailing whitespace"
        $issues += "$twCount trailing ws"
    }

    if ($issues.Count -eq 0) {
        Write-OK $rel
    } else {
        Write-Host "  [~~]  $rel" -ForegroundColor Yellow
        Write-Detail 'замечания' ($issues -join '; ')
    }
}

# ──────────────────────── 3. INDEX.HTML ──────────────────────────────────────

Write-Section '3. index.html — мета, контент, размер'

if (Test-Path 'index.html') {
    $html  = Get-Content 'index.html' -Raw -Encoding UTF8
    $hlines = $html -split "`n"

    # 3.1 Обязательные теги / данные
    $checks = [ordered]@{
        '<title>'            = 'отсутствует <title>'
        'charset'            = 'отсутствует charset'
        'viewport'           = 'отсутствует meta viewport'
        '<h1'                = 'отсутствует <h1>'
        'photo.jpg'          = 'нет ссылки на photo.jpg'
        '@max_sunfire'       = 'нет Telegram @max_sunfire'
        'lafandra@yandex.ru' = 'нет email lafandra@yandex.ru'
    }
    foreach ($kv in $checks.GetEnumerator()) {
        if ($html -match [regex]::Escape($kv.Key)) {
            Write-OK "index.html › найдено: $($kv.Key)"
        } else {
            Add-Warning "index.html — $($kv.Value)"
            Write-Host "  [WARN] index.html — $($kv.Value)" -ForegroundColor Yellow
        }
    }

    # 3.2 Плейсхолдеры в HTML-тексте (вне атрибутов)
    $n = 0
    foreach ($line in $hlines) {
        $n++
        if ($line -match '>\s*\[.+?\]\s*<' -or $line -match '>\s*(TODO|FIXME|TBD)\b') {
            Add-Info "index.html:$n — плейсхолдер в тексте: $($line.Trim().Substring(0,[Math]::Min(90,$line.Trim().Length)))"
        }
    }

    # 3.3 Размер файла
    $kb = [math]::Round((Get-Item 'index.html').Length / 1KB, 1)
    if ($kb -gt 100) {
        Add-Warning "index.html — ${kb}KB > 100KB, рассмотри вынос CSS в отдельный файл"
    } else {
        Write-OK "index.html › размер: ${kb}KB"
    }
} else {
    Add-Failure 'index.html — файл не найден'
}

# ──────────────────── 4. ФАЙЛОВАЯ СТРУКТУРА ──────────────────────────────────

Write-Section '4. Файловая структура — оптимизация'

# 4.1 .md в корне (кроме служебных файлов проекта)
$conventionalRoots = @('AGENTS.md', 'README.md', 'CHANGELOG.md', 'CONTRIBUTING.md', 'LICENSE.md', 'CLAUDE.md', 'CLAUDE.MD', 'commit.md', 'log_project.md')
$rootMds = @(Get-ChildItem -File -Filter '*.md' | Where-Object { $_.Name -notin $conventionalRoots })
foreach ($f in $rootMds) {
    Add-Info "/$($f.Name) — при росте проекта перенести в docs/"
}
if ($rootMds.Count -eq 0) { Write-OK 'корень: лишних .md нет' }

# 4.2 Kebab-case для md-файлов
# conventional uppercase names are excluded from kebab-case check
$conventionalNames = @('AGENTS', 'README', 'CHANGELOG', 'CONTRIBUTING', 'LICENSE', 'CLAUDE', 'CODEOWNERS', 'COMMIT', 'LOG_PROJECT')
$badNames = @(Get-ChildItem -Recurse -File -Filter '*.md' |
             Where-Object { $_.FullName -notmatch [regex]::Escape("$root\.git") -and
                            ($_.BaseName -cmatch '[A-Z]' -or $_.BaseName -match '[_ ]') -and
                            $_.BaseName.ToUpper() -notin $conventionalNames })
foreach ($f in $badNames) {
    $suggested = ($f.BaseName.ToLower() -replace '[_ ]', '-') + $f.Extension
    Add-Warning "$($f.Name) — нарушение kebab-case; рекомендуется: $suggested"
}
if ($badNames.Count -eq 0) { Write-OK 'именование .md: kebab-case OK' }

# 4.3 Untracked файлы вне .gitignore
$untracked = @(git status --porcelain 2>$null |
             Where-Object { $_ -match '^\?\? ' } |
             ForEach-Object { $_ -replace '^\?\? ', '' })
foreach ($u in $untracked) {
    Add-Info "Untracked: $($u.Trim())"
}
if ($untracked.Count -eq 0) { Write-OK 'untracked файлы: нет' }

# 4.4 Крупные бинарные файлы (>500KB)
$large = @(Get-ChildItem -Recurse -File |
           Where-Object { $_.Length -gt 500KB -and $_.FullName -notmatch [regex]::Escape("$root\.git") })
foreach ($f in $large) {
    $mb = [math]::Round($f.Length / 1MB, 2)
    Add-Warning "$($f.Name) — ${mb}MB > 500KB; рассмотри Git LFS или оптимизацию"
}
if ($large.Count -eq 0) { Write-OK 'крупные файлы: нет' }


# ────────────────────── 5. КОДИРОВКА И ОКОНЧАНИЯ СТРОК ───────────────────────

Write-Section '5. Кодировка и окончания строк'

$textExt  = @('.md', '.html', '.ps1', '.yml', '.yaml', '.json', '.css', '.js', '.txt')
$textFiles = @(Get-ChildItem -Recurse -File |
               Where-Object { $_.Extension -in $textExt -and
                              $_.FullName -notmatch [regex]::Escape("$root\.git") })

foreach ($file in $textFiles) {
    $rel   = $file.FullName.Replace($root + '\', '')
    $bytes = [System.IO.File]::ReadAllBytes($file.FullName)
    $enc   = @()

    # UTF-8 BOM
    if ($bytes.Count -ge 3 -and $bytes[0] -eq 0xEF -and $bytes[1] -eq 0xBB -and $bytes[2] -eq 0xBF) {
        Add-Warning "$rel — UTF-8 BOM обнаружен (рекомендуется без BOM)"
        $enc += 'BOM'
    }

    # Нулевые байты
    if ($bytes -contains 0x00) {
        Add-Warning "$rel — содержит нулевые байты (возможна ошибка кодировки)"
        $enc += 'null-bytes'
    }

    if ($enc.Count -eq 0) { Write-OK "$rel" } else {
        Write-Host "  [WARN] $rel — $($enc -join ', ')" -ForegroundColor Yellow
    }
}

# ───────────────────────────── ИТОГ ──────────────────────────────────────────

$divider = '═' * 52
Write-Host "`n$divider" -ForegroundColor White
Write-Host ' ИТОГ ПРОВЕРКИ ДОКУМЕНТАЦИИ' -ForegroundColor White
Write-Host $divider -ForegroundColor White

$fColor = if ($failures.Count -gt 0) { 'Red'    } else { 'Green' }
$wColor = if ($warnings.Count -gt 0) { 'Yellow' } else { 'Green' }
$iColor = 'Cyan'

Write-Host "  Ошибок (FAIL):        $($failures.Count)" -ForegroundColor $fColor
Write-Host "  Предупреждений (WARN): $($warnings.Count)" -ForegroundColor $wColor
Write-Host "  Рекомендаций (INFO):  $($infos.Count)"    -ForegroundColor $iColor

if ($failures.Count -gt 0) {
    Write-Host "`nОШИБКИ:" -ForegroundColor Red
    foreach ($m in $failures) { Write-Host "  [FAIL] $m" -ForegroundColor Red }
}
if ($warnings.Count -gt 0) {
    Write-Host "`nПРЕДУПРЕЖДЕНИЯ:" -ForegroundColor Yellow
    foreach ($m in $warnings) { Write-Host "  [WARN] $m" -ForegroundColor Yellow }
}
if ($infos.Count -gt 0) {
    Write-Host "`nРЕКОМЕНДАЦИИ:" -ForegroundColor Cyan
    foreach ($m in $infos) { Write-Host "  [INFO] $m" -ForegroundColor Cyan }
}

Write-Host ''
if ($failures.Count -eq 0) {
    Write-Host '  Все обязательные проверки пройдены.' -ForegroundColor Green
    exit 0
} else {
    Write-Host '  Проверка НЕ пройдена. Исправь ошибки и запусти снова.' -ForegroundColor Red
    exit 1
}
