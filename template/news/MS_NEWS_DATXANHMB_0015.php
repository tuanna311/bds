<div class="gb-page-tintuyendung_datxanhmienbac">
    <div class="container">
        <?php include DIR_BREADCRUMBS."MS_BREADCRUMS_DATXANHMB_0001.php";?>
        <?php
            $news = new action_news();
            $list_tuyendung = $news->getListNewsTuyendung_byIdCat_hasLimit(68, 1);
            foreach ($list_tuyendung as $item) {
        ?>
        <div class="gb-page-tintuyendung_datxanhmienbac-big">
            <div class="row">
                <div class="col-md-6">
                    <div class="gb-page-tintuyendung_datxanhmienbac-big-img">
                        <a href="/<?= $item['friendly_url'] ?>"><img src="/images/<?= $item['news_img'] ?>" alt="" class="img-responsive"></a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="gb-page-tintuyendung_datxanhmienbac-big-text">
                        <div class="dx_recruitment_hot_title">
                            <h2><a href=""><?= $item['news_name'] ?></a></h2>
                            <p><?= $item['news_des'] ?></p>
                            <a href="/<?= $item['friendly_url'] ?>" class="btn-xemthem">Xem thêm</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php } ?>
        <div class="gb-page-tintuyendung_datxanhmienbac-small">
            <div class="row">
                <?php 
                    $news = new action_news();
                    $rows = $news->getNewsList_byMultiLevel_orderNewsId(68,'asc',$trang,6,$slug);
                    foreach ($rows['data'] as $item) { 
                        $rowLang1 = $news->getNewsLangDetail_byId($item['news_id'],$lang);
                        $row1 = $news->getNewsDetail_byId($item['news_id'],$lang);
                        $str_date = $item['news_created_date'];
                        $year = substr($str_date, 0,4);
                        $month = substr($str_date, 5,2);
                        $date = substr($str_date, 8,2);
                ?>
                <div class="col-md-4">
                    <div class="gb-tinthitruong_datxanhmienbac-item">
                        <div class="gb-tinthitruong_datxanhmienbac-item-img">
                            <a href="/<?= $row1['friendly_url'] ?>"><img src="/images/<?= $row1['news_img'] ?>" alt="" class="img-responsive"></a>
                        </div>
                        <div class="gb-tinthitruong_datxanhmienbac-item-text">
                            <div class="row">
                                <div class="col-md-3 col-sm-3 col-xs-4 clear-padding-right">
                                    <div class="gb-tinthitruong_datxanhmienbac-item-text-left">
                                        <ul>
                                            <li class="days"><?= $date ?></li>
                                            <li class="month">Tháng <?= $month ?></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-9 col-sm-9 col-xs-8">
                                    <div class="gb-tinthitruong_datxanhmienbac-item-text-right">
                                        <h2 class="name-server"><a href="/<?= $row1['friendly_url'] ?>"><?= $row1['news_name'] ?></a></h2>
                                        <p class="time"><i class="fa fa-map-marker"></i><?= $str_date ?></p>
                                        <p class="address"><i class="fa fa-calendar"></i> Văn phòng bán hàng dự án</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
            <?php include DIR_PAGINATION."MS_PAGINATION_DATXANHMB_0001.php";?>
        </div>
    </div>

    <?php include DIR_NEWS."MS_NEWS_DATXANHMB_0014.php";?>
</div>