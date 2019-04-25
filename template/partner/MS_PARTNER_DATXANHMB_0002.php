<link rel="stylesheet" href="./plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="./plugin/owl-carouse/owl.theme.default.min.css">
<div class="box_partner_datxanhmienbac" >
    <div class="container">
        <div class="dx_heading_1_datxanhmienbac">
            <p class="dx_heading_p_datxanhmienbac">ĐẤT XANH MIỀN BẮC & MẠNG LƯỚI</p>
            <p>Đất Xanh Miền Bắc cam kết mang tới khách hàng dịch vụ chuyên nghiệp, thuận tiện & nhanh chóng thông qua mạng lưới rộng khắp
                <br>
                trải dài trên địa bàn thủ đô Hà Nội cũng như các tỉnh phía bắc. Chúng tôi hân hạnh phục vụ quý khách hàng!</p>
        </div>
        <div class="cover_box_partner_datxanhmienbac owl-carousel owl-theme"  id="partner" >
            <div class="item partner">
                <div class="partner-item">
                    <a href="">
                        <img src="images/partner/1.png" alt="" class="imgp-responsive">
                    </a>
                </div>
            </div>
            <div class="item partner">
                <div class="partner-item">
                    <a href="">
                        <img src="images/partner/2.png" alt="" class="imgp-responsive">
                    </a>
                </div>
            </div>
            <div class="item partner">
                <div class="partner-item">
                    <a href="">
                        <img src="images/partner/3.png" alt="" class="imgp-responsive">
                    </a>
                </div>
            </div>
            <div class="item partner">
                <div class="partner-item">
                    <a href="">
                        <img src="images/partner/5.png" alt="" class="imgp-responsive">
                    </a>
                </div>
            </div>
            <div class="item partner">
                <div class="partner-item">
                    <a href="">
                        <img src="images/partner/6.png" alt="" class="imgp-responsive">
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="./plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function () {
        $('.cover_box_partner_datxanhmienbac').owlCarousel({
            loop:true,
            margin:30,
            responsiveClass:true,
            nav:false,
            autoplay:true,
            navText:[],
            dots:false,
            responsive:{
                0:{
                    items:1
                },
                600:{
                    items:6
                }
            }
        });
    });
</script>
