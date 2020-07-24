$(function(){

    menuFloatRight();

    //show submenu in submenu
    submenu();

    //show submenu when click link from main menu (submenu must be defined)
    submenuDisplay();

    //Active main menu when submenu is activated
    activeMenu();

    //Remove from breadcrumb href
    breadcrumb();

    scrollFixedMenu();

    whenParallaxChangeBreadcrumb();

    showFile();

    buttonEvent();

});