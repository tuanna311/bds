<div class="gb-home-couter-up">
    <div class="row">
        <div class="col-md-3 col-sm-3 col-xs-6">
            <div class="gb-home-couter-up-item">
                <p class="counter">21</p>
                <span>Chi nhánh trên toàn quốc</span>
            </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
            <div class="gb-home-couter-up-item">
                <p class="counter">8</p>
                <span>Chi nhánh tại nước ngoài</span>
            </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
            <div class="gb-home-couter-up-item">
                <p class="counter">105</p>
                <span>Đối tác Nhật Bản</span>
            </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
            <div class="gb-home-couter-up-item">
                <p class="counter">73</p>
                <span>Đối tác Hàn Quốc</span>
            </div>
        </div>
    </div>
</div>
<script src="./plugin/waypoint/jquery.waypoints.min.js"></script>
<script src="./plugin/counterup/jquery.counterup.min.js"></script>
<script>
    $(document).ready(function () {
        $('.counter').counterUp({
            delay: 10,
            time: 1000
        });
    });
</script>