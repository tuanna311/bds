<div class="prices_datxanhmienbac-list" style="margin: 10px 0;">
	<?php if ($row['product_price_sale']=='') { ?>
	<p class="prices_datxanhmienbac"><span>Giá: </span> <?= $row['product_price'] ?> tỷ</p>
	<?php } else { ?>
	<div class="row">
		<div class="col-sm-3">
			<p class="prices_datxanhmienbac"><del><span>Giá: </span> <?= $row['product_price'] ?></del>  tỷ</p>
		</div>
		<div class="col-sm-3">
			<p class="prices_datxanhmienbac"><span>Giá: </span> <?= $row['product_price_sale'] ?>  tỷ</p>
		</div>
	</div>
	<?php } ?>
</div>