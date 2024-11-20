$names = @("John","Joe", "Mary")
$dayWorked = @(12, 20, 18)
$salaryPerDay = @(100, 120, 150)

$ht1 = @{"Name"=$names; "DayWorked"=$dayWorked}
$ht2 = @{"Name"=$names; "SalaryPerDay"=$salaryPerDay}

$salary = @()

for($i = 0; $i -lt $names.Count; $i++){
    $salary += $ht1.DayWorked[$i] * $ht2.SalaryPerDay[$i]
}


$ht3 = @{"Name"=$ht1.Name; "Salary"=$salary}

$ht3