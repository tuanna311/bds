<?php 
// link huong dan: https://www.sitepoint.com/sending-emails-php-phpmailer/
	
/**
* 
*/
define('SITE_NAME', $_SERVER["HTTP_HOST"]);
class action_email 
{
        function email_send ($email_to, $title = "", $content = "") {
                $nFrom = "Forever Love";    //mail duoc gui tu dau, thuong de ten cong ty ban
                $mFrom = 'viethung804@zoho.com';  //dia chi email cua ban 
                $mPass = 'nguyenviethung';       //mat khau email cua ban
                $nTo = 'hung'; //Ten nguoi nhan
                //$mTo = $_POST['email_dichvu'];   //dia chi nhan mail
                $mTo = $email_to;
                $mail             = new PHPMailer();
                //$body             = "<p>Kế toán thuế trọn gói: $ktttg</p><p>Kê khai thuế online: $kktol</p><p>Rà soát sổ sách: $rsss</p><p>Hoàn thiện sổ sách: $htss</p><p>Quyết toán thuế: $qtt</p>";   // Noi dung email
                //$title = 'Thông tin khách hàng từ '.SITE_NAME;   //Tieu de gui mail
                $mail->IsSMTP();             
                $mail->CharSet  = "utf-8";
                $mail->SMTPDebug  = 0;   // enables SMTP debug information (for testing)
                $mail->SMTPAuth   = true;    // enable SMTP authentication
                $mail->SMTPSecure = "ssl";   // sets the prefix to the servier
                $mail->Host       = "smtp.zoho.com";    // sever gui mail.
                $mail->Port       = 465;         // cong gui mail de nguyen
                // xong phan cau hinh bat dau phan gui mail
                $mail->Username   = $mFrom;  // khai bao dia chi email
                $mail->Password   = $mPass;              // khai bao mat khau
                $mail->SetFrom($mFrom, $nFrom);
                $mail->AddReplyTo('hung71483@gmail.com', 'Phản Hồi Ý Kiến Khách Hàng'); //khi nguoi dung phan hoi se duoc gui den email nay
                $mail->Subject    = $title;// tieu de email 
                $mail->MsgHTML($content);// noi dung chinh cua mail se nam o day.
                $mail->AddAddress($mTo, $nTo);
                $mail->AddAddress('hung71483@gmail.com');

                $mail->Send();
        }
        
        function gui_email () {
                global $conn_vn;
                if (isset($_POST['send_email'])) {
                    $email = $_POST['email'];
                    $phone = $_POST['phone'];
                    $name = $_POST['name'];
                    $date = date('Y-m-d H:i:s');
                    $sql = "INSERT INTO regMember (regMember_mail,regMember_phone,regMember_name, regMember_createdDate) VALUES ('$email','$phone','$name','$date')";
                    $result = mysqli_query($conn_vn, $sql);
                    $gui = $this->email_send($_POST['email'], 'Nhận thông tin giá', 'Chúng tôi sẽ gửi lại bảng giá cho bạn ngay');
                    echo '<script type="text/javascript">alert(\'Bạn đã đăng kí nhận bảng giá thành công. Xin cảm ơn!.\');</script>';
                }
        }

        function lien_he () {
            global $conn_vn;
                if (isset($_POST['lien_he'])) {
                        $name = $_POST['name'];
                        $phone = $_POST['phone'];
                        $email = $_POST['email'];
                        $address = $_POST['address'];
                        $note = $_POST['note'];
                        $sql = "INSERT INTO lien_he (name, email, phone, address, comment) VALUES ('$name','$email','$phone','$address','$note')";
                        $result = mysqli_query($conn_vn, $sql);
                        $str = $this->form($name, $phone, $email, $note);
                        //echo $str;die;
                        $this->email_send($email, "Thông Tin Khách Hàng Từ V-ONION", $str);
                        echo '<script type="text/javascript">alert(\'Bạn đã đăng ký liên hệ thành công.\');</script>';
                }
        }

        function ki_gui () {
            global $conn_vn;
                if (isset($_POST['ki_gui'])) {
                        $name = $_POST['name'];
                        $phone = $_POST['phone'];
                        $email = $_POST['email'];
                        $note = $_POST['note'];

                        $sql = "INSERT INTO ki_gui (name, email, phone, note) VALUES ('$name','$email','$phone','$note')";
                        $result = mysqli_query($conn_vn, $sql);
                        $str = $this->form($name, $phone, $email, $note);
                        //echo $str;die;
                        // $this->email_send($email, "Thông Tin Khách Hàng Từ V-ONION", $str);
                        echo '<script type="text/javascript">alert(\'Bạn đã đăng ký kí gửi thành công.\');</script>';
                }
        }

        // function email_cart () {
        //     global $conn_vn;
        //         if (isset($_POST['complete-cart'])) {
        //                 $name = $_POST['name'];
        //                 $phone = $_POST['phone'];
        //                 $email = $_POST['email'];
        //                 $address = $_POST['address'];
        //                 $note = $_POST['note'];
        //                 $str = $this->form($name, $phone, $email, $note);
        //                 //echo $str;die;
        //                 $this->email_send($email, $name, $str);
        //                 echo '<script type="text/javascript">alert(\'Bạn đã gửi đơn hàng thành công.\');</script>';
        //         }
        // }

        function form ($name, $phone, $email, $note) {
                $str = "
                        <ul>
                                <li>Tên: $name</li>
                                <li>Số điện thoại: $phone</li>
                                <li>Thư điện tử: $email</li>
                                <li>Nội dung: $note</li>
                        </ul>
                ";
                return $str;

        }
}
?>