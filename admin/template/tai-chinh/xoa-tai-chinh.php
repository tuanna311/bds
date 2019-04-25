<?php 
	$id = $_GET['id'];
	$sql = "DELETE FROM tai_chinh WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=tai-chinh');
?>