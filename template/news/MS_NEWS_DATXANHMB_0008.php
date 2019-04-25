<div class="gb-duansapmoban_datxanhmienbac">
    <div class="container">
        <div class="dx_heading_1_datxanhmienbac">
            <p class="dx_heading_p_datxanhmienbac">Dự án sắp mở bán</p>
        </div>
        <div class="gb-duansapmoban_datxanhmienbac-body">
            <div class="row">
                <?php
                    $duan = new action_product();
                    $list_duan_sapmo = $duan->getListProductNew_hasLimit(4);
                    foreach ($list_duan_sapmo as $item) {                        
                ?>
                <div class="col-md-3">
                    <div class="gb-duansapmoban_datxanhmienbac-item">
                        <div class="gb-duansapmoban_datxanhmienbac-item-img">
                            <a href="/<?= $item['friendly_url'] ?>">
                                <img src="/images/<?= $item['product_img'] ?>" alt="" class="img-responsive">
                            </a>
                        </div>
                        <div class="gb-duansapmoban_datxanhmienbac-item-text">
                            <h2><a href="/<?= $item['friendly_url'] ?>"><?= $item['product_name'] ?></a></h2>
                            <p><?= $item['product_price_sale'] ?></p>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>