<?php
    include_once 'admin/action_order.php';
    $order = new action_order();
    $user_id = $_SESSION['user_id_gbvn'];

     //Lấy thong tin tai khoan user
    function get_list_user_1($id){
        global $conn_vn;
        $sql = "SELECT * FROM user Where user_id = '$id'";
        $result = mysqli_query($conn_vn, $sql);
        $row = mysqli_fetch_assoc($result);
        return $row;
    }

    $user = get_list_user_1($user_id);

    $mail_buyer = $user['user_email'];

    function cart($mail_buyer){
        global $conn_vn;
        $sql = "SELECT * FROM cart WHERE mail_buyer = '$mail_buyer' ORDER BY id_cart DESC";
        $result = mysqli_query($conn_vn, $sql);

        $rows = array();

        while ($row = mysqli_fetch_assoc($result)) {
            $rows[] = $row;
        }
        return $rows;
    }

    $cart = cart($mail_buyer);
    

?>
<div class="container">
    <?php include DIR_BREADCRUMBS."MS_BREADCRUMS_EXCEL_0001.php";?>
    <div class="row">
        <div class="col-md-3">
            <?php include DIR_REGISTER."MS_REGISTER_EXCEL_0006.php";?>
        </div>
        <div class="col-md-9">
            <h1 class="title-khoahoc"><i class="fa fa-bookmark" aria-hidden="true"></i> Khóa học của tôi</h1>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Khóa học</th>
                        <th>Hình ảnh khóa học</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        foreach ($cart as $item_cart) {

                        // Lay chi tiet don hang
                        $listOrderDetail =  $order->getlistOrderDetailByCartId($item_cart['id_cart']);
                        $status_cart = $item_cart['id_orderState'];

                        if($status_cart == 4){
                            $action_product = new action_product();
                            $product_id = "";
                            foreach ($listOrderDetail as $item) {
                                $item_my_cousre = $action_product->getProductDetail_byId($item['product_id'] , $lang);
                    ?>
                        <tr>
                            <td>
                                <a class="ten-khoahoc" href="/<?= $item_my_cousre['friendly_url'] ?>" title=""><?= $item_my_cousre['product_name'] ?></a>
                                <p>Giảng viên: <?= $item_my_cousre['product_shape'] ?></p>
                                <p>Tổng số bài học: <?= $item_my_cousre['product_expiration'] ?> bài</p>
                            </td>
                            <td>
                                <img src="/images/<?= $item_my_cousre['product_img'] ?>" alt="" style="width: 300px;float: right;">
                            </td>       
                        </tr>
                    <?php } } } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>                            