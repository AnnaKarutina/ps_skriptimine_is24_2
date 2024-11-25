$step = 0
do {
    Write-Host 'Notepad is running'
    $step++
    Start-Sleep -Seconds 1
} until((Get-Process | Where{$_.ProcessName -eq 'notepad'}).Count -eq 0)
Write-Host $step