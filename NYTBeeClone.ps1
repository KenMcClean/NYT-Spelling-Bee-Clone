$letterlist = @('B','C','E','I','L','O')
$anagramKey = "T"
$wordList = Get-Content C:\data\NYTBEE.txt
$foundWordsList = @()
$score = 0
$x = 0

$allLetters = $letterlist += $anagramKey

$allLetters =  $allLetters | Sort-Object {Get-Random}


while($x -lt 15){


write-host $allLetters

$attempt = read-host "Enter a word: "

$attempt = $attempt.ToUpper()


if($attempt.Contains($anagramKey) ){
    if($attempt.Length -gt 3){
        if($foundWordsList -notcontains $attempt){
        if($wordlist -contains $attempt){
                    write-host "valid word"
                    $foundWordsList += $attempt
                    $score += $attempt.Length}
                    
elseif($wordlist -notcontains $attempt)
    {write-host "Invalid word"}}
                    
elseif($foundWordsList -contains $attempt){
    write-host "Word already found"}}

elseif($attempt.length -lt 4){
        write-host "Word must be longer than three letters"}}

 elseif($attempt -notcontains ($anagramKey)){
         write-host "Word must contain key"}

clear
write-host "Words found: "$foundWordsList
write-host "Score: "$score

$x++


}
