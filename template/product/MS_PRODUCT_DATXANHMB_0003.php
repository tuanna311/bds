<?php 
    $action_product = new action_product(); 
    $slug = isset($_GET['slug']) ? $_GET['slug'] : '';

    $rowLang = $action_product->getProductLangDetail_byUrl($slug,$lang);
    $row = $action_product->getProductDetail_byId($rowLang[$nameColIdProduct_productLanguage],$lang);
    $_SESSION['productcat_id_relate'] = $row[$nameColIdProductCat_product];
    $_SESSION['sidebar'] = 'productDetail';
    $arr_id = $row['productcat_ar'];
    $arr_id = explode(',', $arr_id);
    $productcat_id = (int)$arr_id[0];
    $product_breadcrumb = $action_product->getProductCatLangDetail_byId($productcat_id, $lang);
    $breadcrumb_url = $product_breadcrumb['friendly_url'];
    $breadcrumb_name = $product_breadcrumb['lang_productcat_name'];
    $use_breadcrumb = true;

    $img_sub = json_decode($row['product_sub_img']);
?>
<?php 
    $action_lang = new action_lang();
    $url_lang = $action_lang->get_url_lang_productDetail($slug, $lang);
?>
<link rel="stylesheet" href="./plugin/slickNav/slicknav.css"/>
<link rel="stylesheet" href="./plugin/slick/slick.css"/>
<link rel="stylesheet" href="./plugin/slick/slick-theme.css"/>
<div class="gb-chitiet-duan_datxanhmienbac">
    <div class="gb-chitiet-duan-body_datxanhmienbac">
        <!--TỔNG QUAN -->
        <div class="container">
            <div class="gb-chitiet-duan-body-top_datxanhmienbac">
                <div class="row">
                    <div class="col-md-8">
                        <div class="gb-chitiet-duan-body-top-left_datxanhmienbac">
                            <div class="slider slider-for">
                                <div class="slide-item">
                                        <img src="/images/<?= $row['product_img'] ?>" alt="" class="img-responsive">
                                    </div>
                                <?php 
                                    $d = 0;
                                    foreach ($img_sub as $item) {
                                        $d++;
                                        $image = json_decode($item, true);
                                ?>
                                    <div class="slide-item">
                                        <img src="/images/<?= $image['image'] ?>" alt="" class="img-responsive">
                                    </div>
                                <?php } ?>
                            </div>
                            <div class="slider slider-nav">
                                <div class="slide-item-nav">
                                        <img src="/images/<?= $row['product_img'] ?>" alt="" class="img-responsive">
                                    </div>
                                <?php 
                                    $d = 0;
                                    foreach ($img_sub as $item) {
                                        $d++;
                                        $image = json_decode($item, true);
                                ?>
                                    <div class="slide-item-nav">
                                        <img src="/images/<?= $image['image'] ?>" alt="" class="img-responsive">
                                    </div>
                                <?php } ?>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="gb-chitiet-duan-body-top-right_datxanhmienbac">
                            <h3><?= $row['product_name'] ?></h3>
                            <?php include DIR_PRODUCT."MS_PRODUCT_DATXANHMB_0002.php";?>
                            <div class="gb-line"></div>
                            <?php // $row['product_des'] ?>
                            <div id="info-duan-spec">
                                <ul>
                                    <li><p><strong>Quận</strong>: <?= $row['quan']!='0' ? $action->getDetail('quan', 'id', $row['quan'])['name'] : '' ?></p></li>
                                    <li><p><strong>Tên đường</strong>: <?= $row['ten_duong'] ?></p></li>
                                    <li><p><strong>Vị trí</strong>: <?= $row['vi_tri']!='0' ? $action->getDetail('vi_tri', 'id', $row['vi_tri'])['name'] : '' ?></p></li>
                                    <li><p><strong>Diện tích</strong>: <?= $row['dien_tich'] ?></p></li>
                                    <li><p><strong>Hiện trạng</strong>: <?= $row['hien_trang']!='0' ? $action->getDetail('hien_trang', 'id', $row['hien_trang'])['name'] : '' ?></p></li>
                                    <li><p><strong>Pháp lý</strong>: <?= $row['phap_ly']!='0' ? $action->getDetail('phap_ly', 'id', $row['phap_ly'])['name'] : '' ?></p></li>
                                    <li><p><strong>Hướng</strong>: <?= $row['huong_nha']!='0' ? $action->getDetail('huong_nha', 'id', $row['huong_nha'])['name'] : '' ?></p></li>
                                </ul>
                                <?php if (isset($_SESSION['user_id_gbvn'])) { ?>
                                    <div class="row btn-giochon-giang">
                                        <div class="col-sm-3  col-xs-4 "> <span id="follow"><?= $row['follow'] ?></span></div>
                                        <div class="col-sm-6  col-xs-8"><button class="btn" type="button" onclick="followf(<?= $row['product_id'] ?>, '<?= $_SESSION['user_id_gbvn'] ?>');">Giỏ chọn</button></div>
                                    </div>
                                <?php } else { ?>
                                    <div class="row btn-giochon-giang">
                                        <div class="col-sm-2 col-xs-4 "> <span id="follow"><?= $row['follow'] ?></span></div>
                                        <div class="col-sm-6 col-xs-8"><button class="btn" type="button" data-toggle="modal" data-target="#dangnhapmodal">Giỏ chọn</button></div>
                                    </div>
                                <?php } ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--LANGDINGPAGE-->
        <div class="gb-chitiet_duan-landingpage_datxanhmienbac">
            <div class="gb-chitiet_duan-landingpage-body_datxanhmienbac">
                <div class="container">
                    <!-- <div class="row"> -->
                        <!-- <div class="col-md-8"> -->
                            <div class="gb-chitiet_duan-landingpage-left_datxanhmienbac">
                                <?= $row['product_content'] ?>
                            </div>
                        <!-- </div> -->
                        <!-- <div class="col-md-4"> -->
                            <?php //include DIR_EMAIL."MS_EMAIL_DATXANHMB_0006.php";?>
                        <!-- </div> -->
                    <!-- </div> -->
                </div>
            </div>
        </div>

        <?php include DIR_PRODUCT."MS_NEWS_ORGANIC_0002.php";?>
    </div>
</div>
<!-- <script src="./plugin/slick/scripts.js"></script> -->
<script src="./plugin/slick/slick.js"></script>
<script src="./plugin/slickNav/jquery.slicknav.js"></script>

<div id="fb-root"></div>
<script>(function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.6";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>

<script type="text/javascript">
    $(document).ready(function() {
        $('.slider-for').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            speed: 500,
            arrows: false,
            fade: true,
            asNavFor: '.slider-nav'
        });
        $('.slider-nav').slick({
            slidesToShow: 5,
            slidesToScroll: 1,
            speed: 500,
            asNavFor: '.slider-for',
            dots: false,
            focusOnSelect: true,
            slide: 'div'
        });
    });
</script>

<script>
    $(document).ready(function () {
        var headerHeight = $('.gb-chitiet_duan-landingpage-nav_datxanhmienbac').outerHeight();

        $('.slide-section').click(function () {
            var linkHref = $(this).attr('href');
            $('html, body').animate({
                scrollTop: $(linkHref).offset().top - headerHeight
            }, 1000);
            e.preventDefault();
        });

        $(".sticky-menu-duan").sticky({topSpacing:0});
    });
</script>
<script type="text/javascript">
    function followf (product_id, user_id) {
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             document.getElementById("follow").innerHTML = this.responseText;
            }
          };
          xhttp.open("GET", "/functions/ajax/follow.php?product_id="+product_id+"&user_id="+user_id, true);
          xhttp.send();
    }
</script>