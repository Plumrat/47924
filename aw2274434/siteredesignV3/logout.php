<?php
ob_start();
session_start();
require ('inc/config.inc.php');
$page_title = 'Logout';
include ('inc/header.html');
?>



<!-------------------------------------Logout------------------------------------->
<?php
if (!isset($_SESSION['user_id'])) {

	// Need the functions:
	
	$url = BASE_URL . 'index.php'; // Define the URL.
	ob_end_clean(); // Delete the buffer.
	header("Location: $url");
	exit(); // Quit the script.
	
} else { // Cancel the session:
	require ('inc/login_functions.inc.php');
	$_SESSION = array(); // Clear the variables.
	session_destroy(); // Destroy the session itself.
	setcookie (session_name(), '', time()-3600); // Destroy the cookie.
	redirect_user('index.php');
}

echo "<h1>Logged Out!</h1>
<p>You are now logged out!</p>";
?>
<!---------------------------------------------->
			<?php
	include ('inc/footer.html');
	?>