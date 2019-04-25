<?php 
	include_once dirname(__FILE__) . "/../database.php";

	$id = $_GET['id'];

	$sql = "SELECT * FROM follow WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);

	if ($row['state'] == 0) {
		$sql = "UPDATE follow SET state = 1 WHERE id = $id";
	} else {
		$sql = "UPDATE follow SET state = 0 WHERE id = $id";
	}
	$result = mysqli_query($conn_vn, $sql);
?>