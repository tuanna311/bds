<!--MENU MOBILE-->
<?php include_once DIR_MENU."MS_MENU_DATXANHMB_0002.php"; ?>
<!-- End menu mobile-->

<!--MENU DESTOP-->
<header>
    <div class="gb-header_datxanhmienbac">
        <div class="gb-header_datxanhmienbac-top">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="gb-header-logo_datxanhmienbac">
			                <h1>
			                    <a href="/"><img src="/images/<?= $rowConfig['web_logo'] ?>" alt="" class="img-responsive"></a>
			                </h1>
			            </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="gb-header_datxanhmienbac-top-right">
                            <ul>
                                
                                <?php if (isset($_SESSION['user_id_gbvn'])) { ?>
                                <!-- <li><a href="/dang-xuat"><i class="fa fa-rebel" aria-hidden="true"></i> Đăng xuất</a></li> -->
                                <li><a href="/thong-tin-tai-khoan"><?= $_SESSION['user_name_gbvn'] ?></a></li>
                                <?php } else { ?>
                                <li><a href="javascript:void(0)" title="" data-toggle="modal" data-target="#dangkymodal"><i class="fa fa-sign-in" aria-hidden="true"></i> Đăng ký</a></li>
                                <li><a href="javascript:void(0)" title="" data-toggle="modal" data-target="#dangnhapmodal"><i class="fa fa-rebel" aria-hidden="true"></i> Đăng nhập</a></li>
                                <?php } ?>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>            
        </div>
        <div class="clearfix"></div>
        <div class="container">
            <div class="gb-header-menu_datxanhmienbac">
                <?php include DIR_MENU."MS_MENU_DATXANHMB_0001.php";?>
            </div>
        </div>
    </div>
</header>

<script src="/plugin/sticky/jquery.sticky.js"></script>
<script>
    $(document).ready(function () {
        $(".sticky-menu").sticky({topSpacing:0});
    });
</script>