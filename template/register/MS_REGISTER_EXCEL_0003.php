<?php 
    $message = "";

    function dangky () {
        global $conn_vn;
        global $message;
        if (isset($_POST['register'])) {
            $check = 'true';
            $name = ($_POST['name']==NULL) ? '' : trim($_POST['name']);
            $email = ($_POST['email']==NULL) ? '' : $_POST['email'];
            $phone = ($_POST['phone']==NULL) ? '' : $_POST['phone'];
            $birthday = ($_POST['birthday']==NULL) ? '' : $_POST['birthday'];
            $pass1 = ($_POST['pass1']==NULL) ? '' : $_POST['pass1'];
            $pass2 = ($_POST['pass2']==NULL) ? '' : $_POST['pass2'];
            $time = date('Y-m-d H:i:s');
            $ask = password_hash(trim($_POST['ask']), PASSWORD_DEFAULT);

            // Check email isset
            $sql_email = "SELECT * FROM user Where user_email = '$email'";
            $result_email = mysqli_query($conn_vn, $sql_email);
            $row_email = mysqli_num_rows($result_email);

            if ($row_email > 0) {
                $check = "false";
                $message .= "<div class='alert alert-danger'>Email đã tồn tại</div>";
            }

            if ($pass1 != $pass2) {
                $check = "false";
                $message .= "<div class='alert alert-danger'>Mật khẩu không khớp</div>";
            }

            if ($check == "true") {
                $pass = password_hash($pass1, PASSWORD_DEFAULT);
                $sql = "INSERT INTO user (user_name, user_email, user_phone, user_birthday, user_password, time, ask) VALUES ('$name', '$email', '$phone', '$birthday', '$pass', '$time', '$ask')";
                $result = mysqli_query($conn_vn, $sql);
                if ($result) {
                    $sql_user = "SELECT * FROM user Where user_email = '$email'";
                    $result_user = mysqli_query($conn_vn, $sql_user);
                    $row_user = mysqli_fetch_assoc($result_user);
                    $_SESSION['user_id_gbvn'] = $row_user['user_id'];
                    $_SESSION['user_email_gbvn'] = $row_user['user_email'];
                    $_SESSION['user_name_gbvn'] = $row_user['user_name'];
                    echo '<script type="text/javascript">alert(\'Bạn đã đăng ký thành công!\'); window.location.href = "/dang-nhap";</script>';
                } else {
                    echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
                }
                
            }
        }
    }

    dangky();
?>
<form action="" method="post">
    <?= $message ?>
    <div class="form-group">
        <input type="text" class="form-control" placeholder="Họ và tên" name="name" required="" value='<?php if(isset($_POST['name']) && $_POST['name'] != NULL){ echo $_POST['name']; } ?>'>
    </div>
    <div class="row">
        <div class="col-sm-6">
            <div class="form-group">
                <input type="email" class="form-control" placeholder="Email" name="email" required="" value='<?php if(isset($_POST['email']) && $_POST['email'] != NULL){ echo $_POST['email']; } ?>'>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="form-group">
                <input type="tel" class="form-control" placeholder="Số điện thoại" name="phone" required="" value='<?php if(isset($_POST['phone']) && $_POST['phone'] != NULL){ echo $_POST['phone']; } ?>' >
            </div>
        </div>
    </div>
    <div class="form-group">
        <input type="date" class="form-control" placeholder="Ngày sinh" name="birthday" required="" value='<?php if(isset($_POST['birthday']) && $_POST['birthday'] != NULL){ echo $_POST['birthday']; } ?>' >
    </div>
    <div class="form-group">
        <input type="password" class="form-control" placeholder="Nhập mật khẩu" name="pass1" required="">
    </div>
    <div class="form-group">
        <input type="password" class="form-control" placeholder="Nhập lại mật khẩu" name="pass2" required="">
    </div>
    <div class="form-group">
        <input type="text" class="form-control" placeholder="Câu hỏi bảo mật: Bạn thích con gì?" name="ask" required="" value='<?php if(isset($_POST['ask']) && $_POST['ask'] != NULL){ echo $_POST['ask']; } ?>' >
    </div>
    <div class="form-group">
        <p>Bằng cách nhấp vào Tạo tài khoản, bạn đồng ý với <a href="#0"  data-toggle="modal" data-target="#product_view">Điều khoản & dịch vụ</a> của chúng tôi</p>
    </div>
    <div class="form-group">
        <button class="btn btn-taotaikhoan" type="submit" name="register">Tạo tài khoản</button>
    </div>
</form>

