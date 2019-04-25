<?php 
    $home_duan = $action->getList('product', '', '', 'product_id', 'desc', $trang, 999, 'home', 'home');
?>
<div class="gb-list-duan-home">
    <div class="container">
        <h3 class="gb-title-duan">Hàng mới / Hàng giảm</h3>
        <?php 
        $d = 0;
        foreach ($home_duan['data'] as $item) { 
            $d++;
            $row = $item;
            $rowLang = $action_product->getProductLangDetail_byId($item['product_id'], $lang);
        ?>
        <div class="gb-newscategory-vaxin-big  blogBox moreBox" style="display: <?= $d==10 ? 'block' : 'none'?>;">
            <div class="row">
                <div class="col-sm-4">
                    <div class="itemimg-newscategory-vaxin">
                        <a href="/<?= $rowLang['friendly_url'] ?>"><img src="/images/<?= $item['product_img'] ?>" alt="<?= $rowLang['lang_product_name'] ?>" class="img-responsive"></a>
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="itemtext-newscategory-vaxin">
                        <h2><a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_product_name'] ?></a></h2>
                        <!-- <div class="item-time_vaxin"><i class="fa fa-calendar" aria-hidden="true"></i> 6/4/2019</div> -->
                        <?php include DIR_PRODUCT."MS_PRODUCT_DATXANHMB_0002.php";?>
                        <div class="item-time_vaxin-des">
                            <?= $rowLang['lang_product_des'] ?>
                        </div>
                        <!-- <div class="itemtext-newscategory-vaxin-btn">
                            <a href="/<?= $rowLang['friendly_url'] ?>">Xem chi tiết</a>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
        <?php } ?>
        <div id="loadMore-video" style="">
            <a href="#">Load More</a>
        </div>
        <!-- <div style="text-align: center;"><?= $home_duan['paging'] ?></div> -->
    </div>
</div>
<script>
    $( document ).ready(function () {
        $(".moreBox").slice(0, 10).show();
        if ($(".blogBox:hidden").length != 0) {
            $("#loadMore-video").show();
        }       
        $("#loadMore-video").on('click', function (e) {
            e.preventDefault();
            $(".moreBox:hidden").slice(0, 10).slideDown();
            if ($(".moreBox:hidden").length == 0) {
                $("#loadMore-video").fadeOut('slow');
            }
        });
    });
</script>