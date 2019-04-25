<?php
    function uploadPicture($src, $img_name, $img_temp){

        $src = $src.$img_name;//echo $src;

        if (!@getimagesize($src)){

            if (move_uploaded_file($img_temp, $src)) {

                return true;

            }

        }

    }

    $message = "";

    function update_infor(){
        global $conn_vn;
        if(isset($_POST['update_infor'])){
            $src= "images/";
            $image = '';
            if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){
                $image = time().$_FILES['image']['name'];
                uploadPicture($src, $image, $_FILES['image']['tmp_name']);
            }

            $name = ($_POST['name']==NULL) ? '' : $_POST['name'];
            $email = ($_POST['email']==NULL) ? '' : $_POST['email'];
            $address = ($_POST['address']==NULL) ? '' : $_POST['address'];
            $phone = ($_POST['phone']==NULL) ? '' : $_POST['phone'];
            $cmnd = $_POST['cmnd'];

            if ($image == '') {
                $sql = "UPDATE user SET user_name = '$name', user_phone = '$phone', user_address = '$address', user_cmnd = '$cmnd', user_email = '$email' Where user_id = " . $_SESSION['user_id_gbvn'];
            } else {
                $sql = "UPDATE user SET user_name = '$name', user_phone = '$phone', user_address = '$address', user_cmnd = '$cmnd', user_email = '$email', user_image = '$image' Where user_id = " . $_SESSION['user_id_gbvn'];
            }
            
            $result = mysqli_query($conn_vn, $sql);
            if ($result) {
                echo '<script type="text/javascript">alert(\'Thông tin được cập nhật thành công!\'); window.location.href = "/thong-tin-tai-khoan";</script>';
            } else {
                echo '<script type="text/javascript">alert(\'Có lỗi xảy ra!\')</script>';
            }
            
        }
    }

    update_infor();

    function get_list_user(){
        global $conn_vn;
        $id = $_SESSION['user_id_gbvn'];
        $sql = "SELECT * FROM user Where user_id = '$id'";
        $result = mysqli_query($conn_vn, $sql);
        $row = mysqli_fetch_assoc($result);
        return $row;
    }
    $list_user = get_list_user();
?>
<div class="gb-register1">
     <h1 class="title-khoahoc"><i class="fa fa-bookmark" aria-hidden="true"></i> Tài khoản của tôi</h1>
    <form action="" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label>Họ và tên:</label>
            <input type="text" class="form-control" name="name" placeholder="Họ và tên" value="<?= $list_user['user_name'] ?>" required>
        </div>
        <div class="form-group">
            <label>Tên đăng nhập:</label>
            <input type="text" class="form-control" name="nick" placeholder="Username" value="<?= $list_user['user_nick'] ?>" disabled >
        </div>
        <div class="form-group">
                <label>Email:</label>
            <input type="email" class="form-control" name="email" placeholder="Địa chỉ Email" value="<?= $list_user['user_email'] ?>" required>
        </div>
        <div class="form-group">
            <label>Địa chỉ:</label>
            <input type="text" class="form-control" name="address" placeholder="Địa chỉ" value="<?= $list_user['user_address'] ?>" >
        </div>
        <div class="form-group">
            <label>Số điện thoại:</label>
            <input type="text" class="form-control" name="phone" placeholder="Số điện thoại" value="<?= $list_user['user_phone'] ?>" readonly>
        </div>
        <div class="form-group">
            <label>Mã sô thuế cá nhân/CMND:</label>
            <input type="text" class="form-control" name="cmnd" placeholder="Số chứng minh nhân dân" value="<?= $list_user['user_cmnd'] ?>" required>
        </div>
        <div class="form-group">
            <label>Ảnh:</label>
            <input type="file" class="form-control" name="image">
            <?php if ($list_user['user_image'] != '') { ?>
            <img src="/images/<?= $list_user['user_image'] ?>" alt="" width="100">
            <?php } ?>
        </div>
        <div class="form-group">
            <button type="submit" name="update_infor" class="btn btn-success">Cập nhật</button>
            <!-- <a href="/thong-tin-ca-nhan" class="btn btn-danger" role="button">Hủy</a> -->
        </div>
    </form>
</div>
<style type="text/css" media="screen">
	.gb-register1 label{padding-bottom: 10px;}
    .title-khoahoc{
        font-size: 18px;
        text-transform: uppercase;
        padding-bottom: 15px;
        color: #207244;
    }
    .ten-khoahoc{color: #207244;}
</style>