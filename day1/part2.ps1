$input = Get-Content .\input.txt

[array]$array=@()
$count = 0
foreach ($line in $input) {
    if ($line) {
        $count += [int]$line
    } 
    else {
        $array += $count
        $count = 0
    }
}

$array = ($array | Sort-Object)
$awnser = $array[-1] + $array[-2] + $array[-3]
$awnser
