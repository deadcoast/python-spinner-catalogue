param(
  [int]$Port = 8000,
  [switch]$NoOpen
)

$ErrorActionPreference = "Stop"
$AppRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$ServerScript = Join-Path $AppRoot "serve_catlog.py"
$IndexFile = Join-Path $AppRoot "index.html"

function Write-Accent {
  param([string]$Text)
  Write-Host $Text -ForegroundColor Cyan
}

function Write-Ok {
  param([string]$Text)
  Write-Host $Text -ForegroundColor Green
}

function Write-Warn {
  param([string]$Text)
  Write-Host $Text -ForegroundColor Yellow
}

function Write-Step {
  param(
    [string]$Label,
    [string]$State
  )
  $line = "{0,-30} {1}" -f $Label, $State
  Write-Host $line
}

function Resolve-PythonCommand {
  $candidates = @(
    @{ File = "python"; Args = @() },
    @{ File = "py"; Args = @("-3") },
    @{ File = "py"; Args = @() }
  )

  foreach ($candidate in $candidates) {
    try {
      $null = & $candidate.File @($candidate.Args + @("--version")) 2>$null
      return $candidate
    } catch {
      continue
    }
  }
  return $null
}

function Test-PortAvailable {
  param([int]$LocalPort)
  try {
    $inUse = Get-NetTCPConnection -LocalPort $LocalPort -State Listen -ErrorAction SilentlyContinue
    return ($null -eq $inUse)
  } catch {
    return $true
  }
}

function Render-Banner {
  Write-Host ""
  Write-Accent "======================================================================="
  Write-Accent "  PYTHON CAT-LOG"
  Write-Accent "  The visual Python catalogue launcher"
  Write-Accent "======================================================================="
  Write-Host ""
}

Render-Banner

Write-Step "Preflight checks" "[..]"
if (-not (Test-Path -Path $IndexFile)) {
  Write-Step "Preflight checks" "[FAIL]"
  Write-Warn "Missing index.html in app root:"
  Write-Host "  $AppRoot"
  exit 1
}
if (-not (Test-Path -Path $ServerScript)) {
  Write-Step "Preflight checks" "[FAIL]"
  Write-Warn "Missing serve_catlog.py in app root:"
  Write-Host "  $AppRoot"
  exit 1
}
Write-Step "Preflight checks" "[OK]"

Write-Step "Python detection" "[..]"
$python = Resolve-PythonCommand
if ($null -eq $python) {
  Write-Step "Python detection" "[FAIL]"
  Write-Warn "Python was not found on PATH."
  Write-Host "Install Python 3.x, then re-run: pycatlog"
  exit 1
}
$pythonDisplay = ($python.File + " " + ($python.Args -join " ")).Trim()
Write-Step "Python detection" ("[OK] " + $pythonDisplay)

if (-not (Test-PortAvailable -LocalPort $Port)) {
  Write-Step "Port check" ("[FAIL] localhost:" + $Port + " already in use")
  Write-Warn "Pick another port, for example: pycatlog -Port 8080"
  exit 1
}
Write-Step "Port check" ("[OK] localhost:" + $Port)

$url = "http://localhost:$Port"
Write-Step "Server endpoint" ("[OK] " + $url)

if (-not $NoOpen) {
  Write-Step "Browser launch" "[..]"
  Start-Job -ScriptBlock {
    param($TargetUrl)
    Start-Sleep -Milliseconds 900
    Start-Process $TargetUrl
  } -ArgumentList $url | Out-Null
  Write-Step "Browser launch" "[OK]"
} else {
  Write-Step "Browser launch" "[SKIP]"
}

Write-Host ""
Write-Ok "Launching quiet local server..."
Write-Host "Press Ctrl+C to stop."
Write-Host ""

$serverArgs = @()
$serverArgs += $python.Args
$serverArgs += $ServerScript
$serverArgs += "$Port"

Push-Location $AppRoot
try {
  & $python.File @serverArgs
} finally {
  Pop-Location
}
