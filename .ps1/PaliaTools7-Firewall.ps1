# Script PowerShell pour autoriser Palia dans le pare-feu et exécuter l'application

# Chemin vers l'exécutable de Palia
$exePath = "C:\Palia\Client\Palia\Binaries\Win64\Shipping.exe"

# Vérifiez si le fichier existe
if (Test-Path $exePath) {
    # Autoriser l'application à travers le pare-feu
    New-NetFirewallRule -DisplayName "Autoriser Palia" -Direction Inbound -Program $exePath -Action Allow
    
    # Lancer l'application
    Start-Process $exePath
} else {
    Write-Host "Le fichier Shipping.exe n'existe pas à l'emplacement spécifié."
}
