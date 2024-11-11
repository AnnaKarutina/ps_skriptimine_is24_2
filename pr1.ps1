# define data arrays
$array1 = @(1, 2, 3)
$array2 = @(4, 5, 6)

# define empty result array
$array3 = @()

# add new values to empty array
$array3 += $array1[0] + $array2[0]
$array3 += $array1[1] + $array2[1]
$array3 += $array1[2] + $array2[2]

# output result array
$array3