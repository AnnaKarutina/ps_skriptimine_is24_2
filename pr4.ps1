$countries = @('India', 'Australia', 'China')
$capitals = @('New Delhi', 'Canberra', 'Beijing')

Write-Host "Select country:" -ForegroundColor Yellow
for($i = 0; $i -lt $countries.Count; $i++){
    Write-Host ($i + 1)":"$countries[$i] -ForegroundColor Cyan
}

$selectedCountry = Read-Host "Please select country"
if($selectedCountry -ge 1 -and $selectedCountry -le $countries.Count){
    Write-Host "$($countries[$selectedCountry-1])'s capital is $($capitals[$selectedCountry-1])" -ForegroundColor Green
} else {
    Write-Host "Use only 1-3 numbers" -ForegroundColor Red
}