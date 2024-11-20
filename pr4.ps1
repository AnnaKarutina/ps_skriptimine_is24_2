$number1 = Read-Host "Insert first number"
$number2 = Read-Host "Insert second number"


if($number1 -notmatch '^\d+$' -or $number1 -notmatch '^\d+$'){
    Write-Host "Use only numbers" -ForegroundColor Red
} else {

    $biggerNumber = 0

    if($number1 -gt $number2){
        $biggerNumber = $number1
    } elseif ($number2 -gt $number1){
        $biggerNumber = $number2
    } else {
        $biggerNumber = $number1
        Write-Host "Numbers are equal, the biggest is: $biggerNumber"
        Exit 0
    }

    Write-Host "The higher number is : $biggerNumber"
}