<?php 

    $list = $action->getList('productcat','','','productcat_id','desc','','','');

    $quan = $action->getList('quan', '', '', 'id', 'asc', '', '', '');
    $tai_chinh = $action->getList('tai_chinh', '', '', 'id', 'asc', '', '', '');
    $dien_tich_loc = $action->getList('dien_tich', '', '', 'id', 'asc', '', '', '');
    $huong_nha = $action->getList('huong_nha', '', '', 'id', 'asc', '', '', '');
    $loai = array('Chọn loại', 'Đất', 'Nhà');

    $vi_tri = $action->getList('vi_tri', '', '', 'id', 'asc', '', '', '');
    $hien_trang = $action->getList('hien_trang', '', '', 'id', 'asc', '', '', '');
    $phap_ly = $action->getList('phap_ly', '', '', 'id', 'asc', '', '', '');
    $duong_rong = $action->getList('duong_rong', '', '', 'id', 'asc', '', '', '');

?>

<script src="js/previewImage.js"></script>

<script>



    function addMoreSize(self){

        var total = $(self).parents('.colorProduct').data('total');

        $.ajax({

            url: "ajax.php",

            data: {'action': 'addMoreSize', 'total': total },

            type: "post",

            success:function(html){

                $(self).parent('.size_section').append(html);

                //$("#size_section").append(html);

            }

        })

    }



    function deleteColor(val){

        $(val).parent().remove();

    }

    

    $(document).ready(function() {



        $('#addMoreSales').on('click',function(e){

            e.preventDefault();

            var total = $('.salesProduct').length;

            $.ajax({

                url: "ajax.php",

                data: {'action': 'addMoreSales', 'total': total },

                type: "post",

                success:function(html){

                    $("#sales_section").append(html);

                }

            })

        })



        $("#addMoreColor").on("click",function(e){

            e.preventDefault();

            var total = $('.colorProduct').length;

            $.ajax({

                url: "ajax.php",

                data: {'action': 'addMoreColor', 'total': total },

                type: "post",

                success:function(html){

                    $("#color_section").append(html);

                }

            })

        })



        $('#addSalePrice').on('click',function(e){

            e.preventDefault();

        })





        $("input[id=fileUpload2").previewimage({

            div: "#preview2",

            imgwidth: 90,

            imgheight: 90

        });



    });



    

</script>

<form action="" method="post" enctype="multipart/form-data" id="addProduct">

    <button class="btnAddTop" type="submit" style="position: fixed;top: 0;right: 220px;z-index: 9">Lưu</button>

    <input type="hidden" name="action" value="addProduct">

    <input type="hidden" name="table" id="table" value="product">

    <div class="rowNodeContentPage">

        <div class="leftNCP">

            <span class="titLeftNCP">Thông tin sản phẩm</span>

            <p class="subLeftNCP">Cung cấp thông tin về tên, mô tả loại sản phẩm và nhà sản xuất để phân loại sản phẩm</p>   

            <p class="titleRightNCP">Chọn ảnh đại diện cho sản phẩm</p>

            <div id="wrapper">

                <input id="fileUpload" type="file" name="fileUpload1" onchange="showImage(this)" />

                <br />

                <div id="image-holder">

                 </div>

            </div> 

        </div>

        <div class="boxNodeContentPage">



            <p class="titleRightNCP">Tên sản phẩm</p>

            <input type="text" id="title" onchange="ChangeToSlug()" class="txtNCP1" value="" name="product_name" required/>

            <!-- <p class="titleRightNCP">Danh mục</p>
            <select class="sltBV" name="productcat_id" size="10">
                <?php $action->showCategoriesSelect($list, 'productcat_parent', 0, '', 'productcat_id', 'productcat_name', 0); ?>
            </select> -->

            <p class="titleRightNCP">Danh mục</p>
            <div class="sltBV" name="productcat_id" size="10">
                <?php $action->showProductCategoriesSelect($list, 'productcat_parent', 0, $row['productcat_id'], 'productcat_id', 'productcat_name', 0, $row['productcat_ar']); ?>
            </div>

            


            <!-- <p class="titleRightNCP">Tên rút gọn</p>

            <input type="text" class="txtNCP1" name="shortName1_service3" value="<?php //echo $rowPro['shortName1_service3'];?>" /> -->

            <p class="titleRightNCP">Mô tả ngắn:</p>

            <p style="width:100%;margin-top:5px;"><textarea class="longtxtNCP2 ckeditor" id="editor0" name="product_des"><?php echo $rowPro['product_des'];?></textarea></p>

            

            <p class="titleRightNCP">Nội dung:</p>

            <p style="width:100%;margin-top:5px;"><textarea class="longtxtNCP1 ckeditor" id="editor1" name="product_content"><?php echo $rowPro['product_content'];?></textarea></p>

           

        </div>

    </div><!--end rowNodeContentPage-->



    <div class="rowNodeContentPage">

        <div class="leftNCP">

            <span class="titLeftNCP">Ảnh sản phẩm</span>

            <p class="subLeftNCP">Thiết lập ảnh sản phẩm</p>

        </div>

        <div class="boxNodeContentPage">

            <h3>Ảnh phụ sản phẩm</h3>

            <input type="file" name="fileUpload2" id="fileUpload2">

            <div class="preview2" id="preview2"> 

            </div>

        </div>

    </div><!--end rowNodeContentPage-->



    <!-- <div class="rowNodeContentPage">

        <div class="leftNCP">

            <span class="titLeftNCP">Thiết lập kích cỡ và màu sắc</span>

            <p class="subLeftNCP">Thiết lập kích cỡ và màu sắc</p>

        </div>

        <div class="boxNodeContentPage">

            <div class="rowNCP" id="color_section">

            </div>

            <a href="#" id="addMoreColor" class="addMoreColor">Thêm tùy chọn màu</a>

        </div>

    </div> --><!--end rowNodeContentPage-->

    

    <div class="rowNodeContentPage">

        <div class="leftNCP">

            <span class="titLeftNCP">Quản lý kho và tùy chọn</span>

            <p class="subLeftNCP">Bạn có thể cấu hình và quản lý kho cho từng loại của sản phẩm này</p>

        </div>

        <div class="boxNodeContentPage">

            <div class="rowNCP">

                <div class="subColContent">

                    <p class="titleRightNCP">Giá chào</p>

                    <input type="text" class="txtNCP1" value="<?php echo $rowPro['product_price'];?>" name="product_price"/>

                </div>                                      

                <div class="subColContent" >

                    <p class="titleRightNCP">Giá bán</p>

                    <input type="text" class="txtNCP1" value="<?php echo $rowPro['product_price_sale'];?>" name="product_price_sale"/>

                </div>         

                

                

            </div><!--end rowNCP-->

            <div class="rowNCP">

                <div class="subColContent">

                    <p class="titleRightNCP">Ngày chào</p>

                    <input type="date" class="txtNCP1" value="<?php echo $rowPro['product_code'];?>" name="product_code"/>

                </div>       

                <div class="subColContent">

                    <p class="titleRightNCP">Ngày bán</p>

                    <input type="date" class="txtNCP1" value="<?php echo $row['product_ngayban'];?>" name="product_ngayban"/>

                </div>                               

                <!-- <div class="subColContent" >

                    <p class="titleRightNCP">Xuất xứ</p>

                    <input type="text" class="txtNCP1" value="<?php echo $rowPro['product_original'];?>" name="product_original"/>

                </div> -->           

                <!-- <div class="subColContent" >

                    <p class="titleRightNCP">Mẫu mã, kiểu dáng</p>

                    <input type="text" class="txtNCP1" value="<?php echo $rowPro['product_shape'];?>" name="product_shape"/>

                </div>   -->  

            </div><!--end rowNCP-->

            <div class="rowNCP">

            	<div class="subColContent">

	            	<p class="titleRightNCP">Trạng thái nhà</p>
		            <select name="trang_thai" class="txtNCP1">
		                <option value="1">Đã bán</option>
		                <option value="2">Đang bán</option>
		                <option value="3">Dừng bán</option>
		            </select>

		        </div>

		        <div class="subColContent" >

                    <p class="titleRightNCP">Địa chỉ</p>

                    <input type="text" class="txtNCP1" value="<?php echo $row['product_address'];?>" name="product_address"/>

                </div>

                <!-- <div class="subColContent">

                    <p class="titleRightNCP">Kích cỡ</p>

                    <input type="text" class="txtNCP1" value="<?php echo $rowPro['product_size'];?>" name="product_size"/>

                </div>                                      

                <div class="subColContent" >

                    <p class="titleRightNCP">Đóng gói</p>

                    <input type="text" class="txtNCP1" value="<?php echo $rowPro['product_package'];?>" name="product_package"/>

                </div>  -->

                <!-- <div class="subColContent">

                    <p class="titleRightNCP">Hãng sản xuất</p>

                    <input type="text" class="txtNCP1" value="<?php echo $rowPro['product_expiration'];?>" name="product_expiration"/>

                </div>

                <div class="subColContent" >

                    <p class="titleRightNCP">Xuất xứ</p>

                    <input type="text" class="txtNCP1" value="<?php echo $rowPro['product_material'];?>" name="product_material"/>

                </div>  -->               

            </div><!--end rowNCP-->

            <!-- <div class="rowNCP">

                <div class="subColContent">

                    <p class="titleRightNCP">Giao hàng</p>

                    <input type="text" class="txtNCP1" value="<?php echo $rowPro['product_delivery'];?>" name="product_delivery"/>

                </div>                                      

                <div class="subColContent" >

                    <p class="titleRightNCP">Thời gian giao hàng</p>

                    <input type="text" class="txtNCP1" value="<?php echo $rowPro['product_delivery_time'];?>" name="product_delivery_time"/>

                </div>               

            </div> --><!--end rowNCP-->

            <!-- <div class="rowNCP">

                <div class="subColContent">

                    <p class="titleRightNCP">Hình thức thanh toán</p>

                    <input type="text" class="txtNCP1" value="<?php echo $rowPro['product_payment'];?>" name="product_payment"/>

                </div>                                      

                           

            </div> --><!--end rowNCP-->

        </div>

    </div>

    <div class="rowNodeContentPage">

        <div class="leftNCP">

            <span class="titLeftNCP">Quản lý Thông tin nhà</span>

            <p class="subLeftNCP">Bạn có thể cấu hình và quản lý kho cho từng loại của sản phẩm này</p>

        </div>

        <div class="boxNodeContentPage">

            <div class="rowNCP">

                <div class="subColContent">

                    <p class="titleRightNCP">Quận</p>

                    <select name="quan" class="txtNCP1">
                        <option value="0">Chọn quận</option>
                        <?php foreach ($quan as $item) { ?>
                        <option value="<?= $item['id'] ?>"><?= $item['name'] ?></option>
                        <?php } ?>
                    </select>

                </div>                                      

                <div class="subColContent" >

                    <p class="titleRightNCP">Tài chính</p>

                    <select name="tai_chinh" class="txtNCP1">
                        <option value="0">Chọn tài chính</option>
                        <?php foreach ($tai_chinh as $item) { ?>
                        <option value="<?= $item['id'] ?>"><?= $item['name'] ?></option>
                        <?php } ?>
                    </select>

                </div>           

            </div><!--end rowNCP-->

            <div class="rowNCP">

            	<div class="subColContent">

                    <p class="titleRightNCP">Diện tích thực</p>

                    <input type="text" class="txtNCP1" name="dien_tich"/>

                </div>

                <div class="subColContent">

                    <p class="titleRightNCP">Diện tích lọc</p>

                    <select name="dien_tich_loc" class="txtNCP1">
                        <option value="0">Chọn diện tích</option>
                        <?php foreach ($dien_tich_loc as $item) { ?>
                        <option value="<?= $item['id'] ?>"><?= $item['name'] ?></option>
                        <?php } ?>
                    </select>

                </div>                                      

                           

            </div><!--end rowNCP-->

            <div class="rowNCP">

                <div class="subColContent">

                    <p class="titleRightNCP">Loại</p>

                    <select name="loai" class="txtNCP1">
                        <?php foreach ($loai as $k => $item) { ?>
                        <option value="<?= $k ?>"><?= $item ?></option>
                        <?php } ?>
                    </select>

                </div>                 

                <div class="subColContent" >

                    <p class="titleRightNCP">Hướng nhà</p>

                    <select name="huong_nha" class="txtNCP1">
                        <option value="0">Chọn hướng nhà</option>
                        <?php foreach ($huong_nha as $item) { ?>
                        <option value="<?= $item['id'] ?>"><?= $item['name'] ?></option>
                        <?php } ?>
                    </select>

                </div>                     

            </div><!--end rowNCP-->

            <div class="rowNCP">

                <div class="subColContent">

                    <p class="titleRightNCP">Vị trí</p>

                    <select name="vi_tri" class="txtNCP1">
                        <option value="0">Chọn vị trí</option>
                        <?php foreach ($vi_tri as $item) { ?>
                        <option value="<?= $item['id'] ?>"><?= $item['name'] ?></option>
                        <?php } ?>
                    </select>

                </div>        

                <div class="subColContent" >

                    <p class="titleRightNCP">Hiện trạng</p>

                    <select name="hien_trang" class="txtNCP1">
                        <option value="0">Chọn hiện trạng</option>
                        <?php foreach ($hien_trang as $item) { ?>
                        <option value="<?= $item['id'] ?>"><?= $item['name'] ?></option>
                        <?php } ?>
                    </select>

                </div>

            </div><!--end rowNCP-->

            <div class="rowNCP">

                <div class="subColContent">

                    <p class="titleRightNCP">Pháp lý</p>

                    <select name="phap_ly" class="txtNCP1">
                        <option value="0">Chọn pháp lý</option>
                        <?php foreach ($phap_ly as $item) { ?>
                        <option value="<?= $item['id'] ?>"><?= $item['name'] ?></option>
                        <?php } ?>
                    </select>

                </div>        

                <div class="subColContent" >

                    <p class="titleRightNCP">Đường rộng</p>

                    <select name="duong_rong" class="txtNCP1">
                        <option value="0">Chọn đường rộng</option>
                        <?php foreach ($duong_rong as $item) { ?>
                        <option value="<?= $item['id'] ?>"><?= $item['name'] ?></option>
                        <?php } ?>
                    </select>

                </div>

            </div><!--end rowNCP-->

            <div class="rowNCP">

                <div class="subColContent">

                    <p class="titleRightNCP">Mặt tiền</p>

                    <input type="text" class="txtNCP1" name="mat_tien"/>

                </div>                                      

                <div class="subColContent" >

                    <p class="titleRightNCP">Liên hệ</p>

                    <input type="text" class="txtNCP1" name="lien_he"/>

                </div>           

            </div><!--end rowNCP-->

            <div class="rowNCP">

                <div class="subColContent">

                    <p class="titleRightNCP">Tên đường</p>

                    <input type="text" class="txtNCP1" name="ten_duong"/>

                </div>                                      

            </div><!--end rowNCP-->

        </div>

    </div>

    <div class="rowNodeContentPage">

        <div class="leftNCP">

            <span class="titLeftNCP">Tối ưu SEO</span>

            <p class="subLeftNCP">Thiết lập thẻ tiêu đề, thẻ mô tả, đường dẫn. Những thông tin này xác định cách danh mục xuất hiện trên công cụ tìm kiếm.</p>                

        </div>

        <div class="boxNodeContentPage">

            <div>

                <p class="titleRightNCP">Tiêu đề trang</p>

                <p class="subRightNCP"> <strong class="text-character"></strong>/70 ký tự</p>

                <input type="text" class="txtNCP1" placeholder="Điều khoản dịch vụ" name="title_seo" id="title_seo" value="<?php echo $rowPro['title_seo'];?>" onkeyup="countChar(this)"/>

            </div>

            <div>

                <p class="titleRightNCP">Thẻ mô tả</p>

                <p class="subRightNCP"><strong class="text-character"></strong>/160 ký tự</p>

                <textarea class="longtxtNCP2" name="des_seo" onkeyup="countChar(this)"><?php echo $rowPro['des_seo'];?></textarea>

            </div>

            <p class="titleRightNCP">Đường dẫn</p>

            <div class="coverLinkNCP">

                <p class="nameLinkNCP"><?php echo $_SERVER['SERVER_NAME']?>/</p>

                <div id="slug">

                    <input type="text" id="slug1" class="txtLinkNCP" name="friendly_url" value="<?php echo $rowPro['friendly_url'];?>" />     

                </div>

            </div>

            <p class="titleRightNCP">Keyword</p>

            <input type="text" class="txtNCP1" placeholder="Nhập keyword" name="keyword" value="<?php echo $rowPro['keyword'];?>"/>

        </div>

    </div><!--end rowNodeContentPage-->

    <div class="rowNodeContentPage">

        <div class="leftNCP">

            <span class="titLeftNCP">Trạng thái</span>

        </div>

        <div class="boxNodeContentPage">

            <div>

                <label class="selectCate">

                    <input type="checkbox" value="1" name="product_new" <?= $rowPro['product_new'] == 1 ? 'checked' : '' ?>>Sản phẩm mới

                </label>

            </div>

            <div>

                <label class="selectCate">

                    <input type="checkbox" value="1" name="product_hot" <?= $rowPro['product_hot'] == 1 ? 'product_hot' : '' ?>>Sản phẩm hot

                </label>

            </div>

            <div>

                <label class="selectCate">

                    <input type="checkbox" value="1" name="state" <?= $rowPro['state'] == 1 ? 'checked' : '' ?>>Trạng thái hiển thị

                </label>

            </div>

            

        </div>

    </div><!--end rowNodeContentPage-->

    

    <button type="submit" class="btn btnSave">Lưu</button>

            

</form>