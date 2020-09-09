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

            $('.' + $showFile).parents('.list-group-item').css('display', 'block');

        }

    }

}

function buttonEvent() {

    $('.object').on('click', '.show-object', function() {

        var $this = $(this);

        var $object = $('.' + $this.attr('id'));

        $object.slideToggle('normal', function() {

            if($object.is(':hidden')) {

                $this.removeClass('fa-chevron-up');

                $this.addClass('fa-chevron-down');

            }else{

                $this.removeClass('fa-chevron-down');

                $this.addClass('fa-chevron-up');

            }

        });

    });

}

function linkBox() {

    $('.im-box-simple').click(function() {

        let $this = $(this);

        if($this.find('.box-link').length) {

            let $a = $this.find('.box-link').children('a');

            if($a.attr('href') !== '')
                window.location = $a.attr('href');

        }

    });

}
function footerMenuCenter() {

    let $ul = $('.footer-menu').find('ul');

    $ul.removeClass('ml-auto');

    $ul.css('margin', '0 auto');

}