$puzzleinput = Get-Content .\input.txt
$puzzleinput = $puzzleinput.ToCharArray()
$awnser = 0
$count = 0
while (-not($awnser)) {
    if (($puzzleinput[$count..($count+3)] | Sort-Object | Get-Unique).Count -eq 4){
        $puzzleinput[$count..($count+3)]
        $awnser = $count+4
    }
    $count++
}
$awnser