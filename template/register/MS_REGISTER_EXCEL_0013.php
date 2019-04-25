<?php 
  if (!isset($_SESSION['quan'])) {
    $_SESSION['quan'] = 0;
  }
  if (!isset($_SESSION['tai_chinh'])) {
    $_SESSION['tai_chinh'] = 0;
  }
  if (!isset($_SESSION['dien_tich'])) {
    $_SESSION['dien_tich'] = 0;
  }
  if (!isset($_SESSION['huong_nha'])) {
    $_SESSION['huong_nha'] = 0;
  }
  if (!isset($_SESSION['hien_trang'])) {
    $_SESSION['hien_trang'] = 0;
  }

  $quan = $action->getList('quan', '', '', 'id', 'asc', '', '', '');
  $tai_chinh = $action->getList('tai_chinh', '', '', 'id', 'asc', '', '', '');
  $dien_tich = $action->getList('dien_tich', '', '', 'id', 'asc', '', '', '');
  $huong_nha = $action->getList('huong_nha', '', '', 'id', 'asc', '', '', '');
  $hien_trang = $action->getList('hien_trang', '', '', 'id', 'asc', '', '', '');

  $tim_kiem = $action->getList_nha('product', '', '', 'product_id', 'desc', $trang, 5 , $_GET['page'], $_GET['page']);
?>
<div class="gb-locquantinhchinh hidden-md hidden-lg">
  <div class="gb-locquantinhchinh-filedloc">
    <div class="row">
      <div class="col-sm-3">
        <div class="form-group">
          <label for="sel1">Quận:</label>
          <select class="form-control" id="sel1" onchange="quanff(this)">
            <option value="0">Tất cả</option>
            <?php foreach ($quan as $item) { ?>
            <option value="<?= $item['id'] ?>" <?= $_SESSION['quan']==$item['id'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
            <?php } ?>
          </select>
        </div>
      </div>
      <div class="col-sm-3">
        <div class="form-group">
          <label for="sel1">Tài chính:</label>
          <select class="form-control" id="sel1" onchange="tai_chinhf(this)">
            <option value="0">Tất cả</option>
            <?php foreach ($tai_chinh as $item) { ?>
            <option value="<?= $item['id'] ?>" <?= $_SESSION['tai_chinh']==$item['id'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
            <?php } ?>
          </select>
        </div>
      </div>
      <div class="col-sm-3">
        <div class="form-group">
          <label for="sel1">Hiện trạng:</label>
          <select class="form-control" id="sel1" onchange="loaif(this)">
            <option value="0">Tất cả</option>
            <?php foreach ($hien_trang as $item) { ?>
            <option value="<?= $item['id'] ?>" <?= $_SESSION['hien_trang']==$item['id'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
            <?php } ?>
          </select>
        </div>
      </div>
      <div class="col-sm-3">
        <div class="form-group">
          <label for="sel1">Diện tích:</label>
          <select class="form-control" id="sel1" onchange="dien_tichf(this)">
            <option value="0">Tất cả</option>
            <?php foreach ($dien_tich as $item) { ?>
            <option value="<?= $item['id'] ?>" <?= $_SESSION['dien_tich']==$item['id'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
            <?php } ?>
          </select>
        </div>
      </div>
    </div>
  </div>
  <hr>
  <div class="gb-locquantinhchinh-list ">
    <?php foreach ($tim_kiem['data'] as $item) { ?>
      <div class="gb-locquantinhchinh-list-item">
        <div class="gb-locquantinhchinh-list-item-img">
          <a href="/<?= $item['friendly_url'] ?>"><img src="/images/<?= $item['product_img'] ?>" alt="" class="img-responsive"></a>
        </div>
        <div class="gb-locquantinhchinh-list-item-text">
          <h2><a href="/<?= $item['friendly_url'] ?>"><?= $item['product_name'] ?></a></h2>
          <?= $item['product_des'] ?>
          <a href="/<?= $item['friendly_url'] ?>" title="" class="btnxemthem">Xem thêm</a>
        </div>
      </div> 
      <?php } ?>
    </div>
    <div style="text-align: center;"><?= $tim_kiem['paging'] ?></div>
</div>
<script>
  function quanff (data) {
    // alert(data.value);
    var id = data.value;
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
       var out = this.responseText;
       location.reload();
      }
    };
    xhttp.open("GET", "/functions/ajax/tim_quan.php?id="+id, true);
    xhttp.send();
  }

  function tai_chinhf (data) {
    // alert(data.value);
    var id = data.value;
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
       var out = this.responseText;
       location.reload();
      }
    };
    xhttp.open("GET", "/functions/ajax/tim_taichinh.php?id="+id, true);
    xhttp.send();
  }

  function loaif (data) {
    // alert(data.value);
    var id = data.value;
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
       var out = this.responseText;
       location.reload();
      }
    };
    xhttp.open("GET", "/functions/ajax/tim_loai.php?id="+id, true);
    xhttp.send();
  }

  function dien_tichf (data) {
    // alert(data.value);
    var id = data.value;
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
       var out = this.responseText;
       location.reload();
      }
    };
    xhttp.open("GET", "/functions/ajax/tim_dientich.php?id="+id, true);
    xhttp.send();
  }

  function huong_nhaf (data) {
    // alert(data.value);
    var id = data.value;
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
       var out = this.responseText;
       location.reload();
      }
    };
    xhttp.open("GET", "/functions/ajax/tim_huongnha.php?id="+id, true);
    xhttp.send();
  }
</script>