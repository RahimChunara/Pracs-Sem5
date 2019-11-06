<!-- User IP address -->
<?php  
echo 'User IP Address - '.$_SERVER['REMOTE_ADDR'];  
echo '<br>'
?>  

<!-- Browser Detection -->
<?php
echo "Your User Agent is :" . $_SERVER ['HTTP_USER_AGENT'];
?>

<!-- Browser Detection alternative -->
<?php
$agent = $_SERVER["HTTP_USER_AGENT"];

if( preg_match('/MSIE (\d+\.\d+);/', $agent) ) {
  echo "<br>You're using Internet Explorer<br>";
} else if (preg_match('/Chrome[\/\s](\d+\.\d+)/', $agent) ) {
  echo "<br>You're using Chrome<br>";
} else if (preg_match('/Edge\/\d+/', $agent) ) {
  echo "<br>You're using Edge<br>";
} else if ( preg_match('/Firefox[\/\s](\d+\.\d+)/', $agent) ) {
  echo "<br>You're using Firefox<br>";
} else if ( preg_match('/OPR[\/\s](\d+\.\d+)/', $agent) ) {
  echo "<br>You're using Opera<br>";
} else if (preg_match('/Safari[\/\s](\d+\.\d+)/', $agent) ) {
  echo "<br>You're using Safari<br>";
}
?>

<!-- Check email Validity -->
<?php 
$email = "12334@gmail.com"; 
if (filter_var($email, FILTER_VALIDATE_EMAIL)) { 
    echo("$email is a valid email address"); 
}  
else { 
    echo("$email is not a valid email address"); 
} 
?> 

<!-- Source code of a Webpage -->
<?php
$all_lines = file('https://www.w3resource.com/');
foreach ($all_lines as $line_num => $line)
 {
 	echo "Line No.-{$line_num}: " . htmlspecialchars($line) . "\n";
 }
?>