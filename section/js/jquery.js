$(function(){

    loadingPage();

    translation();

    setTimeout(optimizeImage, 2000);

    setTimeout(gallery, 3000);

    labelProperty('all');

    //Filter object by category in label box of each section
    $('.object-category').change(function(){

        //label, categoryId
        filterObject($(this).attr('id'), $(this).val());

    });

    $('.change-language ul li').click(function(){

        //system name of selected language
        setLanguage($(this).attr('id'));

    });

    $('.navbar-toggler').click(function() {

        let $this = $(this);

        let $children = $this.children();

        if($this.attr('aria-expanded') === 'false') {

            $children.hide();

            $children.next().fadeIn();

        }else{

            $children.fadeIn();

            $children.next().hide();

        }


    });

    $('.cookie').on('click', 'button', function(){

        setCookie();

    });

    $('.im-move').click(function(){

        //Direction (left, right), paginationData (label, number objects of one page)
        move($(this).attr('id'), $(this).parent().attr('id').split(':'));

    });

    $('.im-send').click(function() {

        var $this = $(this).parent();

        var $name = $this.find('.im-name').val();
        var $source = $this.find('.im-source').val();
        var $destination = $this.find('.im-destination').val();
        var $content = tinyMCE.activeEditor.getContent();

        $this.next().children('.im-hide').hide();

        if ($name !== '' && $source !== '' && $destination !== '' && $content !== '') {

            var $captcha = $this.find('.im-captcha').text();
            $captcha = $captcha.toLowerCase();

            var $captchaText = $this.find('.im-captcha-text').val();
            $captchaText = $captchaText.toLowerCase();

            if($captcha === $captchaText) {

                var $systemName = $('#system-name').val();

                var $sendData = {
                    "name": $name,
                    "source": $source,
                    "destination": $destination,
                    "content": $content,
                    "system": $systemName,
                    "captcha": $captcha,
                    "captchaText": $captchaText
                };

                var $attachment = $this.find('.attachment');
                if($attachment.length) {

                    if($attachment.children('input[type="file"]').prop('files').length) {

                        var $formData = new FormData();

                        var $file = $attachment.children('input[type="file"]').prop('files')[0];

                        $formData.append('file', $file);

                        $formData.append('systemName', $attachment.children('input[type="hidden"]').val());

                        $sendData['file'] = attachment($formData);

                        $sendData['path'] = $attachment.children('input[type="hidden"]').val();

                    }

                }

                sendForm($sendData, $this);

            }else{

                $this.next().children('.alert-captcha').fadeIn();

            }

        }else{

            $this.next().children('.alert0').fadeIn();

        }

    });

    editor();

    scrollEvent();

    niceSelect();

    datepicker();

    popup();

    $('.no-data').hide();

});