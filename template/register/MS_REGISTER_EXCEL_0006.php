<?php
	if (!isset($_SESSION['user_id_gbvn'])) {
		echo '<script>alert(\'Bạn chưa đăng nhập.\');window.location.href="/"</script>';
	}
	$slug = $_GET['slug'];
	$active = 'active';
	function check_type_account () {
		global $conn_vn;
		$user_id = $_SESSION['user_id_gbvn'];
		$sql = "SELECT * FROM user WHERE user_id = $user_id";
		$result = mysqli_query($conn_vn, $sql);
		$row = mysqli_fetch_assoc($result);
		if ($row['id_fb'] != '' || $row['id_go'] != '') {
			return 'false';
		} else {
			return 'true';
		}
	}
	$kq_check_type_account = check_type_account();
?>

<div class="order">
	<ul class="infor-user">
		<li><h3 class="title-infor">Quản lý giao dịch</h3></li>
		<li class="<?php if($slug == 'tim-kiem-nha'){ echo $active; } ?>"><a href="/tim-kiem-nha" title="" ><i class="fa fa-leanpub" aria-hidden="true"></i> Tìm kiếm nhà</a></li>
		
		<li class="<?php if($slug == 'don-hang'){ echo $active; } ?>"><a href="/don-hang" title=""><i class="fa fa-shopping-bag" aria-hidden="true"></i> Đơn hàng của tôi</a></li>
		<li class="<?php if($slug == 'thong-tin-tai-khoan'){ echo $active; } ?>"><a href="/thong-tin-tai-khoan" title=""><i class="fa fa-user" aria-hidden="true"></i> Thông tin tài khoản</a></li>
		<?php if ($kq_check_type_account == 'true') { ?>
		<li class="<?php if($slug == 'doi-mat-khau'){ echo $active; } ?>"><a href="/doi-mat-khau" title=""><i class="fa fa-user" aria-hidden="true"></i> Đổi mật khẩu</a></li>
		<li class="<?php if($slug == 'dang-xuat'){ echo $active; } ?>"><a href="/dang-xuat" title=""><i class="fa fa-user" aria-hidden="true"></i> Đăng xuất</a></li>
		<?php } ?>
	</ul>
</div>