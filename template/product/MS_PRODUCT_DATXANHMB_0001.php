<?php 
    $action = new action();
    $action_product = new action_product();                                                                                
    if (isset($_GET['slug']) && $_GET['slug'] != '') {
        $slug = $_GET['slug'];

        $rowCatLang = $action_product->getProductCatLangDetail_byUrl($slug,$lang);
        $rowCat = $action_product->getProductCatDetail_byId($rowCatLang[$nameColIdProductCat_productCatLanguage],$lang);
        $rows = $action_product->getProductList_byMultiLevel_orderProductId($rowCat[$nameColId_productCat],'desc',$trang,6,$slug);
    }else{
        $rows = $action->getList($nameTable_product,'','',$nameColId_product,'desc',$trang,6,'san-pham');
        
    }
    $_SESSION['sidebar'] = 'productCat';
?>
<?php 
    $action_lang = new action_lang();
    $url_lang = $action_lang->get_url_lang_productcat($slug, $lang);
?>
<div class="gb-page-product_datxanhmienbac">
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <?php include DIR_BREADCRUMBS."MS_BREADCRUMS_DATXANHMB_0001.php";?>
                <div class="row">
                    <?php
                        $d = 0;
                        foreach ($rows['data'] as $row) {
                            $d++;
                            $action_product1 = new action_product(); 
                            $rowLang1 = $action_product1->getProductLangDetail_byId($row['product_id'],$lang);
                            $row1 = $action_product1->getProductDetail_byId($row['product_id'],$lang); 
                    ?>
                        <div class="col-md-4 col-sm-6">
                            <div class="gb-page-product_datxanhmienbac-item">
                                <div class="gb-page-product_datxanhmienbac-item-img">
                                    <a href="/<?= $row1['friendly_url'] ?>">
                                        <img src="/images/<?= $row1['product_img'] ?>" alt="" class="img-responsive">
                                    </a>
                                </div>
                                <div class="gb-page-product_datxanhmienbac-item-text">
                                    <h2><a href="/<?= $row1['friendly_url'] ?>"><?= $row1['product_name'] ?></a></h2>
                                    <div class="des_datxanhmienbac">
                                        <p><?= $row1['product_address'] ?></p>
                                    </div>
                                    <?php include DIR_PRODUCT."MS_PRODUCT_DATXANHMB_0002.php";?>
                                </div>
                            </div>
                        </div>
                    <?php 
                    if ($d%3==0) {
                        echo '<hr style="width:100%;border:0;margin:0;" />';
                    }
                } ?>
                </div>
                <?php include DIR_PAGINATION."MS_PAGINATION_DATXANHMB_0001.php";?>
            </div>
            <div class="col-md-3">
                <?php include DIR_SIDEBAR."MS_SIDEBAR_DATXANHMB_0002.php"; ?>
                <?php include DIR_SIDEBAR."MS_SIDEBAR_DATXANHMB_0009.php";?>
                <?php //include DIR_SIDEBAR."MS_SIDEBAR_DATXANHMB_0007.php"; ?>
                <?php include DIR_SIDEBAR."MS_SIDEBAR_DATXANHMB_0005.php"; ?>
            </div>
        </div>
    </div>
</div>