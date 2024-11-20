$data = Import-Csv "C:\Users\Anna\ps_skriptimine\data.csv"

$schoolData = @()
foreach($personData in $data){

    $personData.Age = [int]$personData.Age
    $school = ""

    if($personData.Age -ge 4 -and $personData.Age -le 10){
        $school = "Junior"
    } elseif($personData.Age -ge 11 -and $personData.Age -le 17){
        $school = "Senior"
    }

    $schoolData += @{'Name'=$personData.Name; 'School'=$school}
}

# convert data to string
$csvContent = @()
$csvContent += "Name,School"  # header row
foreach ($row in $schoolData) {
    $csvContent += "$($row.Name),$($row.School)"
}

# save converted string to file
$csvContent | Set-Content -Path "C:\Users\Anna\ps_skriptimine\school_data.csv"