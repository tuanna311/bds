<?php
    //phpinfo();die;
error_reporting(E_RECOVERABLE_ERROR|E_ERROR|E_CORE_ERROR);
    session_start();
    ob_start();
    $actual_link = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
    $folder = dirname(__FILE__);
    include_once('config.php');
    include_once('__autoload.php');
    $action = new action();
    include_once dirname(__FILE__).DIR_FUNCTIONS."database.php";   
    include_once dirname(__FILE__).DIR_FUNCTIONS_PAGING."pagination.php";
    include_once 'functions/phpmailer/class.smtp.php';
    include_once 'functions/phpmailer/class.phpmailer.php';
    include_once "functions/vi_en.php";

    include_once dirname(__FILE__).DIR_FUNCTIONS_LANGUAGE."lang_config.php";
    include_once dirname(__FILE__).DIR_FUNCTIONS_LANGUAGE.$lang_file;
    // Install Friendly Url
    include_once dirname(__FILE__).DIR_FUNCTIONS_URL."url_config.php";
    // Configure Website
    include_once dirname(__FILE__).DIR_FUNCTIONS."website_config.php";

    $trang = isset($_GET['trang']) ? $_GET['trang'] : '1';
    $action = new action();
    $cart = new action_cart();
    $menu = new action_menu();
    $action_product = new action_product();

    $rowConfig = $action->getDetail('config','config_id',1);
?>

<!doctype html>
<html lang="en">
<head>
    <!-- start - cấu hình cơ bản, dùng chung cho tất cả các website chuẩn seo -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- cần cấu hình linh hoạt -->
    <meta name="description" content="<?= $meta_des ?>">
    <!-- cần cấu hình linh hoạt -->
    <meta name="keywords" content="<?= $meta_key ?>">
    <!-- cần cấu hình linh hoạt -->
    <title><?= $title ?></title>
    <!-- cần cấu hình linh hoạt -->
    <link rel="icon" href="/images/<?= $rowConfig['icon_web'] ?>" type="image/gif" sizes="16x16">

    <link rel="stylesheet" href="/plugin/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="/plugin/bootstrap/css/bootstrap-theme.css">
    <link rel="stylesheet" href="/plugin/fonts/font-awesome/css/font-awesome.min.css">
    <script src="/plugin/jquery/jquery-2.0.2.min.js"></script>
    <script src="/plugin/bootstrap/js/bootstrap.js"></script>
    <link rel="stylesheet" type="text/css" href="/css/style-datxanhmienbac.css"> 
</head>

<body>

    <?php 
    if (isset($_GET['page'])) {
        $urlAnalytic = $action->getTypePage_byUrl($_GET['page'],$lang); 
        if ($urlAnalytic == 'product_languages') {
            $check_login_giochon = 'true';
        } else {
            $check_login_giochon = 'false';
        }
    } else {
        $check_login_giochon = 'false';
    }
    include_once dirname(__FILE__).DIR_THEMES."header.php"; 
    ?>
<!--CONTENT-->
<div class="gb-content">
<?php
    if (isset($_GET['page'])){
        
        $urlAnalytic = $action->getTypePage_byUrl($_GET['page'],$lang);    
        //echo $urlAnalytic;
        switch ($urlAnalytic) {

          case 'tin-tuc':
                include_once dirname(__FILE__).DIR_THEMES."tintuc.php"; break;
        	case 'newscat_languages':
                include_once dirname(__FILE__).DIR_THEMES."tintuc.php"; break;
            case 'news_languages':               
                include_once dirname(__FILE__).DIR_THEMES."chitiet_tintuc.php"; break;
            case 'servicecat_languages':
                include_once dirname(__FILE__) . DIR_THEMES . "dichvu.php";break;
            case 'service_languages':
                include_once dirname(__FILE__) . DIR_THEMES . "chitiet_dichvu.php";break;
            case 'page_language':
                include_once dirname(__FILE__) . DIR_THEMES . "gioithieu.php";break;
    		  case 'productcat_languages':              
                include_once dirname(__FILE__).DIR_THEMES."sanpham.php"; break;
            case 'products':              
                include_once dirname(__FILE__).DIR_THEMES."sanpham.php"; break;
            case 'san-pham':              
                include_once dirname(__FILE__).DIR_THEMES."sanpham.php"; break;
            case 'product_languages':
                include_once dirname(__FILE__).DIR_THEMES."chitietsanpham.php"; break;	
            // start - chưa hoàn thiện - url địa chỉ trang website
            case 'contact':           
                include_once dirname(__FILE__).DIR_THEMES."contact.php"; break;
            case 'lien-he':
                include_once dirname(__FILE__).DIR_THEMES."lienhe.php"; break;
            case 'search-news':
                include_once dirname(__FILE__) . DIR_THEMES . "search-news.php";break;
            case 'search-product':
                include_once dirname(__FILE__) . DIR_THEMES . "search-product.php";break;
            case 'search-service':
                include_once dirname(__FILE__) . DIR_THEMES . "search-service.php";break;
            case 'search-project':
                include_once dirname(__FILE__) . DIR_THEMES . "search-project.php";break;
            case 'tuyen-dung':
                include_once dirname(__FILE__) . DIR_THEMES . "tuyendung.php";break;

            case 'dang-xuat':
                include_once dirname(__FILE__) . DIR_THEMES . "dang-xuat.php";break;

            case 'thong-tin-tai-khoan':
                include_once dirname(__FILE__) . DIR_THEMES . "user-profile.php";break;

            case 'tim-kiem-nha':
                include_once dirname(__FILE__) . DIR_THEMES . "tim-kiem-nha.php";break;

            case 'don-hang':
                include_once dirname(__FILE__) . DIR_THEMES . "don-hang.php";break;

            case 'chi-tiet-don-hang':
                include_once dirname(__FILE__) . DIR_THEMES . "cart-detail.php";break;

            case 'doi-mat-khau':
               include_once dirname(__FILE__) . DIR_THEMES . "doi-mat-khau.php";break;

            case 'loc-nha':
                include_once dirname(__FILE__) . DIR_THEMES . "loc-nha.php";break;

            case 'ki-gui':
                include_once dirname(__FILE__) . DIR_THEMES . "ki-gui.php";break;

            case 'home':
                include_once dirname(__FILE__) . DIR_THEMES . "home.php";break;
            // end - chưa hoàn thiện - url địa chỉ trang website
        }
    }
    else include_once dirname(__FILE__).DIR_THEMES."home.php";
    ?>
</div>

<!--FOOTER-->
<div class="gb-footer">
    <?php include_once dirname(__FILE__).DIR_THEMES."footer.php"; ?>

</div> 
<script type="text/javascript" src="/functions/language/lang.js"></script>

<?php include_once DIR_OTHER . "dang_ky.php"; ?>
<?php include_once DIR_OTHER . "dang_nhap.php"; ?>

<style>
#myBtn {
  display: none;
  position: fixed;
  bottom: 140px;
  right: 30px;
  z-index: 99;
  /*font-size: 18px;*/
  border: none;
  outline: none;
  /*background-color: red;*/
  color: white;
  cursor: pointer;
  /*padding: 15px;*/
  /*border-radius: 4px;*/
}

#myBtn:hover {
  /*background-color: #555;*/
}
</style>
<!-- <button onclick="topFunction()" id="myBtn" title="Go to top">Top</button> -->
<div onclick="topFunction()" id="myBtn" title="Go to top"><img src="/images/icons/totop.png" alt=""></div>
<script>
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    document.getElementById("myBtn").style.display = "block";
  } else {
    document.getElementById("myBtn").style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  // document.body.scrollTop = 0;
  // document.documentElement.scrollTop = 0;
  $("html, body").animate({scrollTop: 0}, 1000);
}
</script>

<a href="tel:0946231088" class="suntory-alo-phone suntory-alo-green" id="suntory-alo-phoneIcon" style="left: 0px; bottom: 0px;">
  <div class="suntory-alo-ph-circle"></div>
  <div class="suntory-alo-ph-circle-fill"></div>
  <div class="suntory-alo-ph-img-circle"><i class="fa fa-phone"></i></div>
  <span class="sdt-bottom-left">0946.231.088</span>
</a>

<style type="text/css">
  .suntory-alo-phone {
  background-color: transparent;
  cursor: pointer;
  height: 120px;
  position: fixed;
  transition: visibility 0.5s ease 0s;
  width: 120px;
  z-index: 200000 !important;
}
.sdt-bottom-left{
        text-transform: uppercase;
    color: #ffffff;
    font-size: 20px;
    line-height: 38px;
    font-weight: bold;
    background: #f48020;
    padding: 7px 20px;
    margin-left: 25px;
    margin-top: 24px;
    display: block;
    position: absolute;
    z-index: -1;
    padding-left: 60px;
    border-radius: 50px;
}
.suntory-alo-ph-circle {
  animation: 1.2s ease-in-out 0s normal none infinite running suntory-alo-circle-anim;
  background-color: transparent;
  border: 2px solid rgba(30, 30, 30, 0.4);
  border-radius: 100%;
  height: 100px;
  left: 0px;
  opacity: 0.1;
  position: absolute;
  top: 0px;
  transform-origin: 50% 50% 0;
  transition: all 0.5s ease 0s;
  width: 100px;
}
.suntory-alo-ph-circle-fill {
  animation: 2.3s ease-in-out 0s normal none infinite running suntory-alo-circle-fill-anim;
  border: 2px solid transparent;
  border-radius: 100%;
  height: 70px;
  left: 15px;
  position: absolute;
  top: 15px;
  transform-origin: 50% 50% 0;
  transition: all 0.5s ease 0s;
  width: 70px;
}
.suntory-alo-ph-img-circle {
  border: 2px solid transparent;
  border-radius: 100%;
  height: 50px;
  left: 25px;
  opacity: 0.7;
  position: absolute;
  top: 25px;
  transform-origin: 50% 50% 0;
  width: 50px;
  text-align: center;
}
.suntory-alo-phone.suntory-alo-hover, .suntory-alo-phone:hover {
  opacity: 1;
}
.suntory-alo-phone.suntory-alo-active .suntory-alo-ph-circle {
  animation: 1.1s ease-in-out 0s normal none infinite running suntory-alo-circle-anim !important;
}
.suntory-alo-phone.suntory-alo-static .suntory-alo-ph-circle {
  animation: 2.2s ease-in-out 0s normal none infinite running suntory-alo-circle-anim !important;
}
.suntory-alo-phone.suntory-alo-hover .suntory-alo-ph-circle, .suntory-alo-phone:hover .suntory-alo-ph-circle {
  border-color: #00aff2;
  opacity: 0.5;
}
.suntory-alo-phone.suntory-alo-green.suntory-alo-hover .suntory-alo-ph-circle, .suntory-alo-phone.suntory-alo-green:hover .suntory-alo-ph-circle {
  border-color: #EB278D;
  opacity: 1;
}
.suntory-alo-phone.suntory-alo-green .suntory-alo-ph-circle {
  border-color: #bfebfc;
  opacity: 1;
}
.suntory-alo-phone.suntory-alo-hover .suntory-alo-ph-circle-fill, .suntory-alo-phone:hover .suntory-alo-ph-circle-fill {
  background-color: rgba(0, 175, 242, 0.9);
}
.suntory-alo-phone.suntory-alo-green.suntory-alo-hover .suntory-alo-ph-circle-fill, .suntory-alo-phone.suntory-alo-green:hover .suntory-alo-ph-circle-fill {
  background-color: #EB278D;
}
.suntory-alo-phone.suntory-alo-green .suntory-alo-ph-circle-fill {
  background-color: rgba(0, 175, 242, 0.9);
}
.suntory-alo-phone.suntory-alo-hover .suntory-alo-ph-img-circle, .suntory-alo-phone:hover .suntory-alo-ph-img-circle {
  background-color: #00aff2;
}
.suntory-alo-phone.suntory-alo-green.suntory-alo-hover .suntory-alo-ph-img-circle, .suntory-alo-phone.suntory-alo-green:hover .suntory-alo-ph-img-circle {
  background-color: #EB278D;
}
.suntory-alo-phone.suntory-alo-green .suntory-alo-ph-img-circle {
  background-color: #00aff2;
}
@keyframes suntory-alo-circle-anim {
  0% {
    opacity: 0.1;
    transform: rotate(0deg) scale(0.5) skew(1deg);
  }
  30% {
    opacity: 0.5;
    transform: rotate(0deg) scale(0.7) skew(1deg);
  }
  100% {
    opacity: 0.6;
    transform: rotate(0deg) scale(1) skew(1deg);
  }
}
@keyframes suntory-alo-circle-img-anim {
  0% {
    transform: rotate(0deg) scale(1) skew(1deg);
  }
  10% {
    transform: rotate(-25deg) scale(1) skew(1deg);
  }
  20% {
    transform: rotate(25deg) scale(1) skew(1deg);
  }
  30% {
    transform: rotate(-25deg) scale(1) skew(1deg);
  }
  40% {
    transform: rotate(25deg) scale(1) skew(1deg);
  }
  50% {
    transform: rotate(0deg) scale(1) skew(1deg);
  }
  100% {
    transform: rotate(0deg) scale(1) skew(1deg);
  }
}
@keyframes suntory-alo-circle-fill-anim {
  0% {
    opacity: 0.2;
    transform: rotate(0deg) scale(0.7) skew(1deg);
  }
  50% {
    opacity: 0.2;
    transform: rotate(0deg) scale(1) skew(1deg);
  }
  100% {
    opacity: 0.2;
    transform: rotate(0deg) scale(0.7) skew(1deg);
  }
}
.suntory-alo-ph-img-circle i {
  animation: 1s ease-in-out 0s normal none infinite running suntory-alo-circle-img-anim;
  font-size: 30px;
  line-height: 50px;
  color: #fff;
  float: none;
}
@keyframes suntory-alo-ring-ring {
  0% {
    transform: rotate(0deg) scale(1) skew(1deg);
  }
  10% {
    transform: rotate(-25deg) scale(1) skew(1deg);
  }
  20% {
    transform: rotate(25deg) scale(1) skew(1deg);
  }
  30% {
    transform: rotate(-25deg) scale(1) skew(1deg);
  }
  40% {
    transform: rotate(25deg) scale(1) skew(1deg);
  }
  50% {
    transform: rotate(0deg) scale(1) skew(1deg);
  }
  100% {
    transform: rotate(0deg) scale(1) skew(1deg);
  }
}

</style>

</body>

</html>