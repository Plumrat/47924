<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Isshinryu karate</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
<meta name="description" content="brief synapses of page"/>
<meta name="keywords" content="important, keywords, about, page"/>

<link rel="stylesheet" href="style/index.css" />
<link rel="stylesheet" media="only screen and (max-width: 400px)" href="style/mobile.css" />
<link rel="stylesheet" media="screen, handheld, print, projection href="style/mobile.css" />

</head>
<body>

<div id="head_container">
 <h1 id="page_title">Isshinryu karate</h1>
</div>


<div id="body_container">
  <a class="tab01" href="index.php" tabindex="1">&nbsp; Home &nbsp;</a>
  <a class="tab02" href="about.php" tabindex="2">About the Dojo</a>
  <a class="tab03" href="instructors.php" tabindex="3">Instructors</a>
  <a class="tab04" href="terms.php" tabindex="4">Terminology</a>
  <a class="tab05" href="awards.php" tabindex="5">Awards and Honors</a>
  


	<div class="tabcont" id="tab01cont">
	<img id="logo" src="fistsbeige7.png" alt="" />
	
		<div id="contact">
			<h2>Contact</h2>
			For more information and to book your free trial, call: <br />
			760-568 0961<br /><br />

			68225<br />
			Ramon Road<br />
			at Whispering Palms<br />
			Cathedral City<br />
				<div id="interact">
				<ul id="navlist" >
				<li><a class="navtab" id="login_tab" href="login.php">Login</a></li>
				<li><a class="navtab" id="reg_tab" href="register.php">Register</a></li>
				<li><a class="navtab" id="users_tab" href="view_users.php">View Users</a></li>
				</ul>
				</div>
		</div>
			
			
			
			<div id="sched_rates">







<?php
$page_title = 'Delete a User';
echo '<h1>Delete a User</h1>';

// Check for a valid user ID, through GET or POST:
if ( (isset($_GET['id'])) && (is_numeric($_GET['id'])) ) { // From view_users.php
	$id = $_GET['id'];
} elseif ( (isset($_POST['id'])) && (is_numeric($_POST['id'])) ) { // Form submission.
	$id = $_POST['id'];
} else { // No valid ID, kill the script.
	echo '<p class="error">This page has been accessed in error.</p>';
	include ('includes/footer.html'); 
	exit();
}

require ('../mysqli_connect.php');

// Check if the form has been submitted:
if ($_SERVER['REQUEST_METHOD'] == 'POST') {

	if ($_POST['sure'] == 'Yes') { // Delete the record.

		// Make the query:
		$q = "DELETE FROM aw2274434_users WHERE user_id=$id LIMIT 1";		
		$r = @mysqli_query ($dbc, $q);
		if (mysqli_affected_rows($dbc) == 1) { // If it ran OK.

			// Print a message:
			echo '<p>The user has been deleted.</p>';	

		} else { // If the query did not run OK.
			echo '<p class="error">The user could not be deleted due to a system error.</p>'; // Public message.
			echo '<p>' . mysqli_error($dbc) . '<br />Query: ' . $q . '</p>'; // Debugging message.
		}
	
	} else { // No confirmation of deletion.
		echo '<p>The user has NOT been deleted.</p>';	
	}

} else { // Show the form.

	// Retrieve the user's information:
	$q = "SELECT CONCAT(last_name, ', ', first_name) FROM aw2274434_users WHERE user_id=$id";
	$r = @mysqli_query ($dbc, $q);

	if (mysqli_num_rows($r) == 1) { // Valid user ID, show the form.

		// Get the user's information:
		$row = mysqli_fetch_array ($r, MYSQLI_NUM);
		
		// Display the record being deleted:
		echo "<h3>Name: $row[0]</h3>
		Are you sure you want to delete this user?";
		
		// Create the form:
		echo '<form action="delete_user.php" method="post">
	<input type="radio" name="sure" value="Yes" /> Yes 
	<input type="radio" name="sure" value="No" checked="checked" /> No
	<input type="submit" name="submit" value="Submit" />
	<input type="hidden" name="id" value="' . $id . '" />
	</form>';
	
	} else { // Not a valid user ID.
		echo '<p class="error">This page has been accessed in error.</p>';
	}

} // End of the main submission conditional.

mysqli_close($dbc);
		

?>






		</div>
		</div>
		
	</div>



</body>
</html>