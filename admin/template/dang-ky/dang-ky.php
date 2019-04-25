<?php
    if (isset($_GET['search']) && $_GET['search'] != '') {
        $rows = $action->getSearchAdmin('regMember',array('regMember_mail'), $_GET['search'],$trang,30);
    }else{
       $rows = $action->getList('regMember','','','regMember_id','desc',$trang,30,'dang-ky');//var_dump($rows);
    }
?>
    <div class="boxPageNews">
        <div class="searchBox">
            <form action="">
                <input type="hidden" name="page" value="dang-ky">
                <button type="submit" class="btnSearchBox" name="">Tìm kiếm</button>
                <input type="text" class="txtSearchBox" name="search" />                                    
            </form>
        </div>
        
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Họ Tên</th>
                    <th>Địa chỉ Email</th>
                    <th>Số điện thoại</th>
                    <th>Ngày đăng ký</th>
                    <th>Hoạt động</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    $i = 1;
                    foreach ($rows['data'] as $row) {
                    ?>
                        <tr>
                            <th><?= $i++ ?></th>
                            <td><?= $row['regMember_name']?></td>
                            <td><a href="index.php?page=sua-dang-ky&id=<?= $row['regMember_id']; ?>" title=""><?= $row['regMember_mail']; ?></a></td>
                            <td><?= $row['regMember_phone']?></td>
                            <td><?= $row['regMember_createdDate']?></td>
                            <td style="float: none;"><a href="index.php?page=xoa-dang-ky&id=<?= $row['regMember_id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a></td>
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
    <p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ GoldBridge Việt Nam</p>             