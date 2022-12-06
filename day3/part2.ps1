$chars = ".abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
$chars = $chars.ToCharArray()

$puzzleinput = Get-Content .\input.txt
$return = 0

for ($count = 0; $count -lt $puzzleinput.Count;$count+=3){
    $one=($puzzleinput[$count]).ToCharArray()
    $two=($puzzleinput[$count+1]).ToCharArray()
    $three=($puzzleinput[$count+2]).ToCharArray()
    $cnt = 0
    while((-not($two.Contains($one[$cnt]))) -or (-not($three.Contains($one[$cnt]))) ){
        $cnt++
    }
    $return += [array]::IndexOf($chars,$one[$cnt])
}

$return

