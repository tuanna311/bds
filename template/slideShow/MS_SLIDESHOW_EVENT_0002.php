<link rel="stylesheet" href="./plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="./plugin/owl-carouse/owl.theme.default.min.css">
<link rel="stylesheet" href="./plugin/animsition/css/animate.css">
<div class="gb-slideshow_mayxonghoi">
    <div class="gb-slideshow_mayxonghoi-slide owl-carousel owl-theme">
        <div class="item">
            <div class="gb-page-duan-item_event">
                <div class="gb-page-duan-item_event-img">
                    <a href="chi-tiet-tin-tuc"><img src="/images/duan/8.jpg" class="img-responsive"></a>
                    <div class="caption caption-large">
                        <time class="the-date">15/4/2017</time>
                    </div>
                </div>
                <div class="gb-page-duan-item_event-text">
                    <div class="gb-page-duan-item_event-title">
                        <h3><a href="chi-tiet-tin-tuc">GRAPHIC DESIGN- NGHỀ ĐANG HOT NHẤT HIỆN NAY</a></h3>
                    </div>
                    <div class="gb-page-duan-item_event-text-des">
                        <p>Let’s see what Chef Dee got that they don’t want us to eat. Eliptical talk.
                            Hammock talk come soon. Always remember in the jungle there’s...</p>
                    </div>
                </div>
                <div class="gb-page-duan-item_event-button">
                    <a href="chi-tiet-tin-tuc">
                        <button type="button" class="btn gb-btn-readmore">ĐỌC TIẾP</button>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="./plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function (){
        var owl = $('.gb-slideshow_mayxonghoi-slide');
        owl.owlCarousel({
            loop:true,
            margin:0,
            navSpeed:500,
            nav:true,
            autoplay: true,
            rewind: true,
            navText:[],
            items:1,
            responsive:{
                0:{
                    nav:false
                },
                600:{
                    nav:false
                },
                1000:{
                    loop:true,
                    items:4
                }
            }
        });
        function setAnimation ( _elem, _InOut ) {
            var animationEndEvent = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';

            _elem.each ( function () {
                var $elem = $(this);
                var $animationType = 'animated ' + $elem.data( 'animation-' + _InOut );

                $elem.addClass($animationType).one(animationEndEvent, function () {
                    $elem.removeClass($animationType);
                });
            });
        }
        owl.on('change.owl.carousel', function(event) {
            var $currentItem = $('.owl-item', owl).eq(event.item.index);
            var $elemsToanim = $currentItem.find("[data-animation-out]");
            setAnimation ($elemsToanim, 'out');
        });
        var round = 0;
        owl.on('changed.owl.carousel', function(event) {

            var $currentItem = $('.owl-item', owl).eq(event.item.index);
            var $elemsToanim = $currentItem.find("[data-animation-in]");

            setAnimation ($elemsToanim, 'in');
        });

        owl.on('translated.owl.carousel', function(event) {
            console.log (event.item.index, event.page.count);

            if (event.item.index == (event.page.count - 1))  {
                if (round < 1) {
                    round++;
                    console.log (round);
                } else {
                    owl.trigger('stop.owl.autoplay');
                    var owlData = owl.data('owl.carousel');
                    owlData.settings.autoplay = false;
                    owlData.options.autoplay = false;
                    owl.trigger('refresh.owl.carousel');
                }
            }
        });

    });
</script>