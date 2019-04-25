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
<div class="gb-locquantinhchinh hidden-sm hidden-xs">
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
      <!-- <div class="col-sm-2">
        <div class="form-group">
          <label for="sel1">Hướng nhà:</label>
          <select class="form-control" id="sel1" onchange="huong_nhaf(this)">
            <option value="0">Tất cả</option>
            <?php foreach ($huong_nha as $item) { ?>
            <option value="<?= $item['id'] ?>" <?= $_SESSION['huong_nha']==$item['id'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
            <?php } ?>
          </select>
        </div>
      </div> -->
    </div>
  </div>
  <hr>
  <div class="gb-locquantinhchinh-list">           
      <table class="table">
        <thead>
          <tr>
            <th width="10%">Ảnh</th>
            <th width="35%">Tên</th>
            <th width="45%">Mô tả</th>
            <th width="10%">Xem thêm</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($tim_kiem['data'] as $item) { ?>
          <tr>
            <td> <div class="gb-locquantinhchinh-list-img-desktop" style="height: 60px; overflow:hidden; "><img src="/images/<?= $item['product_img'] ?>" alt="" width="100%"></div></td>
            <td><?= $item['product_name'] ?></td>
            <td><?= $item['product_des'] ?></td>
            <td><a href="/<?= $item['friendly_url'] ?>" title="">Xem thêm</a></td>
          </tr>
          <?php } ?>
        </tbody>
      </table>
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