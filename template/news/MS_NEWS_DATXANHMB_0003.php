<link rel="stylesheet" href="./plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="./plugin/owl-carouse/owl.theme.default.min.css">
<link rel="stylesheet" href="./plugin/fonts/fontello/css/fontello.css">
<div class="gb-duan-vinhomes_datxanhmienbac">
    <div class="container">
        <div class="dx_heading_1_datxanhmienbac">
            <p class="dx_heading_p_datxanhmienbac">Dự án vinhomes</p>
        </div>
        <div class="gb-duan-vinhomes_datxanhmienbac-body">
            <div class="gb-duan-vinhomes_datxanhmienbac-slide owl-carousel owl-theme">
                <?php
                    $event = new action_product();
                    $vinhomes = $event->getListProductRelate_byIdCat_hasLimit(231, 6);
                    foreach ($vinhomes as $item) {
                        $str_date = $item['product_code'];
                        $year = substr($str_date, 0,4);
                        $month = substr($str_date, 5,2);
                        $date = substr($str_date, 8,2);
                ?>
                <div class="item">
                    <div class="gb-duan-vinhomes_datxanhmienbac-item">
                        <div class="gb-duan-vinhomes_datxanhmienbac-item-img">
                            <a href="/<?= $item['friendly_url'] ?>">
                                <img src="/images/<?= $item['product_img'] ?>" alt="" class="img-responsive">
                            </a>
                        </div>
                        <div class="gb-duan-vinhomes_datxanhmienbac-item-text">
                            <h2><a href=""><?= $item['product_name'] ?></a></h2>
                            <p><?= $item['product_price_sale'] ?></p>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>

<script src="./plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function () {
        $('.gb-duan-vinhomes_datxanhmienbac-slide').owlCarousel({
            loop:true,
            nav:false,
            dots:true,
            autoplay:true,
            responsive:{
                0:{
                    items:1
                },
                768:{
                    items:3
                },
                992:{
                    items:4
                }
            }
        });
    });
</script>