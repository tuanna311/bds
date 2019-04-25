<div class="gb-header-center_vyhofoco">
    <div class="uni-main-menu-center_vyhofoco sticky-menu animated">
        <div class="container">
            <div class="main-menu css">
                <div class="wrapper-logo">
                    <a class="logo-default" href="index.html"><img src="images/logo.png" alt="" class="img-responsive"></a>
                    <div class="clearfix"></div>
                </div>
                <nav class="main-navigation uni-menu-text">
                    <div class="cssmenu">
                        <ul class="vk-navbar-nav vk-navbar-left nav-bar">
                            <li class="has-sub"><a href="">Home</a>
                                <ul>
                                    <li><a href="index.html">Home car dealer 1</a></li>
                                    <li><a href="01_02_car_dealer_2.html">Home car dealer 2</a></li>
                                    <li><a href="01_03_car_services.html">Home car services</a></li>
                                    <li><a href="01_04_car_rental.html">Home car retal</a></li>
                                </ul>
                            </li>
                            <li class="has-sub"><a href='#'>Page</a>
                                <ul>
                                    <li><a href="02_01_about.html">About</a></li>
                                    <li class="has-sub"><a href="">Sell a car</a>
                                        <ul>
                                            <li><a href="">Sell a car 1</a></li>
                                            <li><a href="">Sell a car 2</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="02_04_compare.html">Compare</a></li>
                                    <li><a href="02_05_contact.html">Contact</a></li>
                                    <li><a href="02_06_faq.html">FAQ's</a></li>
                                    <li><a href="02_07_404page.html">404 pages</a></li>
                                    <li><a href="02_08_comming_soon.html">Comming soon</a></li>
                                    <li class="has-sub"><a href="">Search</a>
                                        <ul>
                                            <li><a href="">Search inventory</a></li>
                                            <li><a href="">Search post</a></li>
                                            <li><a href="">Search product</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="03_01_services.html">Services</a></li>
                            <li class="has-sub home-mega-hover"><a href='#'>Inventory</a></li>
                        </ul>
                        <ul class="vk-navbar-nav vk-navbar-right nav-bar">
                            <li class="has-sub"><a href='#'>Blog</a>
                                <ul>
                                    <li><a href="05_01_blog_list.html">Blog list</a></li>
                                    <li><a href="05_02_blog_grid.html">Blog Grid</a></li>
                                    <li><a href="05_03_single_post.html">Single post</a></li>
                                </ul>
                            </li>
                            <li class="has-sub"><a href='#'>shop</a>
                                <ul>
                                    <li><a href="06_01_shop.html">Shop</a></li>
                                    <li><a href="06_02_single_product.html">Single Product</a></li>
                                    <li><a href="06_03_cart.html">Cart</a></li>
                                    <li><a href="06_04_checkout.html">Checkout</a></li>
                                </ul>
                            </li>
                            <li><a href="02_05_contact.html">Contact</a></li>
                            <li class="home-car-services-search">
                                <div class="icons-search" id="search-click">
                                    <i class="fa fa-search" aria-hidden="true"></i>

                                    <div class="search">
                                        <div class="search-frm">
                                            <form role="search" method="get" class="search-form" action="action.html">
                                                <input type="search" class="search-field" placeholder="search …" value="" name="s">
                                                <button type="button" class="close-search"><i class="fa fa-close" aria-hidden="true"></i></button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <!--shoppong cart-->
                            <li class="uni-right-menu_center_vyhofoco">
                                <div class="shopping-cart_vyhofoco">
                                    <i class="icon-basket"></i>
                                    <span class="number-item">1</span>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        //-----------------search-----------------------
        $('#search-click').on('click', function(e) {
            if( $(e.target).is('#search-click, i')){
                $('.close-search').fadeIn();
                $('.search').css('visibility', 'visible');
                $('.search-field').removeClass('none-search');
                $('.search-field').addClass('block-search');
                return false;
            }
        });
        $('.search-frm').on('click', function(e) {
            if($(e.target).is('.close-search, .close-search i')){
                $('.close-search').hide();
                $('.search').css('visibility', 'hidden');
                $('.search-field').removeClass('block-search');
                $('.search-field').addClass('none-search');
                return false;
            }
        });
    });
</script>