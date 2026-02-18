$ErrorActionPreference = "Stop"

$RepoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$RunScript = Join-Path $RepoRoot "run.ps1"

if (-not (Test-Path $RunScript)) {
  Write-Error "run.ps1 not found at: $RunScript"
  exit 1
}

$BinDir = Join-Path $env:LOCALAPPDATA "pycatlog\bin"
$ShimPath = Join-Path $BinDir "pycatlog.cmd"

New-Item -ItemType Directory -Path $BinDir -Force | Out-Null

$shim = @"
@echo off
powershell -NoProfile -ExecutionPolicy Bypass -File "$RunScript" %*
"@

Set-Content -Path $ShimPath -Value $shim -Encoding Ascii

$userPath = [Environment]::GetEnvironmentVariable("Path", "User")
if ([string]::IsNullOrWhiteSpace($userPath)) {
  $userPath = $BinDir
  [Environment]::SetEnvironmentVariable("Path", $userPath, "User")
  $pathUpdated = $true
} elseif ($userPath.Split(';') -notcontains $BinDir) {
  [Environment]::SetEnvironmentVariable("Path", ($userPath.TrimEnd(';') + ";" + $BinDir), "User")
  $pathUpdated = $true
} else {
  $pathUpdated = $false
}

# Also update the current session PATH so `pycatlog` works immediately.
$sessionParts = @($env:Path -split ';' | Where-Object { -not [string]::IsNullOrWhiteSpace($_) })
if ($sessionParts -notcontains $BinDir) {
  $env:Path = ($sessionParts + $BinDir) -join ';'
}

Write-Host ""
Write-Host "Python Cat-Log command installed." -ForegroundColor Green
Write-Host "Command: pycatlog" -ForegroundColor Cyan
Write-Host "Shim:    $ShimPath"
Write-Host ""
if (Get-Command pycatlog -ErrorAction SilentlyContinue) {
  Write-Host "Verified: `pycatlog` is available in this terminal." -ForegroundColor Green
  Write-Host "Try it now: pycatlog" -ForegroundColor Green
} elseif ($pathUpdated) {
  Write-Host "PATH was updated. Restart your terminal before running: pycatlog" -ForegroundColor Yellow
  Write-Host "If using VS Code, fully close and reopen VS Code." -ForegroundColor Yellow
} else {
  Write-Host "Command shim created, but this shell has stale PATH." -ForegroundColor Yellow
  Write-Host "Restart your terminal and run: pycatlog" -ForegroundColor Yellow
}
