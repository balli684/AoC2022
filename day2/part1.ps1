# A = Rock
# B = Paper
# C = Scissors
# X = Rock      1
# Y = Paper     2
# Z = Scissors  3


$puzzleinput = Get-Content .\input.txt

$awnser=0

foreach ($line in $puzzleinput) {
    switch ($line) {
        {$_ -like "A X" } {$score = 4;break}
        {$_ -like "A Y" } {$score = 8;break}
        {$_ -like "A Z" } {$score = 3;break}
        {$_ -like "B X" } {$score = 1;break}
        {$_ -like "B Y" } {$score = 5;break}
        {$_ -like "B Z" } {$score = 9;break}
        {$_ -like "C X" } {$score = 7;break}
        {$_ -like "C Y" } {$score = 2;break}
        {$_ -like "C Z" } {$score = 6;break}
    }
    $awnser += $score
}

$awnser

