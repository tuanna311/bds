<div class="gb-tintuc-category_datxanhmienbac">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <?php
                    $news = new action_news();
                    $news_first = $news->getALastNews();
                ?>
                <div class="gb-tintuc-category_datxanhmienbac-big">
                    <div class="item-img">
                        <a href="/<?= $news_first['friendly_url'] ?>">
                            <img src="/images/<?= $news_first['news_img'] ?>" alt="" class="img-responsive">
                        </a>
                    </div>
                    <div class="item-info">
                        <h2><a href="/<?= $news_first['friendly_url'] ?>"><?= $news_first['news_name'] ?></a></h2>
                        <p><?= $news_first['news_des'] ?></p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="gb-tintuc-category_datxanhmienbac-small">
                    <ul>
                        <?php
                            $list_last_news = $news->getSomeLastNews(8, 2);
                            foreach ($list_last_news as $item) {
                        ?>
                            <li><a href="/<?= $item['friendly_url'] ?>"><?= $item['news_name'] ?></a></li>
                        <?php } ?>
                    </ul>
                </div>
            </div>
            <div class="col-md-3">
                <?php include DIR_BANNER."MS_BANNER_DATXANHMB_0002.php";?>
                <?php include DIR_BANNER."MS_BANNER_DATXANHMB_0003.php";?>
            </div>
        </div>
    </div>
</div>