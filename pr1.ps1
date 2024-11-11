# define data arrays
$array1 = @(1, 2, 3)
$array2 = @(4, 5, 6)

# define empty result array
$array3 = New-Object -TypeName System.Collections.ArrayList ## $array3 = [System.Collections.ArrayList]@()

# add new values to empty array
$array3.Add($array1[0] + $array2[0]) | Out-Null
$array3.Add($array1[1] + $array2[1]) | Out-Null
$array3.Add($array1[2] + $array2[2]) | Out-Null

# output result array
$array3