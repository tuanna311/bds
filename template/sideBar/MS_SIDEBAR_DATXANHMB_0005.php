<div class="gb-sidebar-baivietmoinhat">
    <aside class="widget">
        <h3 class="widget-title"> bài viết mới nhất</h3>
        <div class="widget-content">
            <ul>
                <?php
                    $news = new action_news();
                    $list_news_new = $news->getListNewsNew_hasLimit(5);
                    foreach($list_news_new as $item){
                ?>
                <li>
                    <div class="item">
                        <div class="item-img">
                            <a href="/<?= $item['friendly_url'] ?>"><img src="/images/<?= $item['news_img'] ?>" alt="" class="img-responsive"></a>
                        </div>
                        <div class="item-text">
                            <h2><a href="/<?= $item['friendly_url'] ?>"><?= $item['news_name'] ?></a></h2>
                        </div>
                    </div>
                </li>
                <?php } ?>
            </ul>
        </div>
    </aside>
</div>