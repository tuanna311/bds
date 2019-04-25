<?php
    if (isset($_GET['search']) && $_GET['search'] != '') {
        $rows = $action->getSearchAdmin('user1',array('nick','first_name','last_name','email'), $_GET['search'],$trang,10,$_GET['page']);
    }else{
       
        $rows = $acc->getList("user","","","","asc",$trang, 10, "tai-khoan-user");
    }
    


?>	
    <div class="boxPageNews">
    	<div class="searchBox">
            <form action="">
                <input type="hidden" name="page" value="tai-khoan">
            	<button type="submit" class="btnSearchBox" name="">Tìm kiếm</button>
                <input type="text" class="txtSearchBox" name="search" />                	                
            </form>
        </div>
        
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>Tên tài khoản</th>
                    <th>Tên đầy đủ</th>
                    <th>Email</th>
                    <th>Số điên thoại</th>
                    <th>CMND</th>
                    <th>Ngày khởi tạo</th>
                    <th>Hoạt động</th>
                    
                </tr>
            </thead>
            <tbody>
                <?php 
                    foreach ($rows['data'] as $row) {
                    ?>
                        <tr>
                            <td><a href="javascrip:void(0)" title=""><?= $row['user_nick']; ?></a></td>
                            <td><?= $row['user_name']; ?></td>
                            <td><?= $row['user_email']?></td>
                            <td><?= $row['user_phone']?></td>
                            <td><?= $row['user_cmnd']?></td>
                            <td>
                               <!--  <?php 
                                    $acc = new action_account("VN");
                                    $rowRole = $acc->getDetail("admin_role","admin_role_id",$row['admin_role']);
                                    echo $rowRole['admin_role_name'];
                                ?> -->
                                <?= date('d-m-Y H:m:s', strtotime($row['time'])); ?>
                            </td>
                            <!-- <td><?= $row['admin_state'] == 1 ? 'Hoạt động' : 'Khóa'?></td> -->
                            <td style="float: none;"><a href="index.php?page=xoa-tai-khoan-user&id=<?= $row['user_id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=gio-chon&user_id=<?= $row['user_id'] ?>" title="" style="float: none;">Giỏ chọn</a> | <a href="/admin/template/excel/user.php?user_id=<?= $row['user_id'] ?>" style="float: none;">EXCEL</a></td>
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