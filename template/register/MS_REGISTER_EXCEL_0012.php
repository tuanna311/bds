<div class="nav-tabs-custom gb-quanlygiaodich">
    <ul class="nav nav-tabs">
        <li class="active"><a href="#settings" data-toggle="tab">THÔNG TIN ĐƠN HÀNG</a></li>
    </ul>
    <div class="tab-content">
        <div class="active tab-pane" id="settings">
            <table class="table table-striped">
				<thead>
					<tr>
						<th>STT</th>
						<th>Tên nhà</th>
						<th>Số người theo</th>
						<th>Đã xem</th>
					</tr>
				</thead>
				<tbody>
					<?php
						$i = 1;
						foreach ($follow as $item) {
					?>
						<tr>
							<td><?= $i++ ?></td>
							<td><?= $action->getDetail('product', 'product_id', $item['product_id'])['product_name'] ?></td>
							<td><?= $action->getDetail('product', 'product_id', $item['product_id'])['follow'] ?></td>
							<td><?= $item['state']==1 ? 'Rồi' : 'Chưa' ?></td>
						</tr>
					<?php } ?>
				</tbody>
			</table>
        </div>
    </div>
</div>
<style type="text/css" media="screen">
	.nav-tabs-custom>.nav-tabs>li.active {
	    border-top-color: #167f34;
	}
	.nav-tabs-custom>.nav-tabs>li {
	    border-top: 3px solid transparent;
	    margin-bottom: -2px;
	    margin-right: 5px;
	}
</style>