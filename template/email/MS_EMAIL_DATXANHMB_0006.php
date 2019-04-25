<?php
    $mail = new action_email();
    // $mail->gui_email();
?>
<div class="gb-chitiet_duan-landingpage-right_datxanhmienbac">
    <form action="" method="post">
        <h4>NHẬN THÔNG TIN DỰ ÁN</h4>
        <ul>
            <li><i class="fa fa-check-square"></i> Tổng quan dự án</li>
            <li><i class="fa fa-check-square"></i> Mặt bằng cho tiết căn hộ, hướng nhá</li>
            <li><i class="fa fa-check-square"></i> Bảng giá chi tiết</li>
        </ul>
        <div class="form-group">
            <label> Họ và tên</label>
            <input type="text" class="form-control" placeholder="Hãy cho chúng tôi biết tên của bạn" name="name" required="">
        </div>
        <div class="form-group">
            <label>Địa chỉ email</label>
            <input type="email" class="form-control" placeholder="VD: info@diaocviethomes.vn" name="email" required="">
        </div>
        <div class="form-group">
            <label> Số điện thoại</label>
            <input type="tel" class="form-control" placeholder="VD: 0934 955 558" name="phone" required="">
        </div>
        <button class="btn btn-taibanggia" type="submit" name="send_email">Tải bảng giá</button>
        <p>Hoặc gọi phòng kinh doanh chủ đầu tư</p>
        <p class="phone-contact"><span><i class="fa fa-phone"></i></span><?= $rowConfig['content_home3'] ?></p>
        <p>Hoặc email</p>
        <p class="mail-contact"><span><i class="fa fa-envelope"></i></span> <?= $rowConfig['content_home2'] ?></p>
    </form>
</div>