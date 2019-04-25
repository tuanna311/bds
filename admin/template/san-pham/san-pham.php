<?php
    if (isset($_GET['search']) && $_GET['search'] != '') {
        $rows = $action->getSearchAdmin('product',array('product_name','product_code'), $_GET['search'],$trang,20,$_GET['page']);
    }else{
        $rows = $action->getList_proadmin('product','','','product_id','desc',$trang,20,'san-pham');
    }

    $quan = $action->getList('quan', '', '', 'id', 'asc', '', '', '');
    $tai_chinh = $action->getList('tai_chinh', '', '', 'id', 'asc', '', '', '');
    $dien_tich = $action->getList('dien_tich', '', '', 'id', 'asc', '', '', '');
    $huong_nha = $action->getList('huong_nha', '', '', 'id', 'asc', '', '', '');
    $hien_trang = $action->getList('hien_trang', '', '', 'id', 'asc', '', '', '');
    $trang_thai_show = array('', 'Đã bán', 'Đang bán', 'Dừng bán');

    $uri_trangthai = isset($_GET['trang_thai']) ? $_GET['trang_thai'] : '0';
    $uri_quan = isset($_GET['quan']) ? $_GET['quan'] : '0';
    $uri_taichinh = isset($_GET['tai_chinh']) ? $_GET['tai_chinh'] : '0';
    $uri_hientrang = isset($_GET['hien_trang']) ? $_GET['hien_trang'] : '0';
    $uri_dientich = isset($_GET['dien_tich']) ? $_GET['dien_tich'] : '0';
    $uri_huongnha = isset($_GET['huong_nha']) ? $_GET['huong_nha'] : '0';
?>  	
<div class="boxPageNews">
	<div class="searchBox">
        <form action="">
            <input type="hidden" name="page" value="san-pham">
            <button type="submit" class="btnSearchBox" name="">Tìm kiếm</button>
            <input type="text" class="txtSearchBox" name="search" />                                  
        </form>
    </div>
    <?php 
    if (isset($_GET['trang_thai']) || isset($_GET['quan']) || isset($_GET['tai_chinh']) || isset($_GET['hien_trang']) || isset($_GET['dien_tich'])) { 
        $url = 'xuat=excel';
        if (isset($_GET['trang_thai'])) {
            $url .= "&trang_thai=".$_GET['trang_thai'];
        }
        if (isset($_GET['quan'])) {
            $url .= "&quan=".$_GET['quan'];
        }
        if (isset($_GET['tai_chinh'])) {
            $url .= "&tai_chinh=".$_GET['tai_chinh'];
        }
        if (isset($_GET['hien_trang'])) {
            $url .= "&hien_trang=".$_GET['hien_trang'];
        }
        if (isset($_GET['dien_tich'])) {
            $url .= "&dien_tich=".$_GET['dien_tich'];
        }
        // if (isset($_GET['huong_nha'])) {
        //     $url .= "&huong_nha=".$_GET['huong_nha'];
        // }
    ?>
        <a href="/admin/template/excel/xls.php?<?= $url ?>" style="float: right;">EXCEL</a>
    <?php } ?>
    <div class="searchBox" style="border: 0;">
        <form action="">
            <input type="hidden" name="page" value="san-pham">
            
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-2">
                        <select name="trang_thai" class="form-control">
                            <option value="0">Tất cả trạng thái</option>
                            <option value="1" <?= $uri_trangthai==1 ? 'selected' : '' ?> >Đã bán</option>
                            <option value="2" <?= $uri_trangthai==2 ? 'selected' : '' ?> >Đang bán</option>
                            <option value="3" <?= $uri_trangthai==3 ? 'selected' : '' ?> >Dừng bán</option>
                        </select>  
                    </div>
                    <div class="col-sm-2">
                        <select name="quan" class="form-control">
                            <option value="0">Tất cả quận</option>
                            <?php foreach ($quan as $item) { ?>
                            <option value="<?= $item['id'] ?>" <?= $uri_quan==$item['id'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
                            <?php } ?>
                        </select>   
                    </div>
                    <div class="col-sm-2">
                        <select name="tai_chinh" class="form-control">
                            <option value="0">Tất cả tài chính</option>
                            <?php foreach ($tai_chinh as $item) { ?>
                            <option value="<?= $item['id'] ?>" <?= $uri_taichinh==$item['id'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
                            <?php } ?>
                        </select>   
                    </div>
                    <div class="col-sm-2">
                        <select name="hien_trang" class="form-control">
                            <option value="0">Tất cả hiện trạng</option>
                            <?php foreach ($hien_trang as $item) { ?>
                            <option value="<?= $item['id'] ?>" <?= $uri_hientrang==$item['id'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
                            <?php } ?>
                        </select>   
                    </div>
                    <div class="col-sm-2">
                        <select name="dien_tich" class="form-control">
                            <option value="0">Tất cả diện tích</option>
                            <?php foreach ($dien_tich as $item) { ?>
                            <option value="<?= $item['id'] ?>" <?= $uri_dientich==$item['id'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
                            <?php } ?>
                        </select>   
                    </div>
                    <!-- <div class="col-sm-2">
                        <select name="huong_nha" class="form-control">
                            <option value="0">Tất cả hướng nhà</option>
                            <?php foreach ($huong_nha as $item) { ?>
                            <option value="<?= $item['id'] ?>" <?= $uri_huongnha==$item['id'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
                            <?php } ?>
                        </select>   
                    </div> -->
                    <div class="col-sm-2">
                        <button type="submit" class="btn btn-primary" name="" style="width: 100%;margin-top: 0;">Lọc</button>
                    </div>
                </div>  
            </div>                          
        </form>
    </div>

    <table class="table table-condensed table-hover">
        <thead>
            <tr>
                <th>Trạng thái</th>
                <th>Tên nhà</th>
                <th>Địa chỉ</th>
                <th>Quận</th>
                <th>Tên đường</th>
                <th>Follow</th>
                <th>Liên hệ</th>
            </tr>
        </thead>
        <tbody>
            <?php 
                foreach ($rows['data'] as $key => $row) {
                ?>
                    <tr>
                        <td><?= $trang_thai_show[$row['trang_thai']]; ?></td>
                        <td><a href="index.php?page=sua-san-pham&id=<?= $row['product_id']; ?>" title=""><?= $row['product_name']; ?></a></td>
                        <td><?= $row['product_address']; ?></td>
                        <td>
                            <?= $row['quan']!=0 ? $action->getDetail('quan', 'id', $row['quan'])['name'] : '' ?>
                        </td>
                        <td><?= $row['ten_duong'] ?></td>
                        <td><?= $row['follow'] ?></td>
                        <td><?= $row['lien_he'] ?></td>
                    </tr>
                <?php
                }
            ?>
        </tbody>
    </table>
	
    <div class="paging">             
    	<?= $rows['paging'] ?>
	</div>
</div>
<?php  ?>
