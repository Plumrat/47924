	<?php
	session_start();
	include ('inc/header.html');
	?>
	<!---------------------------------------------->
    <h2>Survey</h2>
    <ul>
	<?php
	echo '<h1>Take Survey</h1>';
	
	
		if ($_SERVER['REQUEST_METHOD'] == 'POST') {
		
		
		
		if ($_POST){
		$trimmed = array_map('trim', $_POST);
			
				$m = $_POST['m'];
				$d = $_POST['d'];
				$y = $_POST['y'];
				$favcol = $_POST['colour'];
				
				} else {
				
				$m = $_GET['m'];
				$d = $_GET['d'];
				$y = $_GET['y'];
				$favcol = $_GET['colour'];
								
				}
					
					require ('../mysqli_connect.php');
					
					$trimmed = array_map('trim', $_POST);
					$fn = $ln = $e = $p = FALSE;
					$errors = array();
					
					
					
					
		if 	(empty($trimmed['first_name'])){
						$errors[] = 'You forgot to enter your first name.';
						} else {
						$un = mysqli_real_escape_string($dbc, $trimmed['first_name']);
						}
						
						if (!preg_match('/^\s*[A-Za-z-.\'\s]{2,40}\s*$/', $trimmed['first_name'])){
						$errors[] = 'You may not use one or more of characters that you provided in your first_name.';
						} else {
						$un = mysqli_real_escape_string($dbc, $trimmed['first_name']);
						}			
					
					
					
					
					
			$q = 'INSERT INTO aw2274434_survey_entity_survey1res (user_id, first_name, last_name, birthday, fav_color, fav_food, blogging_yn, animals_yn, cooking_yn, writing_yn, sewing_yn, dance_yn, sports_yn, art_yn, fantasy_football_yn, magic_yn, origami_yn, reading_yn, console_games_yn, travel_yn, cosplay_yn, larping_yn, bio, fav_animal) VALUES ('$user_id', '$fn', '$ln', '$bday', '$favcol', '$favfoo', '$blog', '$animals', '$cook', '$writ', '$sew', '$dan', '$sport', '$art', '$fanfoot', '$magic', '$orig', '$read', '$congame', '$trav', '$cosplay', '$larp')';
				$r = @mysqli_query($dbc, $q); 
				if (mysqli_num_rows($r) == 1) {
					$row = mysqli_fetch_array($r, MYSQLI_ASSOC);
					
					
		}
		?>
		<p>First Name: <input type="text" name="first_name" size="15" maxlength="40" value="<?php if (isset($trimmed['first_name'])) echo $trimmed['first_name']; ?>" /></p>
		<p>Last Name: <input type="text" name="last_name" size="15" maxlength="40" value="<?php if (isset($trimmed['last_name'])) echo $trimmed['last_name']; ?>" /></p>
		<p>Favourite Food: <input type="text" name="fav_food" size="15" maxlength="40" value="<?php if (isset($trimmed['fav_food'])) echo $trimmed['fav_food']; ?>" /></p>	
		<p>Favourite Animal: <input type="text" name="fav_animal" size="15" maxlength="40" value="<?php if (isset($trimmed['fav_animal'])) echo $trimmed['fav_animal']; ?>" /></p>
	<?php
	$months = array (1 => 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');

// Make the months pull-down menu:
echo '<p><select name="m">';
foreach ($months as $key => $value) {
	echo '<option value="'.$key.'">'.$value.'</option>\n';
}
echo '</select>';

// Make the days pull-down menu:
echo '<select name="d">';
for ($d = 1; $d <= 31; $d++) {
	echo '<option value="'.$d.'">'.$d.'</option>\n';
}
echo '</select>';

// Make the years pull-down menu:
echo '<select name="y">';
for ($y = 2013; $y <= 2021; $y++) {
	echo '<option value="'.$y.'">'.$y.'</option>\n';
	}
echo '</select></p>';

echo '<p>';
$coloursarr = array (1 => 'Red', 'Orange', 'Yellow', 'Green', 'Blue', 'Indigo', 'Violet');
echo '<select name="colour">';
foreach ($coloursarr as $key => $value) {
	echo '<option value="'.$key.'">'.$value.'</option>\n';
}
echo '</select></p>';

echo '<p>Hobbies:<br />';
echo '<input type="checkbox" name="blogging" value="$blog">Blogging';
echo '<input type="checkbox" name="animals" value="$animals">Animals';
echo '<input type="checkbox" name="cooking" value="$cook">Cooking';
echo '<input type="checkbox" name="writing" value="$writ">Writing<br />';
echo '<input type="checkbox" name="sewing" value="$sew">Sewing';
echo '<input type="checkbox" name="dance" value="$dan">Dance';
echo '<input type="checkbox" name="sports" value="$sport">Sports';
echo '<input type="checkbox" name="art" value="$art">Art<br />';
echo '<input type="checkbox" name="fanfoot" value="$fanfoot">Fantasy Football';
echo '<input type="checkbox" name="magic" value="$magic">Magic';
echo '<input type="checkbox" name="origami" value="$orig">Origami';
echo '<input type="checkbox" name="reading" value="$read">Reading<br />';
echo '<input type="checkbox" name="console_games" value="$congame">Console Games';
echo '<input type="checkbox" name="travel" value="$trav">Travel';
echo '<input type="checkbox" name="cosplay" value="$cosplay">Cosplay';
echo '<input type="checkbox" name="larping" value="$larp">LARPing</p>';
echo '</form>';

	echo '<p>Short Bio:</strong><br/>
		<textarea name="description" rows="3" cols="40" maxlength="240" value="';
	if (isset($trimmed['bio'])) echo $trimmed['bio'];
	echo '"/></textarea></p>



		?>
	
    
    
    
    <!---------------------------------------------->
			<?php
	include ('inc/footer.html');
	?>