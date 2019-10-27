<!-- Write and Closing file to the file -->
<?php
$fileName = "test.txt";
$fp = fopen($fileName,"w");
if( $fp == false )
{
  echo ( "Error in opening file" );
  exit();
}
fwrite( $fp, "This is a sample text to write\n" );
fclose( $fp );
?>


<!-- Open and Read the file -->
<?php
$fileName = "test.txt";
$fp = fopen($fileName,"r");
if( $fp == false )
{
  echo ( "Error in opening file" );
  exit();
}
  
while(!feof($fp))
{
  echo fgets($fp). "<br>";
}
?> 

<!-- Open and Append file -->
<?php
$fileName = "test.txt";
$fp = fopen($fileName,"a");
if( $fp == false )
{
  echo ( "Error in opening file" );
  exit();
}
fwrite( $fp, "File has been appended\n" );
?>

<!-- Open and Read file -->
<?php
$fileName = "test.txt";
$fp = fopen($fileName,"r");
if( $fp == false )
{
  echo ( "Error in opening file" );
  exit();
}
  
while(!feof($fp))
{
  echo fgets($fp). "<br>";
}
?> 


<!-- Delete file  -->
<?php      
$status=unlink('test.txt');    
if($status){  
echo "File deleted successfully";    
}else{  
echo "Sorry!";    
}  
?>  