<div class="gb-breadcrumbs_datxanhmienbac">
    <h1 class="hero-title-breadcrums_datxanhmienbac">
    	<?php
	        if($_GET['page'] == "products"){
	            echo "All product";
	        }else if($_GET['page'] == "san-pham"){
	            echo "Tất cả sản phẩm";
	        }else if($_GET['page'] == "contact"){
	            echo "Contact";
	        }else if($_GET['page'] == "lien-he"){
	            echo "Liên hệ";
	        }else if($_GET['page'] == "cart"){
	            echo "Shopping Cart";
	        }else if($_GET['page'] == "gioi-thieu-en"){
	            echo "About Us";
	        }else if($_GET['page'] == "tin-tuc"){
	            echo "Tin tức";
	        }else if($_GET['page'] == "en-chuyen-giao-cong-nghe"){
	            echo "Technology Transfer";
	        }else{
	            echo $title;
	        }
	    ?>
    </h1>
</div>
<script src="./plugin/parallax/parallax.min.js"></script>