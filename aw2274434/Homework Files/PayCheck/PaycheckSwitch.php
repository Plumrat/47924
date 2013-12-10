<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Paycheck Calculations</title>
</head>

<body>
<?php
    //Retrieve the form values
	$payRate=$_GET["payRate"];
	$hrsWrkd=$_GET["hrsWrkd"];
	$ovtTime=$_GET["ovtTime"];
	
	//Calculate the Paycheck
	switch($hrsWrkd<$ovtTime){
	   case true:$payChck=$hrsWrkd*$payRate;
	   			 break;
       default:
	   			$payChck=$hrsWrkd*$payRate+
	       		($hrsWrkd-$ovtTime)*$payRate;
	}
	//Re-Display the inputs
	echo "<p>Pay Rate = $$payRate/hr</p>";
	echo "<p>Hours Worked = $hrsWrkd(hrs)</p>";
	echo "<p>Overtime starts here at $ovtTime(hrs)</p>";
	echo "<p>Pay Check = $$payChck</p>";
?>
</body>
</html>