<?php
    $rows = $acc->getList("follow","user_id",$_GET['user_id'],"id","asc",$trang, 20, "gio-chon");//var_dump($rows);
?>	
    <div class="boxPageNews">
        <!-- <h1><a href="index.php?page=them-thuong-hieu">Thêm</a></h1> -->
        <p><a href="index.php?page=tai-khoan-user" title="">Quay lại</a></p>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên nhà</th>
                    <th>Đã xem</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    $d = 0;
                    foreach ($rows['data'] as $row) {
                        $d++;
                    ?>
                        <tr>
                            <td><?= $d ?></td>
                            <td><?= $action->getDetail('product', 'product_id', $row['product_id'])['product_name'] ?></td>
                            <td>
                                <input type="checkbox" name="" onclick="check_follow(<?= $row['id'] ?>)" <?= $row['state']!=0 ? 'checked' : '' ?> >
                            </td>
                            <!-- <td style="float: none;"><a href="index.php?page=xoa-thuong-hieu&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-thuong-hieu&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td> -->
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
<script type="text/javascript">
    function check_follow (id) {
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             // document.getElementById("demo").innerHTML = this.responseText;
            }
          };
          xhttp.open("GET", "/functions/ajax/check_follow.php?id="+id, true);
          xhttp.send();
    }
</script>