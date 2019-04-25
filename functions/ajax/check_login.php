<?php 
	include_once dirname(__FILE__) . "/../database.php";
	$name = $_GET['name'];
	$pass = $_GET['pass'];

	$sql = "SELECT * FROM user WHERE user_nick = '$name' OR user_phone = '$name'";
	$result = mysqli_query($conn_vn, $sql);
	$num = mysqli_num_rows($result);
	if ($num > 0) {
		$row = mysqli_fetch_assoc($result);
		$pass_hash = $row['user_password'];
		if (password_verify($pass, $pass_hash)) {
			echo 'true';
		} else {
			echo 'false';
		}
	} else {
		echo 'false';
	}
?>