<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Writing our Own Functions</title>
<?php
	//Using loops
	function save($p,$i,$n){
		$sav=$p;
		for($year=1;$year<=$n;$year++){
			$sav*=(1+$i);
		}
		return $sav;
	}
?>
</head>

<body>
<?php
	//Test our function
	//Declare and initialize variables
	$p=1e2;//principle -> $100
	$i=8e-2;//interest -> 8%
	$n=5e1;//years -> 50
	$savings=array();
	
	//Calculate savings for 0 to 50 years
	for($year=0;$year<=$n;$year++){
		$savings[$year]=save($p,$i,$year);
	}
	
	//Generate the result in a string
	$str='<table width="200" border="1">';
	$str.="<tr>";
	$str.="<th>YEAR</th>";
	$str.="<th>SAVINGS $</th>";
	$str.="</tr>";
	for($year=0;$year<=$n;$year++){
		$str.="<tr>";
		$str.="<th>$year</th>";
		$str.="<td>".number_format($savings[$year],2)."</td>";
		$str.="</tr>";
	}
	$str.="</table>";
	
	//Output
	echo $str;
?>

  <tr>
   
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>

</body>
</html>





