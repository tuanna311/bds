<nav class="gb-main-menu" >
    <div class="main-navigation uni-menu-text">
        <div class="cssmenu">
            <?php
                $list_menu = $menu->getListMainMenu_byOrderASC();
                $menu->showMenu_byMultiLevel_mainMenuBDS($list_menu,0,$lang,0);
            ?>
        </div>
    </div>
</nav>