
$puzzleinput = Get-Content .\input.txt
$return = 0

foreach ($line in $puzzleinput){
    $line=$line.Split(',')
    $line=$line.Split('-')
    if (([int]$line[0] -gt [int]$line[3]) -or ([int]$line[1] -lt [int]$line[2])){
        $return++
    }
}

$puzzleinput.count - $return