function menuFloatRight() {

    $('.menu ul').addClass('ml-auto');

}
function submenu() {

    $('.submenu-data .submenu').each(function() {

        var $this = $(this);

        $this.find('.nav-item').addClass('show');

        var $a = $this.find('.nav-item').children('a');

        $this.find('.dropdown-menu').addClass('show');

        $a.attr('aria-expanded', 'true');

        submenuHref($this.parent().parent().attr('class'));

    });

}
function submenuHref($href) {

    var $hrefObject = $('.menu .nav-item a[href="' + $href + '"]');

    $hrefObject.attr('id', $href);

    $hrefObject.attr('href', '#');

}
function activeMenu() {

    var $currentUrl =  $('#url').val();

    $('.submenu-data .submenu').each(function() {

        var $this = $(this);

        $this.find('.nav-item').each(function() {

            var $this2 = $(this);

            if($this2.children('a').attr('href') === $currentUrl) {

                $('a#' + $this2.parents('.submenu').parent().parent().attr('class')).parent('li').addClass('active');

            }

            var $next = $this2.children('a').next('div');

            if($next.length > 0) {

                $next.children('a').each(function() {

                    if($(this).attr('href') === $currentUrl) {

                        $('a#' + $this2.parents('.submenu').parent().parent().attr('class')).parent('li').addClass('active');

                    }

                });

            }

        });

    });
}
function submenuDisplay() {

    $('.menu .nav-link').click(function() {

        var $this = $(this);

        var $visible = false;
        if($('.submenu-data').is(':visible') && $this.parent().hasClass('active-hover'))
            $visible = true;

        $('.submenu-data, .submenu-data > div').hide();

        $('.menu .nav-item').removeClass('active-hover');

        var $source = $('.' + $this.attr('id'));

        if($source.length > 0) {

            if($visible) {

                $('.submenu-data').hide();

                $source.hide();

                parallax('show');

            }else{

                $('.submenu-data').show();

                $source.slideDown();

                $this.parent().addClass('active-hover');

                parallax('hide');

                if($('.navbar-toggler').is(':visible')){

                    setTimeout(function () {

                        $('.navbar-toggler').trigger('click');

                    }, 1000);

                }

            }

        }

    });

}
function breadcrumb() {

    $('.im-breadcrumb a').each(function() {

        $(this).attr('href', '#');

    });
}
function parallax($action) {

    if($action === 'hide') {

        $('.parallax-mirror').hide();

        $('.parallax-window').hide();

    }
    if($action === 'show') {

        $('.parallax-mirror').show();

        $('.parallax-window').show();

    }

}
function scrollFixedMenu() {

        var $menu = $('.im-top');

        var $height = Math.round($menu.outerHeight());

        var $position = $(window).scrollTop();

        $(window).scroll(function () {

            if($('.submenu-data').is(':hidden')) {

                var $scroll = $(window).scrollTop();

                if ($scroll > $position) {
                    //down

                    $('.im-content').css('padding-top', 0);

                    $menu.removeClass('fixed');

                } else {
                    //up

                    if ($position > 100) {

                        $menu.addClass('fixed');

                        $('.im-content').css('padding-top', $height);

                    } else {

                        $('.im-content').css('padding-top', 0);

                        $menu.removeClass('fixed');

                    }

                }

                $position = $scroll;

            }else{

                $('.im-content').css('padding-top', 0);

                $menu.removeClass('fixed');

            }

        });

}

function whenParallaxChangeBreadcrumb() {

    if($('.parallax-window').length) {

        $('.im-breadcrumb').addClass('im-breadcrumb-parallax');

    }

}

function showFile() {

    if($('#ogolne-warunki-handlowe').length) {

        var $showFile = '';
        if($('#language-pl').length)
            $showFile = 'im_file-name-3';

        if($('#language-de').length)
            $showFile = 'im_file-name-4';

        if($('#language-en').length)
            $showFile = 'im_file-name-5';

        if($showFile !== '') {

            $('#' + $showFile).parents('.list-group-item').css('display', 'block');

        }

    }

}