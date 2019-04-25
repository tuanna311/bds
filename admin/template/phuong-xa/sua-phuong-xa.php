<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	function listQuan () {
		global $conn_vn;
		$sql = "SELECT * FROM quan";
		$result = mysqli_query($conn_vn, $sql);
		$rows = array();
		$num = mysqli_num_rows($result);
		if ($num > 0) {
			while ($row = mysqli_fetch_assoc($result)) {
				$rows[] = $row;
			}
		}
		return $rows;
	}

	$list_quan = listQuan();

	function phuong ($id) {
		global $conn_vn;
		if (isset($_POST['edit_phuong'])) {
			// $src= "../images/";
			// $src = "uploads/";

			// if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

			// 	uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);

			// }

			$name = $_POST['name'];
			$note = $_POST['note'];
			$quan = $_POST['quan'];
			// $image = $_FILES['image']['name'];

			$sql = "UPDATE phuong SET name = '$name', note = '$note', quan_id = $quan WHERE id = $id";
			$result = mysqli_query($conn_vn, $sql) or die('loi');
			echo '<script type="text/javascript">alert(\'Bạn đã Sửa được một Phường xã.\');</script>';
		}
	}

	phuong($_GET['id']);

	function getDistrict ($id) {
		global $conn_vn;
		$sql = "SELECT * FROM phuong WHERE id = $id";
		$result = mysqli_query($conn_vn, $sql);
		$row = mysqli_fetch_assoc($result);
		return $row;
	}
	$district = getDistrict($_GET['id']);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin Phường xã<br /><br /></p>    
            <p class="subLeftNCP"><a href="index.php?page=phuong-xa">Quay lại</a><br /><br /></p> 
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Tên Quận Huyện</p>
            <input type="text" class="txtNCP1" name="name" value="<?= $district['name'] ?>" required/>
            <p class="titleRightNCP">Mô tả Quận Huyện</p>
            <textarea class="longtxtNCP2" name="note"><?= $district['note'] ?></textarea>
            <select class="txtNCP1" name="quan">
            	<?php foreach ($list_quan as $item) { ?>
            	<option value="<?= $item['id'] ?>" <?= ($item['id']==$district['quan_id']) ? 'selected' : '' ?> ><?= $item['name'] ?></option>
            	<?php } ?>
            </select>
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="edit_phuong">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ GoldBridge Việt Nam</p>