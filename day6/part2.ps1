$puzzleinput = (Get-Content .\input.txt).ToCharArray()
$length = 14
$count = 0

while (($puzzleinput[$count..($count+$length-1)] | Sort-Object | Get-Unique).Count -ne $length) {
    $count++
}

$count + $length 