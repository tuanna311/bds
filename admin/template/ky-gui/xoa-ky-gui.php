<?php 
	$id = $_GET['id'];
	$sql = "DELETE FROM ki_gui WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=ky-gui');
?>