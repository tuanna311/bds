<?php 
    $message_login = '';

    function randomString($length = 6) {
        $str = "";
        $characters = array_merge(range('A','Z'), range('a','z'), range('0','9'));
        $max = count($characters) - 1;
        for ($i = 0; $i < $length; $i++) {
            $rand = mt_rand(0, $max);
            $str .= $characters[$rand];
        }
        return $str;
    }

    function dangnhap () {
        global $conn_vn;
        global $message_login;
        if (isset($_POST['login'])) {
            $email = ($_POST['email']==NULL) ? '' : $_POST['email'];
            $pass = ($_POST['pass']==NULL) ? '' : $_POST['pass'];

            $sql = "SELECT * FROM user Where user_email = '$email'";
            $result = mysqli_query($conn_vn, $sql);
            $num = mysqli_num_rows($result);
            if ($num == 0) {
                $message_login = "<div class='alert alert-danger'>Mật khẩu hoặc Tên đăng nhập không đúng</div>";
            } else {
                $row = mysqli_fetch_assoc($result);
                $pass_hash = $row['user_password'];
                if (password_verify($pass, $pass_hash)) {
                    $_SESSION['user_id_gbvn'] = $row['user_id'];
                    $_SESSION['user_name_gbvn'] = $row['user_name'];
                    $_SESSION['session_id'] = session_id();
                    if (isset($_POST['rememberme'])) {
                        $identify = randomString(20);
                        $token = randomString(30);
                        $cooki = $identify . ':' . $token;

                        setcookie('user_id_trichdan', $cooki, time() + 2592000);
                        $sql_me = "UPDATE user SET remember_me_identify = '$identify', remember_me_token = '$token' Where user_id = " . $row['user_id'];
                        $result_me = mysqli_query($conn_vn, $sql_me);
                    }
                    echo '<script type="text/javascript">alert(\'Bạn đã đăng nhập thành công!\'); window.location.href = "/";</script>';
                } else {
                    $message_login = "<div class='alert alert-danger'>Mật khẩu hoặc Tên đăng nhập không đúng</div>";
                }
            }
        }
    }

    dangnhap();
?>
<form action="" method="post">
    <?= $message_login ?>
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label>Email</label>
                <input type="email" class="form-control" name="email" placeholder="Nhập email" required="" value='<?php if(isset($_POST['name']) && $_POST['name'] != NULL){ echo $_POST['name']; } ?>'>
            </div>
            <div class="form-group">
                <input type="checkbox"> Ghi nhớ tài khoản
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label>Mật khẩu</label>
                <input type="password" class="form-control" name="pass" placeholder="Nhập password" required="">
            </div>
            <div class="form-group">
                <a href="#0" data-toggle="modal" data-target="#khoiphucmatkhau">Quên mật khẩu?</a>
            </div>
        </div>
        <div class="col-sm-2">
            <button class="btn btn-dangnhap_excel" name="login">Đăng nhập</button>
        </div>
    </div>
</form>