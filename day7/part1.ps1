
$puzzleinput = Get-Content .\input.txt
# $return = 0

$currentdirs =  [System.Collections.ArrayList]@()
$dirs =  [System.Collections.ArrayList]@()

foreach ($line in $puzzleinput) {
    if ($line -like '$ cd *') {
        if (($line.Split(' '))[-1] -like '..'){
            $dirs.Add($currentdirs[-1]) | Out-Null
            $currentdirs.RemoveAt($currentdirs.Count-1)
        }
        else {
            $currentdirs.Add(($line.Split(' '))[-1]) | Out-Null
        }
    } 
    elseif ((-not($line -like '$*')) -and (-not($line -like 'dir*'))) {
        $size = [int]($line.Split(' '))[0]

    }
}
# $return
while ($currentdirs) {
    $dirs.Add($currentdirs[-1]) | Out-Null
    $currentdirs.RemoveAt($currentdirs.Count-1)
}

Write-Host "current dirs are"
$currentdirs
Write-Host "dirs are"
$dirs