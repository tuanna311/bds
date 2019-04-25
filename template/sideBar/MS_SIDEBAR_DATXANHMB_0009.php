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
</script>
<link rel="stylesheet" href="/plugin/selectboostrap/bootstrap-select.min.css">
<div class="gb-sidebar-boloc_datxanhmienbac">
    <aside class="widget">
        <h3 class="widget-title">Bộ lọc</h3>
        <div class="widget-content">
            <div class="gb-sidebar-boloc_datxanhmienbac_body">
                <form action="/search-project/0" method="post">
                    <div class="form-group">
                        <label>Tìm tên dự án</label>
                        <select class="selectpicker" data-show-subtext="true" data-live-search="true" name="ten-du-an">
                            <option data-subtext="">Chọn dự án bán</option>
                            <?php
                                $action_product = new action_product();
                                $list_product_all = $action_product->getListProductAll_byOrderASC();
                                foreach ($list_product_all as $item) {
                            ?>
                                <option data-subtext="" value="<?= $item['product_name'] ?>"><?= $item['product_name'] ?></option>
                            <?php } ?>
                            
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Tìm danh mục</label>
                        <select class="selectpicker" data-show-subtext="true" data-live-search="true" name="danh-muc">
                            <option data-subtext="" value="">Chọn danh mục</option>

                            <?php
                                $action_product = new action_product();
                                $list_productcat_all = $action_product->getListProductCat_byOrderASC();
                                foreach ($list_productcat_all as $item) {
                            ?>
                                <option data-subtext="" value="<?= $item['productcat_id'] ?>"><?= $item['productcat_name'] ?></option>
                            <?php } ?>
                        </select>
                    </div>
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
                    <div class="form-group">
                        <label>Quận/ Huyện</label>
                        <select class="selectpicker" data-show-subtext="true" data-live-search="true" name="huyen" id="district">
                            <option data-subtext="" value="">Chọn Quận/ Huyện</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <button class="btn btn-home-search_datxanhmienbac" name="search-project" value="s" type="submit">Tìm kiếm</button>
                    </div>
                </form>
            </div>
        </div>
    </aside>
</div>
<script src="/plugin/selectboostrap/bootstrap-select.min.js"></script>

<script>
    $(document).ready(function () {
        $('.selectpicker').selectpicker({
            style: 'btn-info',
            size: 4
        });
    });
</script>