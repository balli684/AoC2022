# A = Rock      1
# B = Paper     2
# C = Scissors  3
# X = Lose      0
# Y = Draw      3
# Z = Win       6


$puzzleinput = Get-Content .\input.txt

$awnser=0

foreach ($line in $puzzleinput) {
    switch ($line) {
        {$_ -like "A X" } {$score = 3;break}
        {$_ -like "A Y" } {$score = 4;break}
        {$_ -like "A Z" } {$score = 8;break}
        {$_ -like "B X" } {$score = 1;break}
        {$_ -like "B Y" } {$score = 5;break}
        {$_ -like "B Z" } {$score = 9;break}
        {$_ -like "C X" } {$score = 2;break}
        {$_ -like "C Y" } {$score = 6;break}
        {$_ -like "C Z" } {$score = 7;break}
    }
    $awnser += $score
}

$awnser

