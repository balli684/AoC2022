
$inputfile = ".\testinput.txt"
$puzzleinput = Get-Content $inputfile

$count=0
do {
    $line = $puzzleinput[$count]
    $count++
    $line
} until (-not ($line))