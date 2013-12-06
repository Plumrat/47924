	<?php
	session_start();
	include ('inc/header.html');
	?>
	<style>
div#body_container>a.tab01 {
	background:url(inc/img/button-hov.png) no-repeat center;
	}
</style>




<!-------------------------------------Register------------------------------------->
				<div id="leftbox">
				<?php
				

				if ($_SERVER['REQUEST_METHOD'] == 'POST') {
					require ('../mysqli_connect.php');
					$errors = array();
					
					if 	(empty($_POST['username'])){
						$errors[] = 'You forgot to enter your username.';
						} else {
						$un = mysqli_real_escape_string($dbc, trim($_POST['username']));
						}
						
						if (!preg_match('/^\s*[A-Za-z0-9_\s]{4,30}\s*$/', $_POST ['username'])){
						$errors[] = 'You may not use one or more of characters that you provided in your username.';
						} else {
						$un = mysqli_real_escape_string($dbc, trim($_POST['username']));
						}
						
					if 	(empty($_POST['first_name'])){
						$errors[] = 'You forgot to enter your first name.';
						} else {
						$fn = mysqli_real_escape_string($dbc, trim($_POST['first_name']));
						}
					
					if (!preg_match('/^\s*[A-Za-z-.\'\s]{2,40}\s*$/', $_POST ['first_name'])){
						$errors[] = 'You may not use one or more of characters that you provided in your first name.';
						} else {
						$fn = mysqli_real_escape_string($dbc, trim($_POST['first_name']));
						}
	
					if (empty($_POST['last_name'])) {
						$errors[] = 'You forgot to enter your last name.';
						} else {
						$ln = mysqli_real_escape_string($dbc, trim($_POST['last_name']));
						}
						
					if (!preg_match('/^\s*[A-Za-z-.\'\s]{2,40}\s*$/', $_POST ['last_name'])){
						$errors[] = 'You may not use one or more of characters that you provided in your last name.';
						} else {
						$fn = mysqli_real_escape_string($dbc, trim($_POST['last_name']));
						}
					
					if (empty($_POST['email'])) {
						$errors[] = 'You forgot to enter your email address.';
						} else {
						$e = mysqli_real_escape_string($dbc, trim($_POST['email']));
						}

					if (!preg_match('/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/', $_POST ['email'])){
						$errors[] = 'You may not use one or more of characters that you provided in your email.';
						} else {
						$fn = mysqli_real_escape_string($dbc, trim($_POST['email']));
						}
					
					if (!empty($_POST['pass1'])) {
						if ($_POST['pass1'] != $_POST['pass2']) {
							$errors[] = 'Your password did not match the confirmed password.';
							} else {
							$p = mysqli_real_escape_string($dbc, trim($_POST['pass1']));
							}
					} else {
					$errors[] = 'You forgot to enter your password.';
					}

					if (!preg_match('/^[a-z0-9_-]{6,20}$/', $_POST ['pass1'])){
						$errors[] = 'You may not use one or more of characters that you provided in your password. Please use 6-20 characters, a-z, 0-9, "_", and "-" only.';
						} else {
						$fn = mysqli_real_escape_string($dbc, trim($_POST['pass1']));
						}
	
					if (empty($errors)) {
						$q = "INSERT INTO aw2274434_users (username, first_name, last_name, email, pass, registration_date) VALUES ('$un', '$fn', '$ln', '$e', SHA1('$p'), NOW() )";		
						$r = @mysqli_query ($dbc, $q);
						if ($r) { 
							echo '<h1>Thank you!</h1>
							<p>You are now a registered user.</p><p><br /></p>';	
							} else {
							echo '<h1>System Error</h1>
							<p class="error">You could not be registered due to a system error. We apologize for any inconvenience.</p>'; 
							echo '<p>' . mysqli_error($dbc) . '<br /><br />Query: ' . $q . '</p>';
							}
							mysqli_close($dbc);
							exit();
							} else { 
							echo '<h1>Error!</h1>
							<p class="error">The following error(s) occurred:<br />';
							foreach ($errors as $msg) { 
								echo " - $msg<br />\n";
								}
							echo '</p><p>Please try again.</p><p><br /></p>';
							}
	
				mysqli_close($dbc);}
				?>
				<h1 class="tabtitle">Register</h1>
				<form action="register.php" method="post">
                	<p>Username: <input type="text" name="username" size="15" maxlength="20" value="<?php if (isset($_POST['username'])) echo $_POST['username']; ?>" /></p>
					<p>First Name: <input type="text" name="first_name" size="15" maxlength="20" value="<?php if (isset($_POST['first_name'])) echo $_POST['first_name']; ?>" /></p>
					<p>Last Name: <input type="text" name="last_name" size="15" maxlength="40" value="<?php if (isset($_POST['last_name'])) echo $_POST['last_name']; ?>" /></p>
					<p>Email Address: <input type="text" name="email" size="20" maxlength="60" value="<?php if (isset($_POST['email'])) echo $_POST['email']; ?>"  /> </p>
					<p>Password: <input type="password" name="pass1" size="10" maxlength="20" value="<?php if (isset($_POST['pass1'])) echo $_POST['pass1']; ?>"  /></p>
					<p>Confirm Password: <input type="password" name="pass2" size="10" maxlength="20" value="<?php if (isset($_POST['pass2'])) echo $_POST['pass2']; ?>"  /></p>
					<p><input type="submit" name="submit" value="Register" /></p>
				</form>

<!---------------------------------------------->
			<?php
	include ('inc/footer.html');
	?>