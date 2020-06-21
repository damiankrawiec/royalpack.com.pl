function menuFloatRight() {

    $('.menu ul').addClass('ml-auto');

}
function submenu() {

    $('.submenu-data .submenu').each(function() {

        var $this = $(this);

        $this.find('.nav-item').addClass('show');

        $this.find('.dropdown-menu').addClass('show');

        $this.find('.nav-link').attr('aria-expanded', 'true');

    });

}