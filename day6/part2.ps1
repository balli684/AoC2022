$puzzleinput = Get-Content .\input.txt
$puzzleinput = $puzzleinput.ToCharArray()
$awnser = 0
$count = 0
while (-not($awnser)) {
    if (($puzzleinput[$count..($count+13)] | Sort-Object | Get-Unique).Count -eq 14){
        $awnser = $count+14
    }
    $count++
}
$awnser