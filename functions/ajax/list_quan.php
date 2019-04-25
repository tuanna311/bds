<?php 
	include_once dirname(__FILE__) . "/../database.php";
	$id = $_GET['id'];

	if ($id != '') {
		$sql = "SELECT * FROM quan WHERE city_id = $id";
		$result = mysqli_query($conn_vn, $sql);
		$rows = array();
		$num = mysqli_num_rows($result);
		if ($num > 0) {
			while ($row = mysqli_fetch_assoc($result)) {
				$rows[] = $row;
			}
		}
	} else {
		$rows = array();
	}
	
?>
<option value="0">Quận/Huyện</option>
<?php foreach ($rows as $item) { ?>
<option value="<?= $item['id'] ?>"><?= $item['name'] ?></option>
<?php } ?>
