<?php 
    $action_news = new action_news(); 
    $slug = isset($_GET['slug']) ? $_GET['slug'] : '';

    $rowLang = $action_news->getNewsLangDetail_byUrl($slug,$lang);
    $row = $action_news->getNewsDetail_byId($rowLang['news_id'],$lang);
    $_SESSION['sidebar'] = 'newsDetail';
    $news_breadcrumb = $action_news->getNewsCatLangDetail_byId($row['newscat_id'], $lang);
    $breadcrumb_url = $news_breadcrumb['friendly_url'];
    $breadcrumb_name = $news_breadcrumb['lang_newscat_name'];
    $use_breadcrumb = true;
?>
<div class="gb-chitiet-tintuc">
    <div class="container">
        <?php include DIR_BREADCRUMBS."MS_BREADCRUMS_DATXANHMB_0001.php";?>
        <div class="row">
            <div class="col-md-8">
                <?php include DIR_NEWS."MS_NEWS_DATXANHMB_0005.php";?>

                <!--comment-->
                <?php include DIR_EMAIL."MS_EMAIL_DATXANHMB_0002.php";?>

                <!--TIN TỨC LIÊN QUAN-->
                <?php include DIR_NEWS."MS_NEWS_DATXANHMB_0006.php";?>
            </div>
            <div class="col-md-4">
                <?php include DIR_SIDEBAR."MS_SIDEBAR_DATXANHMB_0002.php"; ?>
                <?php include DIR_SIDEBAR."MS_SIDEBAR_DATXANHMB_0005.php"; ?>
                <?php include DIR_SIDEBAR."MS_SIDEBAR_DATXANHMB_0006.php"; ?>
                <?php include DIR_SIDEBAR."MS_SIDEBAR_DATXANHMB_0008.php"; ?>
                <?php include DIR_SIDEBAR."MS_SIDEBAR_DATXANHMB_0007.php"; ?>
            </div>
        </div>
    </div>
</div>