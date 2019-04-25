<!-- TIN TỨC THỊ TRƯỜNG -->
<div class="gb-tinthitruong_datxanhmienbac">
    <div class="container">
        <div class="dx_heading_1_datxanhmienbac">
            <p class="dx_heading_p_datxanhmienbac">Tin thị trường</p>
        </div>
        <div class="gb-tinthitruong_datxanhmienbac-body">
            <div class="row">
                <div class="col-md-4">
                    <?php include DIR_BANNER."MS_BANNER_DATXANHMB_0001.php";?>
                </div>
                <?php
                    $news = new action_news();
                    $list_tintucthitruong = $news->getListNewsRelate_byIdCat_hasLimit(69,5);
                    foreach ($list_tintucthitruong as $item) {
                ?>
                    <div class="col-md-4">
                        <div class="gb-tinthitruong_datxanhmienbac-item">
                            <div class="gb-tinthitruong_datxanhmienbac-item-img">
                                <a href="/<?= $item['friendly_url'] ?>">
                                    <img src="/images/<?= $item['news_img'] ?>" alt="" class="img-responsive">
                                </a>
                            </div>
                            <div class="gb-tinthitruong_datxanhmienbac-item-text">
                                <div class="row">
                                    <div class="col-md-12 col-sm-9 col-xs-8">
                                        <div class="gb-tinthitruong_datxanhmienbac-item-text-right">
                                            <h2 class="name-server"><a href="/<?= $item['friendly_url'] ?>"><?= $item['news_name'] ?></a></h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
            <div class="btn-xemtatca_datxanhmienbac">
                <a href="/tin-tuc">Xem tất cả</a>
            </div>
        </div>
    </div>
</div>