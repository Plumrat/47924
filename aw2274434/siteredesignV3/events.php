<?php

include("../connect.php");
$q = "SELECT * FROM aw2274434_karate_events WHERE `event_date` = '".mysql_real_escape_string($_REQUEST["date"])."'";
$r = mysql_query ($q, $conn ) or die ('request "Could not execute SQL query" '.$q);
while ($row = mysql_fetch_assoc($r)) {
	echo "<h2>".stripcslashes($row["title"])."</h2>";
	echo "<span>".stripcslashes($row["description"])."</span>";
	
}
?>



	