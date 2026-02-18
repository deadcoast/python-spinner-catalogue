param(
  [int]$Port = 8000,
  [switch]$NoOpen
)

$ErrorActionPreference = "Stop"

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
  Write-Accent "  PYTHON SPINNERS CATALOGUE"
  Write-Accent "  Fast local launcher for spinner and progress bar showcase"
  Write-Accent "======================================================================="
  Write-Host ""
}

Render-Banner

Write-Step "Preflight checks" "[..]"
if (-not (Test-Path -Path "index.html")) {
  Write-Step "Preflight checks" "[FAIL]"
  Write-Warn "Missing index.html in the current directory:"
  Write-Host "  $((Get-Location).Path)"
  exit 1
}
Write-Step "Preflight checks" "[OK]"

Write-Step "Python detection" "[..]"
$python = Resolve-PythonCommand
if ($null -eq $python) {
  Write-Step "Python detection" "[FAIL]"
  Write-Warn "Python was not found on PATH."
  Write-Host "Install Python 3.x, then re-run: .\run"
  exit 1
}
$pythonDisplay = ($python.File + " " + ($python.Args -join " ")).Trim()
Write-Step "Python detection" ("[OK] " + $pythonDisplay)

if (-not (Test-PortAvailable -LocalPort $Port)) {
  Write-Step "Port check" ("[FAIL] localhost:" + $Port + " already in use")
  Write-Warn "Pick another port, for example: .\run -Port 8080"
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
Write-Ok "Launching Python HTTP server..."
Write-Host "Press Ctrl+C to stop."
Write-Host ""

$serverArgs = @()
$serverArgs += $python.Args
$serverArgs += "-m"
$serverArgs += "http.server"
$serverArgs += "$Port"

& $python.File @serverArgs
