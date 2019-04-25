<link rel="stylesheet" href="./plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="./plugin/owl-carouse/owl.theme.default.min.css">
<link rel="stylesheet" href="./plugin/fonts/fontello/css/fontello.css">
<div class="gb-tintucdatxanh_datxanhmienbac">
    <div class="container">
        <div class="dx_heading_1_datxanhmienbac">
            <p class="dx_heading_p_datxanhmienbac">Tin tức đất xanh</p>
        </div>
        <div class="gb-tintucdatxanh_datxanhmienbac-body">
            <div class="gb-tintucdatxanh_datxanhmienbac-slide owl-carousel owl-theme">
                <?php
                    $news = new action_news();
                    $list_news_datxanh = $news->getListNewsRelate_byIdCat_hasLimit(66, 8);
                    foreach ($list_news_datxanh as $item) {
                ?>
                <div class="item">
                    <div class="gb-tintucdatxanh_datxanhmienbac-item">
                        <div class="gb-tintucdatxanh_datxanhmienbac-item-img">
                            <a href=""><img src="/images/tintuc/3.jpg" alt="" class="img-responsive"></a>
                        </div>
                        <div class="gb-tintucdatxanh_datxanhmienbac-item-text">
                            <h2><a href=""><?= $item['news_name'] ?></a></h2>
                            <p><?= $item['news_des'] ?></p>
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
        $('.gb-tintucdatxanh_datxanhmienbac-slide').owlCarousel({
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