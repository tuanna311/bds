<!-- Modal -->
<div id="dangnhapmodal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Đăng nhập</h4>
      </div>
      <div class="modal-body">
        <form action="" method="post" id="dangnhapform" onsubmit="return dangnhapf()">
          <div class="form-group">
            <label for="nick">Tên đăng nhập/Số điên thoại:</label>
            <input type="text" class="form-control" id="nick" name="nick" onchange="check_loginf()" onkeyup="check_loginf()" required>
            <input type="hidden" name="check_login" id="check_login">
          </div>
          <div class="form-group">
            <label for="pwd">Mật khẩu:</label>
            <input type="password" class="form-control" id="pwd" name="pass" onchange="check_loginf()" onkeyup="check_loginf()" required>
          </div>
          <div class="checkbox">
            <label><input type="checkbox" name="rememberme"> Nhớ tài khoản</label>
          </div>
          <button type="submit" class="btn btn-default" name="login" onmouseover="check_loginf()">Đăng nhập</button>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
<script>
  function dangnhapf () {
    var login = document.forms['dangnhapform']['check_login'].value;

    if (login != 'true') {
      alert('Thông tin đăng nhập không đúng.');
      return false;
    }
  }

  function check_loginf () {
    var name = document.forms['dangnhapform']['nick'].value;
    var pass = document.forms['dangnhapform']['pass'].value;
    // alert(name+pass);

    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
       var out = this.responseText;
       document.getElementById("check_login").value = out;
      }
    };
    xhttp.open("GET", "/functions/ajax/check_login.php?name="+name+"&pass="+pass, true);
    xhttp.send();
  }
</script>