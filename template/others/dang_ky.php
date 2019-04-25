<?php 
  $dangky_city = $action->getList('city', '', '', 'id', 'asc', '', '', '');
?>
<!-- Modal -->
<div id="dangkymodal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Đăng ký tài khoản</h4>
      </div>
      <div class="modal-body">
        <form action="" method="post" id="dang-ky-modal" onsubmit="return validate_dangky()">
          <div class="form-group">
            <label for="username">Tên đăng nhập <span style="color:red;">*</span>:</label>
            <input type="text" class="form-control" id="username" name="username" onchange="check_nick()" onkeyup="check_nick()" required>
            <input type="hidden" name="check_n" id="check_n">
          </div>
          <div class="form-group">
            <label for="phone">Số điện thoại <span style="color:red;">*</span>:</label>
            <input type="number" class="form-control" id="phone" name="phone" onchange="check_phone()" onkeyup="check_phone()" required>
            <input type="hidden" name="check_p" id="check_p">
          </div>
          <div class="form-group">
            <label for="pass1">Mật khẩu <span style="color:red;">*</span>:</label>
            <input type="password" class="form-control" id="pass1" name="pass1" required>
          </div>
          <div class="form-group">
            <label for="pass2">Nhập lại mật khẩu <span style="color:red;">*</span>:</label>
            <input type="password" class="form-control" id="pass2" name="pass2" required>
          </div>
          <div class="form-group">
            <label for="name">Tên đầy đủ <span style="color:red;">*</span>:</label>
            <input type="text" class="form-control" id="name" name="name" required>
          </div>
          <div class="form-group">
            <label for="email">Địa chỉ email:</label>
            <input type="email" class="form-control" id="email" name="email" >
          </div>
          <div class="form-group">
            <label for="birthday">Ngày sinh:</label>
            <input type="date" class="form-control" id="birthday" name="birthday">
          </div>
          <div class="form-group">
            <label class="radio-inline">
              <input type="radio" name="sex" value="1" required>Nam
            </label>
            <label class="radio-inline">
              <input type="radio" name="sex" value="0">Nữ
            </label>
          </div>
          <div class="form-group">
            <label for="city">Tỉnh/Thành:</label>
            <select class="form-control" id="city" name="city" onchange="cityf(this)">
              <option value="0">Tỉnh/Thành</option>
              <?php foreach ($dangky_city as $item) { ?>
              <option value="<?= $item['id'] ?>"><?= $item['name'] ?></option>
              <?php } ?>
            </select>
          </div>
          <div class="form-group">
            <label for="quan">Quận/Huyên:</label>
            <select class="form-control" id="quan" name="quan" onchange="quanf(this)">
              <option value="0">Quận/Huyện</option>
            </select>
          </div>
          <div class="form-group">
            <label for="phuong">Phường/Xã:</label>
            <select class="form-control" id="phuong" name="phuong">
              <option value="0">Phường/Xã</option>
            </select>
          </div>
          <div class="form-group">
            <label class="radio-inline">
              <input type="radio" name="type" value="0" checked>Cá nhân
            </label>
            <label class="radio-inline">
              <input type="radio" name="type" value="1">Công ty
            </label>
          </div>
          <div class="form-group">
            <label for="cmnd">Mã số thuế cá nhân/ CMND <span style="color:red;">*</span>:</label>
            <input type="text" class="form-control" id="cmnd" name="cmnd" required>
          </div>
          <button type="submit" name="register" class="btn btn-default" onmouseover="check_all()">Đăng ký</button>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
<script>
  function validate_dangky () {
    var ok = 'true';
    var pass1 = document.forms['dang-ky-modal']['pass1'].value;
    var pass2 = document.forms['dang-ky-modal']['pass2'].value;
    var nick = document.forms['dang-ky-modal']['username'].value;
    var phone_check = document.forms['dang-ky-modal']['check_p'].value;
    var nick_check = document.forms['dang-ky-modal']['check_n'].value;
    // alert(nick);

    var re = new RegExp("^([a-z0-9\-\_]{6,})$");
    if (!re.test(nick)) {
        alert('Tên đăng nhập không hợp lệ. Tên từ 6 ký tự chở lên, gồm chữ hoặc số nhưng không chứa dấu cách và ký tự đặc biệt');
        return false;
    }
    
    if (pass1 != pass2) {
      alert('Mật khẩu không khớp.');
      return false;
    } else {}

    if (phone_check == 'false') {
      alert('Số điện thoại đã tồn tại.');
      return false;
    }

    if (nick_check == 'false') {
      alert('Tên đăng nhập đã tồn tại.');
      return false;
    }
  }

  function check_phone () {
    var phone = document.forms['dang-ky-modal']['phone'].value;

    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
       var out = this.responseText;
       document.getElementById("check_p").value = out;
      }
    };
    xhttp.open("GET", "/functions/ajax/check_phone.php?phone="+phone, true);
    xhttp.send();
  }

  function check_nick () {
    var nick = document.forms['dang-ky-modal']['username'].value;

    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
       var out = this.responseText;
       document.getElementById("check_n").value = out;
      }
    };
    xhttp.open("GET", "/functions/ajax/check_nick.php?nick="+nick, true);
    xhttp.send();
  }

  function cityf (data) {
    var id = data.value;

    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
       var out = this.responseText;
       document.getElementById("quan").innerHTML = out;
      }
    };
    xhttp.open("GET", "/functions/ajax/list_quan.php?id="+id, true);
    xhttp.send();
  }

  function quanf (data) {
    var id = data.value;

    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
       var out = this.responseText;
       document.getElementById("phuong").innerHTML = out;
      }
    };
    xhttp.open("GET", "/functions/ajax/list_phuong.php?id="+id, true);
    xhttp.send();
  }

  function check_all () {
    // alert('all');
    check_nick();
    check_phone();
  }
</script>