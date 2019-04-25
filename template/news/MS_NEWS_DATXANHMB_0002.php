<div class="gb-sukiennongtrongtuan_datxanhmienbac">
    <div class="container">
        <div class="dx_heading_1_datxanhmienbac">
            <p class="dx_heading_p_datxanhmienbac">Sự kiện nóng trong tuần</p>
        </div>

        <div class="gb-sukiennongtrongtuan_datxanhmienbac-body">
            <div class="row">
                <?php
                    $event = new action_product();
                    $sukiennongtrongtuan = $event->getListProductRelate_byIdCat_hasLimit(232, 4);
                    foreach ($sukiennongtrongtuan as $item) {
                        $str_date = $item['product_code'];
                        $year = substr($str_date, 0,4);
                        $month = substr($str_date, 5,2);
                        $date = substr($str_date, 8,2);
                ?>
                    <div class="col-md-3">
                        <div class="gb-sukiennongtrongtuan_datxanhmienbac-item">
                            <div class="gb-sukiennongtrongtuan_datxanhmienbac-item-img">
                                <a href="/<?= $item['friendly_url'] ?>">
                                    <img src="/images/<?= $item['product_img'] ?>" alt="" class="img-responsive">
                                </a>
                            </div>
                            <div class="gb-sukiennongtrongtuan_datxanhmienbac-item-text">
                                <h2><a href="/<?= $item['friendly_url'] ?>"><?= $item['product_name'] ?></a></h2>
                                <p>Lịch mở bán</p>
                                <div class="time">
                                    <ul>
                                        <li class="days">Ngày <br> <span><?= $date ?></span></li>
                                        <li class="month">Tháng <br> <span><?= $month ?></span></li>
                                        <li class="years">Năm <br> <span><?= $year ?></span></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>