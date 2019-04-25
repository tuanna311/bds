<div class="gb-duanchothuenoibat_datxanhmienbac">
    <div class="container">
        <div class="dx_heading_1_datxanhmienbac">
            <p class="dx_heading_p_datxanhmienbac">Dự án cho thuê nổi bật</p>
        </div>

        <div class="gb-duanchothuenoibat_datxanhmienbac-body">
            <div class="row">
                <?php
                    $duan_high = new action_product();
                    $list_duan_high = $duan_high->getProductCat_byProductCatIdParent_Limit_HT(237, '', 0,1);
                    foreach ($list_duan_high as $item) {
                ?>
                    <div class="col-md-4">
                        <div class="gb-duanchothuenoibat_datxanhmienbac-item">
                            <div class="gb-duanchothuenoibat_datxanhmienbac-item-img">
                                <img alt="" src="/images/<?= $item['productcat_img'] ?>" class="img-responsive">
                            </div>
                            <div class="gb-duanchothuenoibat_datxanhmienbac-item_des">
                                <h3><?= $item['productcat_name'] ?></h3>
                            </div>
                            <div class="gb-duanchothuenoibat_datxanhmienbac-item_recent_property_des">
                                <h3><a href="/<?= $item['friendly_url'] ?>"><?= $item['productcat_name'] ?></a></h3>
                                <p><?= $item['productcat_des'] ?></p>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            
                <div class="col-md-4">
                    <?php
                        $duan_high = new action_product();
                        $list_duan_high = $duan_high->getProductCat_byProductCatIdParent_Limit_HT(237, '', 1,1);
                        foreach ($list_duan_high as $item) {
                    ?>
                        <div class="gb-duanchothuenoibat_datxanhmienbac-item">
                            <div class="gb-duanchothuenoibat_datxanhmienbac-item-img">
                                <img alt="" src="/images/<?= $item['productcat_img'] ?>" class="img-responsive">
                            </div>
                            <div class="gb-duanchothuenoibat_datxanhmienbac-item_des">
                                <h3><?= $item['productcat_name'] ?></h3>
                            </div>
                            <div class="gb-duanchothuenoibat_datxanhmienbac-item_recent_property_des">
                                <h3><a href="/<?= $item['friendly_url'] ?>"><?= $item['productcat_name'] ?></a></h3>
                                <p><?= $item['productcat_des'] ?></p>
                            </div>
                        </div>
                    <?php } ?>

                    <?php
                        $duan_high = new action_product();
                        $list_duan_high = $duan_high->getProductCat_byProductCatIdParent_Limit_HT(237, '', 2,1);
                        foreach ($list_duan_high as $item) {
                    ?>
                        <div class="gb-duanchothuenoibat_datxanhmienbac-item">
                            <div class="gb-duanchothuenoibat_datxanhmienbac-item-img">
                                <img alt="" src="/images/<?= $item['productcat_img'] ?>" class="img-responsive">
                            </div>
                            <div class="gb-duanchothuenoibat_datxanhmienbac-item_des">
                                <h3><?= $item['productcat_name'] ?></h3>
                            </div>
                            <div class="gb-duanchothuenoibat_datxanhmienbac-item_recent_property_des">
                                <h3><a href="/<?= $item['friendly_url'] ?>"><?= $item['productcat_name'] ?></a></h3>
                                <p><?= $item['productcat_des'] ?></p>
                            </div>
                        </div>
                    <?php } ?>
                </div>

                <?php
                    $duan_high = new action_product();
                    $list_duan_high = $duan_high->getProductCat_byProductCatIdParent_Limit_HT(237, '', 3,1);
                    foreach ($list_duan_high as $item) {
                ?>
                    <div class="col-md-4">
                        <div class="gb-duanchothuenoibat_datxanhmienbac-item">
                            <div class="gb-duanchothuenoibat_datxanhmienbac-item-img">
                                <img alt="" src="/images/<?= $item['productcat_img'] ?>" class="img-responsive">
                            </div>
                            <div class="gb-duanchothuenoibat_datxanhmienbac-item_des">
                                <h3><?= $item['productcat_name'] ?></h3>
                            </div>
                            <div class="gb-duanchothuenoibat_datxanhmienbac-item_recent_property_des">
                                <h3><a href="/<?= $item['friendly_url'] ?>"><?= $item['productcat_name'] ?></a></h3>
                                <p><?= $item['productcat_des'] ?></p>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>