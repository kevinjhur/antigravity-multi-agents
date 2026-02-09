# Simplicity Studio 8051 프로젝트 빌드 및 업로드 스크립트 (Makefile 직접 호출 방식)
# 사용법: .\c8051_build.ps1 -Action [clean | build | rebuild | up | all]

param (
    [Parameter(Mandatory=$false)]
    [ValidateSet("build", "clean", "rebuild", "up", "all")]
    [string]$Action = "all",

    [string]$StudioPath = "C:\SiliconLabs\SimplicityStudio\v5",
    [string]$WorkspacePath = "c:\project\LIGNex1_USV-Micom",
    [string]$ProjectName = "T1CONVERTER"
)

# 🛠️ 핵심 도구 경로 설정 (확인된 경로 기반)
$MsysPath = Join-Path $StudioPath "support\common\build\msys\1.0\bin"
$Make = Join-Path $MsysPath "make.exe"
$KeilPath = Join-Path $StudioPath "developer\toolchains\keil_8051\9.60\BIN"
$Commander = Join-Path $StudioPath "developer\adapter_packs\commander\commander.exe"

$ProjectPath = Join-Path $WorkspacePath "micom"
$BuildDir = Join-Path $ProjectPath "Keil 8051 v9.60.0 - Debug"

# 🛠️ 환경 변수 PATH 설정 (Keil 및 MSYS 유틸리티 포함)
$env:PATH = "$KeilPath;$MsysPath;" + $env:PATH


function Run-Clean {
    Write-Host "`n>>> [CLEAN] Project: $ProjectName" -ForegroundColor Yellow
    if (Test-Path $BuildDir) {
        Push-Location $BuildDir
        & $Make clean
        Pop-Location
    }
}

function Run-Build {
    Write-Host "`n>>> [BUILD] Project: $ProjectName" -ForegroundColor Green
    if (Test-Path $BuildDir) {
        Push-Location $BuildDir
        # Makefile이 'all' 타겟을 가지고 있으므로 직접 호출
        & $Make all
        Pop-Location
    } else {
        Write-Error "Build directory not found: $BuildDir"
    }
}

function Run-Upload {
    # .cproject 설정에 기반한 기본 출력 경로 및 파일명
    $HexFile = Join-Path $BuildDir "LIGNex1_USV.hex"
    if (Test-Path $HexFile) {
        Write-Host "`n>>> [UPLOAD] Uploading firmware: $HexFile" -ForegroundColor Cyan
        & $Commander flash $HexFile --device C8051F580
    } else {
        Write-Error "Hex file not found! Please build first. (Path: $HexFile)"
    }
}

switch ($Action) {
    "clean"   { Run-Clean }
    "build"   { Run-Build }
    "rebuild" { Run-Clean; Run-Build }
    "up"      { Run-Upload }
    "all"     { Run-Clean; Run-Build; Run-Upload }
}
