function menuFloatRight() {

    $('.menu ul').addClass('ml-auto');

}

function menuSecondLine() {

    $('.navbar-nav > li').each(function() {

        var $this = $(this).children('a').find('section');

        var $textArray = $this.text().split(' - ');

        $this.html($textArray[0] + '<p>' + $textArray[1] + '</p>');

    });
}