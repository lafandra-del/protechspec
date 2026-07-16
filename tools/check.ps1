Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$failures = @()
$warnings = @()

function Add-Failure {
  param([string]$Message)
  $script:failures += $Message
}

function Add-Warning {
  param([string]$Message)
  $script:warnings += $Message
}

function Test-RequiredFile {
  param([string]$Path)
  if (-not (Test-Path -LiteralPath $Path)) {
    Add-Failure "Missing required file: $Path"
  }
}

$requiredFiles = @(
  "README.md",
  "CHANGELOG.md",
  "AGENTS.md",
  "log_project.md",
  "commit.md",
  ".gitignore",
  ".editorconfig",
  "tools/check.ps1",
  "site.js",
  "tests/site.test.js"
)

foreach ($requiredFile in $requiredFiles) {
  Test-RequiredFile -Path $requiredFile
}

if (Test-Path -LiteralPath "tests/site.test.js") {
  $node = Get-Command node -ErrorAction SilentlyContinue
  if ($null -eq $node) {
    Add-Failure "Node.js 22+ is required to run site behavior tests."
  } else {
    Write-Host "Running site behavior tests..."
    & node --test "tests/site.test.js"
    if ($LASTEXITCODE -ne 0) {
      Add-Failure "Site behavior tests failed."
    }
    Write-Host ""
  }
}

$forbiddenNames = @("desktop.ini", "Thumbs.db")
$allFiles = Get-ChildItem -Recurse -Force -File -ErrorAction SilentlyContinue
foreach ($forbiddenName in $forbiddenNames) {
  $found = $allFiles | Where-Object { $_.Name -ieq $forbiddenName }
  foreach ($item in $found) {
    Add-Failure "Forbidden OS file found: $($item.FullName)"
  }
}

$markdownFiles = Get-ChildItem -Recurse -File -Filter "*.md" -ErrorAction SilentlyContinue
foreach ($file in $markdownFiles) {
  $firstNonEmptyLine = Get-Content -LiteralPath $file.FullName | Where-Object { $_.Trim() -ne "" } | Select-Object -First 1
  if ($null -eq $firstNonEmptyLine) {
    Add-Warning "Empty markdown file: $($file.FullName)"
    continue
  }

  if ($firstNonEmptyLine -notmatch "^#\s+\S+") {
    Add-Warning "Markdown file has no top-level heading: $($file.FullName)"
  }
}

Write-Host "Repo check summary:"
Write-Host "  Failures: $($failures.Count)"
Write-Host "  Warnings: $($warnings.Count)"

if ($warnings.Count -gt 0) {
  Write-Host ""
  Write-Host "Warnings:"
  foreach ($warning in $warnings) {
    Write-Host "  - $warning"
  }
}

if ($failures.Count -gt 0) {
  Write-Host ""
  Write-Host "Failures:"
  foreach ($failure in $failures) {
    Write-Host "  - $failure"
  }
  exit 1
}

Write-Host ""
Write-Host "All mandatory checks passed."
