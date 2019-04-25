<?php 
	include_once dirname(__FILE__) . "/../database.php";
	$phone = $_GET['phone'];

	$sql = "SELECT * FROM user WHERE user_phone = '$phone'";
	$result = mysqli_query($conn_vn, $sql);
	$num = mysqli_num_rows($result);
	if ($num > 0) {
		echo 'false';
	} else {
		echo 'true';
	}
?>