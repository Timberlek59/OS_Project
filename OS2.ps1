Clear-Host
Write-Host "=== Générateur de table de multiplication ===`n"

do {
    # Demander un nombre
    $inputNumber = Read-Host "Entrez un nombre"

    if (-not ($inputNumber -as [int])) {
        Write-Host "`nVeuillez entrer un nombre valide !" -ForegroundColor Red
        continue
    }

    $number = [int]$inputNumber

    # ----- Fonctionnalité 1 : choix de la limite -----
    $limitInput = Read-Host "Jusqu'à quel multiplicateur souhaitez-vous aller ? (ex: 10, 20, 50)"
    if (-not ($limitInput -as [int])) {
        Write-Host "`nValeur invalide, la limite sera fixée à 10." -ForegroundColor Yellow
        $limit = 10
    } else {
        $limit = [int]$limitInput
    }

    Write-Host "`nTable de multiplication de $number jusqu'à $limit :`n"

    $tableLines = @()

    for ($i = 1; $i -le $limit; $i++) {
        $resultat = $number * $i
        $line = "$number x $i = $resultat"
        $tableLines += $line
        Write-Host $line
    }

$save = Read-Host "`nSouhaitez-vous enregistrer cette table dans un fichier texte ? (o/n)"

    if ($save -eq "o") {
        $fileName = "Table_$number.txt"
        $tableLines | Out-File $fileName -Encoding UTF8
        Write-Host "Fichier enregistré sous : $fileName" -ForegroundColor Green
    }

} while ($restart -eq "o")

Write-Host "`nFin du programme."

