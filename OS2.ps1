Clear-Host
Write-Host "---Générateur de table de multiplication---`n"
$inputNumber = Read-Host "Entrez un nombre"
if (-not ($inputNumber -as [int])) {
    Write-Host "`nVeuillez entrer un nombre valide !" -ForegroundColor Red
    exit
}
$number = [int]$inputNumber
Write-Host "`nTable de multiplication de $number :`n"
for ($i = 1; $i -le 10; $i++) {
    $resultat = $number * $i
    Write-Host "$number x $i = $resultat"
}
Write-Host "`nFin du programme."
