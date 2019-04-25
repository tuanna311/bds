<?php
	$id = $_POST['province_id1'];
	include_once('../database.php');
	$sql = "SELECT * FROM district WHERE region_id = $id";
	$result = mysqli_query($conn_vn, $sql);
	while ($data = mysqli_fetch_assoc($result)) {
		echo "<option value='".$data['district_name']."'>".$data['district_name']."</option>";
	}
?>