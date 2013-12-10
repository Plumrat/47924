<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Writing our own functions</title>
<?php
	//using the power function
	function save1($p,$i,$n){
		return $p*pow((1+$i),$n);
	}
	//same as above with defaulted parameters
		function save2($p,$i=0.06,$n=12){
		return $p*pow((1+$i),$n);
	}
	//using loops
		function save3($p,$i,$n){
			$sav=$p;
		for($year=1;$year<=$n;$year++){
			$sav*=(1+$i);
		}
		return $sav;
	}
	//using calling itself -> recursion
		function save4($p,$i,$n){
			if ($n==0) return $p;
			return save4($p,$i,$n-1)*(1+$i);
	}
	//the power function is really the
	//exponential and the log function
		function save5($p,$i,$n){
			return $p*exp($n*log(1+$i));
	}
	//Using pass by reference
	function save6($p,$i,$n,&$fv){
		$fv=$p*pow((1+$i),$n);
	}
	//$h -> hours worked in hours
	//$pr -> payrate in $/hr
	//$dtm -> double time starts here
	//$ttm -> triple time starts here
	function payChck1($h,$pr,$dtm,$ttm){
		$pay=($h<$dtm)?$h*$pr:
			($h<$ttm)?$dtm*$pr+2*($h-$dtm)*$pr:
			$dtm*$pr+2*($ttm-$dtm)*$pr+
			3*($h-$ttm)*$pr;
		return $pay;
	}
		function payChck2($h,$pr,$dtm,$ttm){
		return ($h<$dtm)?$h*$pr:
			($h<$ttm)?$dtm*$pr+2*($h-$dtm)*$pr:
			$dtm*$pr+2*($ttm-$dtm)*$pr+
			3*($h-$ttm)*$pr;
	}
?>
</head>

<body>
<?php
		//test our function
		//declare and initialize variables
		$p=1e2;//principle -> $100
		$i=8e-2;//interest -> 5%
		$n=0.9e1;//years -> 15
		
		//Calculate our future value
		$fv1=number_format(save1($p,$i,$n),2);
		$fv2=number_format(save2($p),2);
		$fv2a=number_format(save2($p),2);
		$fv3=number_format(save3($p,$i,$n),2);
		$fv4=number_format(save4($p,$i,$n),2);
		$fv5=number_format(save5($p,$i,$n),2);
		save6($p,$i,$n,$fv6);
		$fv6=number_format($fv6,2);
		//			 hr pr dt ttm
		$pay1=payChck1(20,10,20,40);
		$pay2=payChck2(20,10,20,40);
		
		//output the results
		echo "<p>Starting Balance 		= $$p </P>";
		echo "<p>Interest Rate 			= ".$i*1e2."% </P>";
		echo "<p>Compounding Periods 	= $n </P>";
		echo "<p>Future Value 1 		= $$fv1 </P>";
		echo "<p>Future Value 2 6%12yr		= $$fv2 </P>";
		echo "<p>Future Value 2a		= $$fv2a </P>";
		echo "<p>Future Value 3			= $$fv3 </P>";
		echo "<p>Future Value 4			= $$fv4 </P>";
		echo "<p>Future Value 5			= $$fv5 </P>";
		echo "<p>Future Value 6			= $$fv6 </P>";
		echo "<p>Our Paycheck			= $$pay1 </P>";
		echo "<p>Our Paycheck			= $$pay2 </P>";
?>   
</body>
</html>