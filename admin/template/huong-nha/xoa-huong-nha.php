<?php 
	$id = $_GET['id'];
	$sql = "DELETE FROM huong_nha WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=huong-nha');
?>