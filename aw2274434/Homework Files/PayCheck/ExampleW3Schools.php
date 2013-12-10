<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Example for W3Schools</title>
</head>

<body>
<?php
date_default_timezone_set('America/Los_Angeles');
    $test=date('H:m:s');
	echo $test."<br/>";
	$t=date("H");
	//If Else
	if ($t<"20"){
  		echo "Have a good day!"."<br/>";
  	}else{
  		echo "Have a good night!"."<br/>";
    }
    //If Else if
	if ($t<"10"){
  		echo "Have a good morning!";
    }elseif ($t<"20"){
  		echo "Have a good day!";
    }else{
  		echo "Have a good night!";
    }
?> 
</body>
</html>