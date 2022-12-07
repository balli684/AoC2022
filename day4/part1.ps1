
$puzzleinput = Get-Content .\input.txt
$return = 0

foreach ($line in $puzzleinput){
    $line=$line.Split(',')
    $line=$line.Split('-')
    if ((([int]$line[0] -le [int]$line[2]) -and ([int]$line[1] -ge [int]$line[3])) -or (([int]$line[0] -ge [int]$line[2]) -and ([int]$line[1] -le [int]$line[3]))){
        $return++
    }
}
$return