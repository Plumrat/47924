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
				<li><a class="navtab" id="contact_tab" href="contact_form.php">Contact Form</a></li>
				<li><a class="navtab" id="reg_tab" href="register.php">Register</a></li>
				<li><a class="navtab" id="users_tab" href="view_users.php">View Users</a></li>
				</ul>
				</div>
		</div>
			
			
			
			<div id="sched_rates">
<?php 
// Validate the name:
if (!empty($_REQUEST['name'])) {
	$name = $_REQUEST['name'];
} else {
	$name = NULL;
	echo '<p class="error">You forgot to enter your name!</p>';
}

// Validate the email:
if (!empty($_REQUEST['email'])) {
	$email = $_REQUEST['email'];
} else {
	$email = NULL;
	echo '<p class="error">You forgot to enter your email address!</p>';
}

// Validate the comments:
if (!empty($_REQUEST['comments'])) {
	$comments = $_REQUEST['comments'];
} else {
	$comments = NULL;
	echo '<p class="error">You forgot to enter your comments!</p>';
}

// Validate the gender:
if (isset($_REQUEST['gender'])) {

	$gender = $_REQUEST['gender'];
	
	if ($gender == 'M') {
		$greeting = '<p><b>Good day, Sir!</b></p>';
	} elseif ($gender == 'F') {
		$greeting = '<p><b>Good day, Madam!</b></p>';
	} else { // Unacceptable value.
		$gender = NULL;
		echo '<p class="error">Gender should be either "M" or "F"!</p>';
	}
	
} else { // $_REQUEST['gender'] is not set.
	$gender = NULL;
	echo '<p class="error">You forgot to select your gender!</p>';
}

// If everything is OK, print the message:
if ($name && $email && $gender && $comments) {

	echo "<p>Thank you, <b>$name</b>, for the following comments:<br />
	<tt>$comments</tt></p>
	<p>We will reply to you at <i>$email</i>.</p>\n";
	
	echo $greeting;
	
} else { // Missing form value.
	echo '<p class="error">Please go back and fill out the form again.</p>';
}

?>

		</div>
		</div>
		
	</div>



</body>
</html>