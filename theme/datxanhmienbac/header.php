<?php 
	function dangky () {
        global $conn_vn;
        $action = new action();
        if (isset($_POST['register'])) {
            $check = 'true';
            $nick = $_POST['username'];
            $name = ($_POST['name']==NULL) ? '' : trim($_POST['name']);
            $email = ($_POST['email']==NULL) ? '' : $_POST['email'];
            // $phone = ($_POST['phone']==NULL) ? '' : $_POST['phone'];
            $birthday = ($_POST['birthday']=='') ? '0000-00-00' : $_POST['birthday'];
            $pass1 = ($_POST['pass1']==NULL) ? '' : $_POST['pass1'];
            $pass2 = ($_POST['pass2']==NULL) ? '' : $_POST['pass2'];
            $time = date('Y-m-d H:i:s');
            $sex = $_POST['sex'];
            $type = $_POST['type'];
            $city = $_POST['city'];
            $quan = $_POST['quan'];
            $phuong = $_POST['phuong'];
            $time = date('Y-m-d');
            $ask = '';
            // $phone = '';
            $cmnd = $_POST['cmnd'];
            $phone = $_POST['phone'];
            // if ($city != '') {
            //     $city = $action->getDetail('city', 'id', $city)['name'];
            // }
            // if ($quan != '') {
            //     $quan = $action->getDetail('quan', 'id', $quan)['name'];
            // }
            // if ($phuong != '') {
            //     $phuong = $action->getDetail('phuong', 'id', $phuong)['name'];
            // }
            // echo $city;die;

            if ($check == "true") {
                $pass = password_hash($pass1, PASSWORD_DEFAULT);
                $sql = "INSERT INTO user (user_name, user_email, user_phone, user_birthday, user_password, time, ask, user_nick, user_sex, user_type, user_tinh, user_quan, user_phuong, user_cmnd) VALUES ('$name', '$email', '$phone', '$birthday', '$pass', '$time', '$ask', '$nick', $sex, $type, $city, $quan, $phuong, '$cmnd')";
                $result = mysqli_query($conn_vn, $sql);
                if ($result) {
                    $sql_user = "SELECT * FROM user Where user_phone = '$phone'";
                    $result_user = mysqli_query($conn_vn, $sql_user);
                    $row_user = mysqli_fetch_assoc($result_user);
                    $_SESSION['user_id_gbvn'] = $row_user['user_id'];
                    $_SESSION['user_email_gbvn'] = $row_user['user_email'];
                    $_SESSION['user_name_gbvn'] = $row_user['user_name'];
                    echo '<script type="text/javascript">alert(\'Bạn đã đăng ký thành công.\'); window.location.href = "/thong-tin-tai-khoan";</script>';
                } else {
                    echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
                    // echo mysqli_error($conn_vn);die;
                }
                
            }
        }
    }

    dangky();
?>
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
        global $check_login_giochon;
        if (isset($_POST['login'])) {
            $nick = ($_POST['nick']==NULL) ? '' : $_POST['nick'];
            $pass = ($_POST['pass']==NULL) ? '' : $_POST['pass'];

            $sql = "SELECT * FROM user Where user_phone = '$nick' or user_nick = '$nick'";
            $result = mysqli_query($conn_vn, $sql);
            $num = mysqli_num_rows($result);
            if ($num == 0) {
                $message_login = "<div class='alert alert-danger'>Mật khẩu hoặc Tên đăng nhập không đúng</div>";
            } else {
                $row = mysqli_fetch_assoc($result);
                $pass_hash = $row['user_password'];
                if (password_verify($pass, $pass_hash)) {
                    $_SESSION['user_id_gbvn'] = $row['user_id'];
                    $_SESSION['user_email_gbvn'] = $row['user_name'];
                    $_SESSION['user_name_gbvn'] = $row['user_name'];
                    // $_SESSION['session_id'] = session_id();
                    if (isset($_POST['rememberme'])) {
                        $identify = randomString(20);
                        $token = randomString(30);
                        $cooki = $identify . ':' . $token;

                        setcookie('user_id_trichdan', $cooki, time() + 2592000);
                        $sql_me = "UPDATE user SET remember_me_identify = '$identify', remember_me_token = '$token' Where user_id = " . $row['user_id'];
                        $result_me = mysqli_query($conn_vn, $sql_me);
                    }
                    if ($check_login_giochon == 'true') {
                        echo '<script type="text/javascript">alert(\'Bạn đã đăng nhập thành công!\')</script>';
                    } else {
                        echo '<script type="text/javascript">alert(\'Bạn đã đăng nhập thành công!\'); window.location.href = "/thong-tin-tai-khoan";</script>';
                    }
                    
                } else {
                    $message_login = "<div class='alert alert-danger'>Mật khẩu hoặc Tên đăng nhập không đúng</div>";
                }
            }
        }
    }

    dangnhap();
?>
<?php include_once DIR_HEADER."MS_HEADER_DATXANHMB_0001.php";  ?>
