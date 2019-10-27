<!-- Table of a number -->
<?php    
define('a', 7);   
for($i=1; $i<=10; $i++)   
{   
  echo $i*a;   
  echo '<br>';     
}  
echo '<br>'
?>  

<!-- Prime number check -->
<form method="post">  
Enter a Number: <input type="text" name="input"><br><br>  
<input type="submit" name="submit" value="Submit">  
</form>  
<?php  
if($_POST)  
{  
    $input=$_POST['input'];  
    for ($i = 2; $i <= $input-1; $i++) {  
      if ($input % $i == 0) {  
      $value= True;  
      }  
}  
if (isset($value) && $value) {  
     echo 'The Number '. $input . ' is not prime<br>';  
}  else {  
   echo 'The Number '. $input . ' is prime<br>';  
   }   
}  
?>  

<!-- Palindrome -->
<?php  
function palindrome($n){  
$number = $n;  
$sum = 0;  
while(floor($number)) {  
$rem = $number % 10;  
$sum = $sum * 10 + $rem;  
$number = $number/10;  
}  
return $sum;  
}  
$input = 1235321;  
$num = palindrome($input);  
if($input==$num){  
echo "$input is a Palindrome number<br>";  
} else {  
echo "$input is not a Palindrome<br>";  
}  
?>  

<!-- Factorial -->
<?php  
$num = 4;  
$factorial = 1;  
for ($x=$num; $x>=1; $x--)   
{  
  $factorial = $factorial * $x;  
}  
echo "Factorial of $num is $factorial";  
?>  

<!-- Fibonacci -->
<?php  
$num = 0;  
$n1 = 0;  
$n2 = 1;  
echo "<h3>Fibonacci series for first 12 numbers: </h3>";  
echo "\n";  
echo $n1.' '.$n2.' ';  
while ($num < 10 )  
{  
    $n3 = $n2 + $n1;  
    echo $n3.' ';  
    $n1 = $n2;  
    $n2 = $n3;  
    $num = $num + 1;  
}
?>  

