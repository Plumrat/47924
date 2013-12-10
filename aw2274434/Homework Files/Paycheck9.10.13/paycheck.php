<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
</body>
<?php
	//Simple paycheck calculator
    //Declare inputs
	$payRate=10;//$/hour
	$hrsWrkd=50;//hours worked
	$dblTime=40;//40 hours when double time starts
	//calulate your paycheck
	($hrsWrkd<$dblTime)?
		$payChk=$hrsWrkd*$payRate:
		$payChk=$dblTime*$payRate+
				($hrsWrkd-$dblTime)*2*$payRate;
	//output the paycheck amount
	echo "<p>Your Paycheck = $$payChk</p>";
	
	//ALTERNATE
	//calulate your paycheck
	$payChk=($hrsWrkd<$dblTime)?
		$hrsWrkd*$payRate:
		$dblTime*$payRate+
				($hrsWrkd-$dblTime)*2*$payRate;
	//output the paycheck amount
	echo "<p>Your Paycheck = $$payChk</p>";
?>
</body>
</html>