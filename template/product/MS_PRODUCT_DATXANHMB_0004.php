<?php 
    $home_nha_follow = $action->getList_follow('product', '', '', 'product_id', 'desc', '', '', '');//var_dump($home_nha_follow);
    $count_home_nha_follow = count($home_nha_follow);
    if ($count_home_nha_follow == 0) {
        $home_nha_follow = $action->getList('product', '', '', 'product_id', 'desc', '', '', '');
    }
?>
<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">
<link rel="stylesheet" href="/plugin/animsition/css/animate.css">

<div class="gb-duan-noibat-home">
    <div class="container">
        <h2>HÀNG HOT</h2>        
    </div>

    <div class="gb-duan-noibat-home-slide owl-carousel owl-theme">
        <?php 
        foreach ($home_nha_follow as $item) { 
            $row = $item;
            $rowLang = $action_product->getProductLangDetail_byId($item['product_id'], $lang);
        ?>
        <div class="item">
            <a href="/<?= $rowLang['friendly_url'] ?>" class="gb-duanchothuenoibat_datxanhmienbac-item" style="display: block; background-image: url('/images/<?= $row['product_img'] ?>')">
                <div class="gb-duanchothuenoibat_datxanhmienbac-item-follow"><?= $row['follow'] ?></div>
                <p class="luot-theo-doi">Lượt theo dõi</p>
                <div class="gb-duanchothuenoibat_datxanhmienbac-item_des">
                    <h3><?= $rowLang['lang_product_name'] ?></h3>
                </div>
                <div class="gb-duanchothuenoibat_datxanhmienbac-item_recent_property_des">
                    <h3><?= $rowLang['lang_product_name'] ?></h3>
                    <div>
                        <?= $rowLang['lang_product_des'] ?>
                    </div>
                </div>
            </a>
        </div>
        <?php } ?>
    </div>
</div>
<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function (){
        $('.gb-duan-noibat-home-slide').owlCarousel({
            loop:true,
            margin:30,
            navSpeed:500,
            nav:false,
            dots: true,
            autoplay: true,
            rewind: true,
            navText:[],
            responsive:{
                0:{
                    items:1,
                },
                991:{
                    items:5,
                }
            }
        });
    });
</script>