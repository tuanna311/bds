<!-- Latest compiled and minified CSS -->
<script>
    $(document).ready(function(){
        $('#province').change(function(){
            id_province = $("#province").val();
            // alert(id_province);
            $.ajax({
                url:"/functions/ajax/ajax_province.php",
                type:"post",
                data:"province_id="+id_province,
                async:true,
                success: function(result){
                    $("#district").html(result);
                },
                error:function(error){
                    alert('Lỗi');
                }
            });
        return false;
        });
    });

    $(document).ready(function(){
        $('#province1').change(function(){
            id_province1 = $("#province1").val();
            // alert(id_province1);
            $.ajax({
                url:"/functions/ajax/ajax_province1.php",
                type:"post",
                data:"province_id1="+id_province1,
                async:true,
                success: function(result){
                    $("#district1").html(result);
                },
                error:function(error){
                    alert('Lỗi');
                }
            });
        return false;
        });
    });
</script>
<link rel="stylesheet" href="/plugin/selectboostrap/bootstrap-select.min.css">
<div class="gb-timkiemngay_datxanhmienbac">
    <div class="container">
        <div class="dx_heading_1_datxanhmienbac">
            <p class="dx_heading_p_datxanhmienbac">Tìm Kiếm Ngay</p>
            <p>Hơn <strong>100</strong> dự án đang bán và cho thuê hấp dẫn</p>
        </div>

        <div class="tabbable-panel">
            <div class="tabbable-line">
                <ul class="nav nav-tabs ">
                    <li class="active">
                        <a href="#tab_default_1" data-toggle="tab">dự án bán</a>
                    </li>
                    <li>
                        <a href="#tab_default_2" data-toggle="tab">Dự án cho thuê</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="tab_default_1">
                        <div class="gb-duanban-timkiem_datxanhmienbac">
                            <form action="/search-project/0" method="post">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Tìm tên dự án</label>
                                            <!-- Danh sách dự án bán -->
                                            <select class="selectpicker" data-show-subtext="true" data-live-search="true" name="ten-du-an">
                                                <option data-subtext="">Chọn dự án bán</option>
                                                <?php
                                                    $action_product = new action_product();
                                                    $list_duanban = $action_product->getProductList_byMultiLevel_orderProductId(227,'','', '', '');
                                                    foreach ($list_duanban as $item) {
                                                ?>
                                                    <option data-subtext="" value="<?= $item['product_name'] ?>"><?= $item['product_name'] ?></option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Tìm danh mục</label>
                                            <select class="selectpicker" data-show-subtext="true" data-live-search="true" name="danh-muc">
                                                <option data-subtext="" value="">Chọn danh mục</option>
                                                <?php
                                                    $list_pro_cat = $action_product->getProductCat_byProductCatIdParent(227, '');
                                                    foreach ($list_pro_cat as $item) {
                                                ?>
                                                    <option data-subtext="" value="<?= $item['productcat_id'] ?>"><?= $item['productcat_name'] ?></option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Tỉnh/ Thành phố</label>
                                            <select class="selectpicker" data-show-subtext="true" data-live-search="true" name="tinh" id="province">
                                                <option data-subtext="">Chọn tỉnh/ thành</option>
                                                <?php
                                                    $list_province = $action_product->getListProvince_byOrderASC();
                                                    foreach ($list_province as $item) {
                                                ?>
                                                    <option data-subtext="" value="<?= $item['region_id'] ?>"><?= $item['region_name'] ?></option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Quận/ Huyện</label>
                                            <select class="selectpicker" data-show-subtext="true" data-live-search="true" name="huyen" id="district">
                                                <option data-subtext="" value="">Chọn Quận/ Huyện</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Tìm theo giá</label>
                                            <select class="selectpicker" data-show-subtext="true" data-live-search="true">
                                                <option data-subtext="" value="">Chọn khoảng giá</option>
                                                <option data-subtext="" value="1">Dưới 1.5 tỷ</option>
                                                <option data-subtext="" value="2">Từ 1.5 - 2.5 tỷ</option>
                                                <option data-subtext="" value="3">Từ 2.5 - 3.5 tỷ</option>
                                                <option data-subtext="" value="4">Từ 3.5 - 5 tỷ</option>
                                                <option data-subtext="" value="5">Từ 5 - 7 tỷ</option>
                                                <option data-subtext="" value="6">Từ 7 - 9 tỷ</option>
                                                <option data-subtext="" value="7">Trên 10 tỷ</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <button class="btn btn-home-search_datxanhmienbac" type="submit" name="du-an-ban" value="s">Tìm kiếm</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="tab-pane" id="tab_default_2">
                        <div class="gb-duanchothue-timkiem_datxanhmienbac">
                            <form action="/search-project/0" method="post">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Tìm tên dự án</label>
                                            <!-- Danh sách dự án bán -->
                                            <select class="selectpicker" data-show-subtext="true" data-live-search="true" name="ten-du-an">
                                                <option data-subtext="">Chọn dự án bán</option>
                                                <?php
                                                    $action_product = new action_product();
                                                    $list_duanban = $action_product->getProductList_byMultiLevel_orderProductId(237,'','', '', '');
                                                    foreach ($list_duanban as $item) {
                                                ?>
                                                    <option data-subtext="" value="<?= $item['product_name'] ?>"><?= $item['product_name'] ?></option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Tìm danh mục</label>
                                            <select class="selectpicker" data-show-subtext="true" data-live-search="true" name="danh-muc">
                                                <option data-subtext="" value="">Chọn danh mục</option>
                                                <?php
                                                    $list_pro_cat = $action_product->getProductCat_byProductCatIdParent(237, '');
                                                    foreach ($list_pro_cat as $item) {
                                                ?>
                                                    <option data-subtext="" value="<?= $item['productcat_id'] ?>"><?= $item['productcat_name'] ?></option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Tỉnh/ Thành phố</label>
                                            <select class="selectpicker" data-show-subtext="true" data-live-search="true" name="tinh" id="province1">
                                                <option data-subtext="">Chọn tỉnh/ thành</option>
                                                <?php
                                                    $list_province = $action_product->getListProvince_byOrderASC();
                                                    foreach ($list_province as $item) {
                                                ?>
                                                    <option data-subtext="" value="<?= $item['region_id'] ?>"><?= $item['region_name'] ?></option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Quận/ Huyện</label>
                                            <select class="selectpicker" data-show-subtext="true" data-live-search="true" name="huyen" id="district1">
                                                <option data-subtext="" value="">Chọn Quận/ Huyện</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <button class="btn btn-home-search_datxanhmienbac" type="submit" name="cho-thue-du-an" value="s">Tìm kiếm</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Latest compiled and minified JavaScript -->
<script src="/plugin/selectboostrap/bootstrap-select.min.js"></script>

<script>
    $(document).ready(function () {
        $('.selectpicker').selectpicker({
            style: 'btn-info',
            size: 4
        });
    });
</script>
