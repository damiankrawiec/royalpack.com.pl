function menuFloatRight() {

    $('.menu ul').addClass('ml-auto');

}
function submenu() {

    $('.submenu-data .submenu').each(function() {

        var $this = $(this);

        $this.find('.nav-item').addClass('show');

        $this.find('.dropdown-menu').addClass('show');

        $this.find('.nav-link').attr('aria-expanded', 'true');

        submenuHref($this.parent().parent().attr('class'));

    });

}
function submenuHref($href) {

    var $hrefObject = $('.menu .nav-item a[href="' + $href + '"]');

    $hrefObject.attr('id', $href);

    $hrefObject.attr('href', '#');

}
function submenuDisplay() {

    $('.menu .nav-link').click(function() {

        $('.submenu-data, .submenu-data > div').hide();

        var $source = $('.' + $(this).attr('id'));

        if($source.length > 0) {

            $('.submenu-data').show();

            $source.show();

        }

    });

}