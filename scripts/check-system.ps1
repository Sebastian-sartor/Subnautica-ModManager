Write-Host "=========================================="
Write-Host " Subnautica Mod Manager"
Write-Host "=========================================="
Write-Host ""

# Ruta al archivo packages.json
$packagesFile = Join-Path $PSScriptRoot "..\manifests\packages.json"

# Comprobar que exista
if (!(Test-Path $packagesFile)) {
    Write-Host "[ERROR] No se encontró packages.json"
    exit
}

# Leer el archivo JSON
$packages = Get-Content $packagesFile -Raw | ConvertFrom-Json

Write-Host "Paquetes registrados:"
Write-Host ""

foreach ($package in $packages.packages) {
    Write-Host ("[+] {0} {1}" -f $package.name, $package.version)
}

Write-Host ""
Write-Host "Comprobación finalizada."
