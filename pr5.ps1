Get-ChildItem -Path C:\Temp\Test

Write-Host

$result = Get-ChildItem -Path C:\Temp\Test | Where{$_.Name -like '*.csv'} | Select Name, Length

Write-Host "Filename: $($result.Name)"
Write-Host "Size in KB: $($result.Length/1024)"
Write-Host "Size in MB: $($result.Length/1MB)"