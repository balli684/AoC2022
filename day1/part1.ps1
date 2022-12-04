$input = Get-Content .\input.txt

[array]$awnser=@()
$count = 0
foreach ($line in $input) {
    if ($line) {
        $count += [int]$line
    } 
    else {
        $awnser += $count
        $count = 0
    }
}

($awnser | Sort-Object)[-1]

