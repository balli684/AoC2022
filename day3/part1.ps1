$chars = ".abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
$chars = $chars.ToCharArray()

for ($count=0; $count -lt $chars.Length; $count++){
    Write-Host "$count $($chars[$count])"
}


# $puzzleinput = Get-Content .\input.txt

# foreach ($line in $puzzleinput){
#     $line
#     $line.Substring(0,$line.Length/2)
#     $line.Substring($line.Length/2)

# }