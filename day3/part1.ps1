$chars = ".abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
$chars = $chars.ToCharArray()

$puzzleinput = Get-Content .\input.txt
$return = 0

foreach ($line in $puzzleinput){
    $first=($line.Substring(0,$line.Length/2)).ToCharArray()
    $second=($line.Substring($line.Length/2)).ToCharArray()
    $count=0
    while (($count -lt $first.Count) -and (-not ($second.Contains($first[$count])))){
        $count++
    }
    $return += [array]::IndexOf($chars,$first[$count])
}
$return