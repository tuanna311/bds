<?php 
	include_once dirname(__FILE__) . "/../database.php";
	$nick = $_GET['nick'];

	$sql = "SELECT * FROM user WHERE user_nick = '$nick'";
	$result = mysqli_query($conn_vn, $sql);
	$num = mysqli_num_rows($result);
	if ($num > 0) {
		echo 'false';
	} else {
		echo 'true';
	}
?>