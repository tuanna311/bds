<?php
    $limit = 1;
    function search_banduan ($lang, $trang, $limit) {
        $start = $trang * $limit;
        global $conn_vn;

        if(isset($_POST['du-an-ban'])){
            $_SESSION['ten-du-an'] = $_POST['ten-du-an'];

            $_SESSION['danh-muc'] = $_POST['danh-muc'];

            $_SESSION['huyen'] = $_POST['huyen'];

            $_SESSION['tinh'] = $_POST['tinh'];

            $_SESSION['gia'] = $_POST['gia'];
            if($_SESSION['gia'] == "1"){
                $_SESSION['gia'] = "< 1.5";
            }else if($_SESSION['gia'] == "2"){
                $_SESSION['gia'] = "BETWEEN 1.5 AND 2.5";
            }else if($_SESSION['gia'] == "3"){
                $_SESSION['gia'] = "BETWEEN 2.5 AND 3.5";
            }else if($_SESSION['gia'] == "4"){
                $_SESSION['gia'] = "BETWEEN 3.5 AND 5";
            }else if($_SESSION['gia'] == "5"){
                $_SESSION['gia'] = "BETWEEN 5 AND 7";
            }else if($_SESSION['gia'] == "6"){
                $_SESSION['gia'] = "BETWEEN 7 AND 9";
            }else if($_SESSION['gia'] == "7"){
                $_SESSION['gia'] = "> 10";
            }
        }

        $tenduan = $_SESSION['ten-du-an'];

        $danhmuc = $_SESSION['danh-muc'];

        $huyen = trim($_SESSION['huyen']); 

        $huyen = vi_en($huyen);

        $tinh = $_SESSION['tinh'];

        $gia = $_SESSION['gia'];
        
        $sql = "SELECT * FROM province WHERE region_id = $tinh";

        $result = mysqli_query($conn_vn, $sql);

        $rows_provice = mysqli_fetch_assoc($result);


        $province = $rows_provice['region_name'];

        $str_provice = str_replace('Thành phố', '', $province);

        $str_provice = str_replace('Tỉnh', '', $str_provice);

        $str_provice_trim = trim($str_provice);

        $str_huyen = str_replace('Quận', '', $huyen);

        $str_huyen = str_replace('Huyện', '', $huyen);

        $str_huyen = str_replace('Thị Xã', '', $huyen);

        $str_huyen_trim = trim($str_provice);


        $sql = "SELECT * FROM product WHERE product_name LIKE '%$tenduan%' AND productcat_ar LIKE '%$danhmuc%' AND product_price_sale LIKE '%$str_provice_trim%' AND product_price_sale LIKE '%$str_huyen_trim%' AND product_price $gia";
        $result = mysqli_query($conn_vn, $sql);
        $count = mysqli_num_rows($result);
        
        $sql = "SELECT * FROM product WHERE product_name LIKE '%$tenduan%' AND productcat_ar LIKE '%$danhmuc%' AND product_price_sale LIKE '%$str_provice_trim%' AND product_price_sale LIKE '%$str_huyen_trim%' AND product_price $gia";
        // echo $sql;
        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        while ($row = mysqli_fetch_assoc($result)) {
            $rows[] = $row;
        }
        $return = array(
                'data' => $rows,
                'count' => $count,
                
            );
        return $return;
    }

    function search_duanchothue ($lang, $trang, $limit) {

        $start = $trang * $limit;
        global $conn_vn;

        if(isset($_POST['cho-thue-du-an'])){
            $_SESSION['ten-du-an'] = $_POST['ten-du-an'];

            $_SESSION['danh-muc'] = $_POST['danh-muc'];

            $_SESSION['huyen'] = $_POST['huyen'];

            $_SESSION['tinh'] = $_POST['tinh'];
        }

        $tenduan = $_SESSION['ten-du-an'];

        $danhmuc = $_SESSION['danh-muc'];

        $huyen = trim($_SESSION['huyen']); 

        $huyen = vi_en($huyen);

        $tinh = $_SESSION['tinh'];
        
        $sql = "SELECT * FROM province WHERE region_id = $tinh";

        $result = mysqli_query($conn_vn, $sql);

        $rows_provice = mysqli_fetch_assoc($result);


        $province = $rows_provice['region_name'];

        $str_provice = str_replace('Thành phố', '', $province);

        $str_provice = str_replace('Tỉnh', '', $str_provice);

        $str_provice_trim = trim($str_provice);

        $str_huyen = str_replace('Quận', '', $huyen);

        $str_huyen = str_replace('Huyện', '', $huyen);

        $str_huyen = str_replace('Thị Xã', '', $huyen);

        $str_huyen_trim = trim($str_provice);


        $sql = "SELECT * FROM product WHERE product_name LIKE '%$tenduan%' AND productcat_ar LIKE '%$danhmuc%' AND product_price_sale LIKE '%$str_provice_trim%' AND product_price_sale LIKE '%$str_huyen_trim%' AND product_price $gia";
        // echo $sql;die;
        $result = mysqli_query($conn_vn, $sql);
        $count = mysqli_num_rows($result);
        
        $sql = "SELECT * FROM product WHERE product_name LIKE '%$tenduan%' AND productcat_ar LIKE '%$danhmuc%' AND product_price_sale LIKE '%$str_provice_trim%' AND product_price_sale LIKE '%$str_huyen_trim%' AND product_price $gia";
        // echo $sql;
        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        while ($row = mysqli_fetch_assoc($result)) {
            $rows[] = $row;
        }
        $return = array(
                'data' => $rows,
                'count' => $count,
                
            );
        return $return;
    }

    function search_project ($lang, $trang, $limit) {

        $start = $trang * $limit;
        global $conn_vn;

        if(isset($_POST['search-project'])){
            $_SESSION['ten-du-an'] = $_POST['ten-du-an'];

            $_SESSION['danh-muc'] = $_POST['danh-muc'];

            $_SESSION['huyen'] = $_POST['huyen'];

            $_SESSION['tinh'] = $_POST['tinh'];
        }

        $tenduan = $_SESSION['ten-du-an'];

        $danhmuc = $_SESSION['danh-muc'];

        $huyen = trim($_SESSION['huyen']); 

        $huyen = vi_en($huyen);

        $tinh = $_SESSION['tinh'];
        
        $sql = "SELECT * FROM province WHERE region_id = $tinh";

        $result = mysqli_query($conn_vn, $sql);

        $rows_provice = mysqli_fetch_assoc($result);


        $province = $rows_provice['region_name'];

        $str_provice = str_replace('Thành phố', '', $province);

        $str_provice = str_replace('Tỉnh', '', $str_provice);

        $str_provice_trim = trim($str_provice);

        $str_huyen = str_replace('Quận', '', $huyen);

        $str_huyen = str_replace('Huyện', '', $huyen);

        $str_huyen = str_replace('Thị Xã', '', $huyen);

        $str_huyen_trim = trim($str_provice);


        $sql = "SELECT * FROM product WHERE product_name LIKE '%$tenduan%' AND productcat_ar LIKE '%$danhmuc%' AND product_price_sale LIKE '%$str_provice_trim%' AND product_price_sale LIKE '%$str_huyen_trim%' AND product_price $gia";
        // echo $sql;die;
        $result = mysqli_query($conn_vn, $sql);
        $count = mysqli_num_rows($result);
        
        $sql = "SELECT * FROM product WHERE product_name LIKE '%$tenduan%' AND productcat_ar LIKE '%$danhmuc%' AND product_price_sale LIKE '%$str_provice_trim%' AND product_price_sale LIKE '%$str_huyen_trim%' AND product_price $gia";
        // echo $sql;
        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        while ($row = mysqli_fetch_assoc($result)) {
            $rows[] = $row;
        }
        $return = array(
                'data' => $rows,
                'count' => $count,
                
            );
        return $return;
    }
    if($_POST['du-an-ban'] == "s"){
        $rows = search_banduan($lang, $trang, $limit);
        // var_dump($rows['count']);die;
    }
    if($_POST['cho-thue-du-an'] == "s"){
        $rows = search_duanchothue($lang, $trang, $limit);
    }
    if($_POST['search-project'] == "s"){
        $rows = search_project($lang, $trang, $limit);
    }
?>
<div class="gb-page-product_datxanhmienbac">
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <?php include DIR_BREADCRUMBS."MS_BREADCRUMS_DATXANHMB_0001.php";?>
                <?php
                    if($rows['count'] != 0){
                ?>
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
                                            <p><?= $row1['product_price_sale'] ?></p>
                                        </div>
                                        <?php include DIR_PRODUCT."MS_PRODUCT_DATXANHMB_0002.php";?>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                <?php 
                    $config = array(
                        'current_page'  => $trang+1, // Trang hiện tại
                        'total_record'  => $rows['count'], // Tổng số record
                        'total_page'    => 1, // Tổng số trang
                        'limit'         => $limit,// limit
                        'start'         => 0, // start
                        'link_full'     => '',// Link full có dạng như sau: domain/com/page/{page}
                        'link_first'    => '',// Link trang đầu tiên
                        'range'         => 9, // Số button trang bạn muốn hiển thị 
                        'min'           => 0, // Tham số min
                        'max'           => 0,  // tham số max, min và max là 2 tham số private

                    );

                    $pagination = new Pagination;
                    $pagination->init($config);
                    echo $pagination->htmlPaging1();
                ?>
            <?php }else{
                echo "<div class='alert alert-info'>
                          <strong>Cảm ơn bạn đã truy cập Website!</strong> Dự án đang được cập nhật.
                        </div>";
            } ?>
            </div>
            <div class="col-md-3">
                <?php include DIR_SIDEBAR."MS_SIDEBAR_DATXANHMB_0009.php";?>
                <?php include DIR_SIDEBAR."MS_SIDEBAR_DATXANHMB_0005.php"; ?>
            </div>
        </div>
    </div>
</div>