<div class="gb-duannoibat_datxanhmienbac">
    <div class="container">
        <div class="dx_heading_1_datxanhmienbac">
            <p class="dx_heading_p_datxanhmienbac">Dự án nổi bật</p>
        </div>

        <div class="gb-duannoibat_datxanhmienbac-body">
            <div class="row">
                <?php

                    $duan_hot = new action_product();
                    $list_duan_hot = $duan_hot->getListProductHot_hasLimit(9);
                    $d = 0;
                    foreach ($list_duan_hot as $item) {                        
                    $d++;
                ?>
                <div class="col-md-4 col-sm-6">
                    <div class="gb-duannoibat_datxanhmienbac-item">
                        <div class="gb-duannoibat_datxanhmienbac-item-img">
                            <a href="/<?= $item['friendly_url'] ?>">
                                <img src="/images/<?= $item['product_img'] ?>" alt="" class="img-responsive">
                            </a>
                        </div>
                        <div class="gb-duannoibat_datxanhmienbac-item-text">
                            <h2><a href="/<?= $item['friendly_url'] ?>"><?= $item['product_name'] ?></a></h2>
                            <div class="des_datxanhmienbac">
                                <p><?= $item['product_price_sale'] ?></p>
                            </div>
                            <p class="prices_datxanhmienbac"><span>Giá: </span> Liên hệ</p>
                        </div>
                    </div>
                </div>
                <?php if($d%3 == 0) {echo "<hr style='width:100%;border-top:1px solid #fff;'>";} ?>
                <?php } ?>
            </div>
            <div class="btn-xemtatca_datxanhmienbac">
                <a href="/ban-bat-dong-san">Xem tất cả</a>
            </div>
        </div>
    </div>
</div>