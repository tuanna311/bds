<?php 
	include_once dirname(__FILE__) . "/../database.php";

	$product_id = $_GET['product_id'];
	$user_id = $_GET['user_id'];

	$sql = "SELECT * FROM follow WHERE product_id = $product_id AND user_id = $user_id";
	$result = mysqli_query($conn_vn, $sql);
	$num = mysqli_num_rows($result);
	if ($num == 0) {
		$sql = "INSERT INTO follow (product_id, user_id, state) VALUES ($product_id, $user_id, 0)";
		$result = mysqli_query($conn_vn, $sql);

		$sql = "SELECT * FROM follow WHERE product_id = $product_id";
		$result = mysqli_query($conn_vn, $sql);
		$num = mysqli_num_rows($result);

		$sql = "UPDATE product SET follow = $num WHERE product_id = $product_id";
		$result = mysqli_query($conn_vn, $sql);
		echo $num;
	} else {
		$sql = "SELECT * FROM follow WHERE product_id = $product_id";
		$result = mysqli_query($conn_vn, $sql);
		$num = mysqli_num_rows($result);
		echo $num;
	}
?>