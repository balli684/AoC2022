
$inputfile = ".\input.txt"
$puzzleinput = Get-Content $inputfile
$return = 70000000

[System.Collections.ArrayList]$dirs = @()
[hashtable]$sizes = @{}

foreach ($line in $puzzleinput) {
    if ($line -like '$ cd *') {
        if (($line.Split(' '))[-1] -like '..'){
            $dirs.RemoveAt($dirs.Count-1)
        }
        else {
            $current=($line.Split(' '))[-1]

            while ($sizes.$current -ge 0) {
                $current += "_"
            }
            $dirs.Add($current) | Out-Null
            $sizes.Add($dirs[-1],0) | Out-Null
        }
    } 
    elseif ((-not($line -like '$*')) -and (-not($line -like 'dir*'))) {
        foreach ($dir in $dirs) {
            $sizes.$dir += [int]($line.Split(' '))[0]
        }

    }
}

$needed = $sizes.'/' - 40000000

foreach ($value in $sizes.Values) {
    if (($value -ge $needed) -and ($value -lt $return)) {
        $return = $value
    }
}

$return