<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Multiplication Table</title>
<?php
	function createArray($array){
			//Declare the 2D array
		$multTab=array();
		for($row=0;$row<$rows;$row++){
			$array[$row]=array();
		}
		return $array;
	}
	function fillArray($array){
	}
	function displayArray($array){
	}
?>
</head>

<body>

</body>
<?php
	//Declare rows and columns 
	//desired in the multiplication table
	$rows=12;
	$cols=16;
	//Declare the 2D array
	$multTab=array();
	for($row=0;$row<$rows;$row++){
		$multTab[$row]=array();
	}
	//Fill table with info
	for($row=0;$row<$rows;$row++){
		for($col=0;$col<$cols;$col++){
			$multTab[$row][$col]=
				($row+1)*($col+1);
		}
	}
	//Display the table
	
	
?>
<table width="200" border="1">
<?php
	$str="";
	for($row=0;$row<$rows;$row++){			//outer loop for row
		$str.="<tr>";
		for($col=0;$col<$cols;$col++){		//inner loop for column
			$str.=("<td>".
			$multTab[$row][$col].
			"</td>");
		}
		$str.="</tr>";
	}
	echo $str;
?>
</table>

</body>
</html>