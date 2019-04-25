<?php 
    $product_related1 = $action_product->getListProductRelate_byIdCat_hasLimit($productcat_id, 8);
?>
<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">
<div class="gb-news-blog_organic">
    <div class="container">
        <div class="gb-news-blog_organic-title">
            SẢN PHẨM LIÊN QUAN
        </div>
        <div class="gb-news-blog_organic-slide owl-carousel owl-theme">
            <?php 
            $d = 0;
            foreach ($product_related1 as $item) {
                $d++;
                $row = $item;
                $rowLang = $action_product->getProductLangDetail_byId($item['product_id'],$lang); 
            ?>
            <div class="item">
                <div class="gb-news-blog_organic-item">
                    <div class="gb-news-blog_organic-item-img">
                        <a href="/<?= $rowLang['friendly_url'] ?>"><img src="/images/<?= $item['product_img'] ?>" alt="<?= $rowLang['lang_product_name'] ?>" class="img-responsive"></a>
                        
                    </div>
                    <div class="gb-news-blog_organic-item-text">
                        <div class="gb-news-blog_organic-item-title">
                            <h3><a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_product_name'] ?></a></h3>
                        </div>
                        <?php include DIR_PRODUCT."MS_PRODUCT_DATXANHMB_0002.php";?>
                        <div class="gb-news-blog_organic-item-text-des">
                            <p><?= $rowLang['lang_product_des'] ?></p>
                        </div>
                    </div>

                </div>
            </div>
            <?php } ?>
        </div>
        <div class="gb-divider"></div>
    </div>
</div>
<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function (){
        $('.gb-news-blog_organic-slide').owlCarousel({
            loop:true,
            margin:30,
            navSpeed:2000,
            nav:true,
            dots: false,
            autoplay: true,
            rewind: true,
            navText:[],
            responsive:{
                0:{
                    items:1
                },
                600:{
                    items:3
                }
            }
        });
    });
</script>