<div class="gb-tintuc-page">
    <?php
        $action = new action();
        $action_news = new action_news();     
        if (isset($_GET['slug']) && $_GET['slug'] != '') {
            $slug = $_GET['slug'];
            $rowCatLang = $action_news->getNewsCatLangDetail_byUrl($slug,$lang);
            $rowCat = $action_news->getNewsCatDetail_byId($rowCatLang[$nameColIdNewsCat_newsCatLanguage],$lang);
            if (newsCatPageHasSub) {
                $rows = $action_news->getNewsList_byMultiLevel_orderNewsId($rowCat[$nameColId_newsCat],'asc',$trang,6,$slug);
            } else {
                $rows = $action_news->getNewsCat_byNewsCatIdParentHighest($rowCat[$nameColId_newsCat],'asc');
            }        
        }
        else $rows = $action->getList($nameTable_news,'','',$nameColId_news,'asc',$trang,6,'news-cat'); 
    ?>
    <?php if(newsCatPageHasSub){?>
        <?php 
            $d = 0;
            foreach ($rows['data'] as $item) { 
        ?>
        <div class="gb-tintuc-page-item">
            <div class="gb-home-newest-big">
                <div class="entry-img">
                    <a href="/<?= $item['friendly_url'] ?>">
                        <img src="/images/<?= $item['news_img'] ?>" alt="" class="img-responsive">
                    </a>
                </div>
                <div class="entry-content">
                    <div class="entry-tile">
                        <h3><a href="/<?= $item['friendly_url'] ?>"><?= $item['news_name'] ?></a></h3>
                    </div>
                    <div class="entry-date">
                        <i class="fa fa-calendar-check-o"></i>
                        <span><?= $item['news_created_date'] ?></span>
                    </div>
                    <div class="entry-excerpt">
                        <p>
                            <?= $item['news_des'] ?>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    <?php } ?>
    <?php } ?>
    

    <?php include DIR_PAGINATION."MS_PAGINATION_DATXANHMB_0001.php";?>
</div>