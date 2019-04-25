<link href="./plugin/lightgallery/lightgallery.css" rel="stylesheet">
<div class="gb-sidebar-gallery">
    <aside class="widget">
        <h3 class="widget-title"> Thư viện ảnh</h3>
        <div class="widget-content">
            <ul id="lightgallery1">
                <li data-src="/images/gallery/1.jpg">
                    <div class="item">
                        <img src="/images/gallery/1.jpg" alt="" class="img-responsive">
                    </div>
                </li>
                <li data-src="/images/gallery/2.jpg">
                    <div class="item">
                        <img src="/images/gallery/2.jpg" alt="" class="img-responsive">
                    </div>
                </li>
                <li  data-src="/images/gallery/3.jpg">
                    <div class="item">
                        <img src="/images/gallery/3.jpg" alt="" class="img-responsive">
                    </div>
                </li>
                <li  data-src="/images/gallery/4.jpg">
                    <div class="item">
                        <img src="/images/gallery/4.jpg" alt="" class="img-responsive">
                    </div>
                </li>
                <li  data-src="/images/gallery/5.jpg">
                    <div class="item">
                        <img src="/images/gallery/5.jpg" alt="" class="img-responsive">
                    </div>
                </li>
                <li  data-src="/images/gallery/6.jpg">
                    <div class="item">
                        <img src="/images/gallery/6.jpg" alt="" class="img-responsive">
                    </div>
                </li>
                <li  data-src="/images/gallery/4.jpg">
                    <div class="item">
                        <img src="/images/gallery/4.jpg" alt="" class="img-responsive">
                    </div>
                </li>
                <li  data-src="/images/gallery/2.jpg">
                    <div class="item">
                        <img src="/images/gallery/2.jpg" alt="" class="img-responsive">
                    </div>
                </li>
                <li  data-src="/images/gallery/1.jpg">
                    <div class="item">
                        <img src="/images/gallery/1.jpg" alt="" class="img-responsive">
                    </div>
                </li>
            </ul>
        </div>
    </aside>
</div>
<script src="./plugin/lightgallery/picturefill.min.js"></script>
<script src="./plugin/lightgallery/lightgallery.js"></script>
<script src="./plugin/lightgallery/lg-pager.js"></script>
<script src="./plugin/lightgallery/lg-autoplay.js"></script>
<script src="./plugin/lightgallery/lg-fullscreen.js"></script>
<script src="./plugin/lightgallery/lg-zoom.js"></script>
<script src="./plugin/lightgallery/lg-hash.js"></script>
<script src="./plugin/lightgallery/lg-share.js"></script>

<script>
    $(document).ready(function(){
        lightGallery(document.getElementById('lightgallery1'));
    });
</script>