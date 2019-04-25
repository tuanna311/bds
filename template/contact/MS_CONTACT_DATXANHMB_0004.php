<?php
    $send_mail = new action_email();
    $send_mail->lien_he();
?>
<div class="gb-cacphong-giaodich_datxanhmienbac">
    <div class="container">
        <div class="gb_heading_1"><h3>THÔNG TIN LIÊN HỆ</h3></div>

        <div class="tabbable-panel">
            <div class="tabbable-line">
                <div class="tab-content">
                    <div class="tab-pane active" id="tab_default_1">
                        <div class="gb-cacphong-giaodich_datxanhmienbac-item">
                            <div class="dx_heading_contact">
                                <p><strong>Địa chỉ:</strong> <?= $rowConfig['content_home1'] ?></p>
                                <p><strong>Hotline:</strong> <?= $rowConfig['content_home3'] ?></p>
                                <p><strong>Email:</strong> <?= $rowConfig['content_home2'] ?></p>
                                <p><strong>Website:</strong> <?= $rowConfig['content_home5'] ?></p>
                                <p><strong>Fanpage:</strong> <?= $rowConfig['content_home6'] ?></li></p>
                            </div>
                            <div class="clearfix"></div>
                            <div class="dx_lease_detail_map">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15500.579868977375!2d109.232978!3d13.770130000000002!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xcd54fa74aabf3a2f!2sTMS+Luxury+Hotel+%26+Residences+Quy+Nh%C6%A1n!5e0!3m2!1svi!2sus!4v1542972579579" width="100%" height="500" frameborder="0" style="border:0" allowfullscreen></iframe>
                            </div>
                            <?php include DIR_EMAIL."MS_EMAIL_DATXANHMB_0003.php";?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>