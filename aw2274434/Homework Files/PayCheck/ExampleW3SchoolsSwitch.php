<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Another W3Schools Example</title>
</head>

<body>
<?php
	$favcolor="red";
	switch ($favcolor){
		case "red":
  			echo "Your favorite color is red!";
  			break;
		case "blue":
  			echo "Your favorite color is blue!";
  			break;
		case "green":
  			echo "Your favorite color is green!";
  			break;
		default:
  			echo "Your favorite color is neither red, blue, or green!";
    }
?> 
</body>
</html>