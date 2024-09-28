# Script pour Autoriser Palia dans le Pare-feu et Exécuter l'Application

## Description

Ce script PowerShell permet d'autoriser l'application Palia à travers le pare-feu de Windows et de lancer l'application `Shipping.exe`. Il vérifie d'abord si le fichier existe à l'emplacement spécifié, puis il ajoute une règle au pare-feu pour permettre les connexions entrantes avant de lancer l'application.

## Prérequis

- Windows avec PowerShell
- Droits d'administrateur pour exécuter le script
- Politique d'exécution PowerShell définie sur `RemoteSigned` ou `Unrestricted`
- lancer le .exe


## Chemin de l'Exécutable

- Le chemin vers l'exécutable de Palia est défini dans le script comme suit :

```powershell
$exePath = "C:\Palia\Client\Palia\Binaries\Win64\Shipping.exe"
```

### Vertion manuel 

PaliaTools7 (Pare-feu)

comment résoudre les accidents de pêche et vivox ("Échec du voyage client")

gear => mise à jour et sécurité => sécurité windows => sécurité fenêtre ouverte => Pare-feu et protection => autoriser une application via le pare-feu

ps : la procédure pour les personnes qui ont window comme pare-feu, si vous avez avast ou autre faites la procédure "ajouter une exception" dans votre pare-feu. 
puis accédez à \Palia\Client\Palia\Binaries\Win64 et sélectionnez le Shipping.exe

ou C:\%username%\Admin\AppData\Local\Palia\Launcher 
