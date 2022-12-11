
$inputfile = ".\testinput.txt"
$stacks = 3
$puzzleinput = Get-Content $inputfile

$array = [string[]]::new($stacks)

$count=0
do {
    [string]$line = $puzzleinput[$count]
    $count++
    for ($i=0;($i -le $stacks) -and (($i*4+1) -le $line.Length);$i++){
        if (($line.Substring(($i*4+1),1) -ne ' ') -and ($line.Substring(($i*4+1),1) -gt 9)) {
            $array[$i] += $line.Substring(($i*4+1),1)
        }
    }
} until (-not ($line))

do {
    [string]$line = $puzzleinput[$count]
    $count++
    $split = $line.Split(' ')
    [int]$amount = $split[1]
    [int]$from = $split[3] 
    [int]$to = $split[5]
    for ($i=1;$i -le $amount;$i++){
        $array[$to-1] = ($array[$from-1]).Substring(0,1) + $array[$to-1]
        $array[$from-1] = ($array[$from-1]).Remove(0,1)
    }
} until (-not ($line))

[string]$return = ""
for ($i=0;$i -lt $stacks;$i++){
    $return += $array[$i].Substring(0,1)
}

$return