// MENU RESPONSIVE
jQuery(document).ready(function() {

    $('.nav-res-btn').click(function() {
        $('.nav-res').slideToggle("fast");
    });

});

// SCROLL MENU
jQuery(document).ready(function() {

    var nav = $('.nav');

    $(window).scroll(function () {
        if ($(this).scrollTop() > 400) {
            nav.addClass("f-nav");
            $('.main-logo img').show()
        } else {
            nav.removeClass("f-nav");
            $('.main-logo img').hide()
        }
    });

});

// SMOOTH SCROLL
jQuery(document).ready(function() {
    $('a.smooth').on('click', function(e) {
        var link = $(this);
        var anchor  = link.attr('href');
        $('html, body').stop().animate({
            scrollTop: $(anchor).offset().top
        }, 1000);
    });
});

// BG VIDEO
jQuery(document).ready(function() {

    $('video#bgvideo').on("loadedmetadata", scaleVideo);
    $(window).on("resize", scaleVideo);

    function scaleVideo() {

        // Got the window height and width anda saved them as variables
        var windowHeight = $(window).height();
        var windowWidth = $(window).width();

        // Got the video width and video height
        var videoNativeWidth = $('video#bgvideo')[0].videoWidth;
        var videoNativeHeight = $('video#bgvideo')[0].videoHeight;

        // Got the scale factors
        var heightScaleFactor = windowHeight / videoNativeHeight;
        var widthScaleFactor = windowWidth / videoNativeWidth;

        // Got the highest scale factor
        if (widthScaleFactor > heightScaleFactor) {
            var scale = widthScaleFactor;
        }

        else {
            var scale = heightScaleFactor;
        }

        var scaledVideoHeight = videoNativeHeight * scale;
        var scaledVideoWidth = videoNativeWidth * scale;

        $('video#bgvideo').height(scaledVideoHeight);
        $('video#bgvideo').width(scaledVideoWidth);

    }
});

// PARALLAX
(function( $ ){
    var $window = $(window);
    var windowHeight = $window.height();

    $window.resize(function () {
        windowHeight = $window.height();
    });

    $.fn.parallax = function(xpos, speedFactor, outerHeight) {
        var $this = $(this);
        var getHeight;
        var firstTop;
        var paddingTop = 0;

        //get the starting position of each element to have parallax applied to it
        $this.each(function(){
            firstTop = $this.offset().top;
        });

        if (outerHeight) {
            getHeight = function(jqo) {
                return jqo.outerHeight(true);
            };
        } else {
            getHeight = function(jqo) {
                return jqo.height();
            };
        }

        // setup defaults if arguments aren't specified
        if (arguments.length < 1 || xpos === null) xpos = "50%";
        if (arguments.length < 2 || speedFactor === null) speedFactor = 0.1;
        if (arguments.length < 3 || outerHeight === null) outerHeight = true;

        // function to be called whenever the window is scrolled or resized
        function update(){
            var pos = $window.scrollTop();

            $this.each(function(){
                var $element = $(this);
                var top = $element.offset().top;
                var height = getHeight($element);

                // Check if totally above or totally below viewport
                if (top + height < pos || top > pos + windowHeight) {
                    return;
                }

                $this.css('backgroundPosition', xpos + " " + Math.round((firstTop - pos) * speedFactor) + "px");
            });
        }

        $window.bind('scroll', update).resize(update);
        update();
    };
})(jQuery);

// CONTACT FORM
jQuery(document).ready(function() {
    $('#contact-form .success').hide();

    $('#contact-form').on('submit', function(e) {
        function success_submit () {
            $('#contact-form .success').show();
            $('.name_error').remove();
            $('.subject_error').remove();
            $('.email_error').remove();
            $('.message_error').remove();
            $('#id_name').val('');
            $('#id_subject').val('');
            $('#id_email').val('');
            $('#id_message').val('');
        }

        function error_submit (error) {
            var data = error.responseJSON;
            $('#contact-form .success').hide();
            $('.name_error').remove();
            $('.subject_error').remove();
            $('.email_error').remove();
            $('.message_error').remove();

            if('name' in data) {
                data['name'].forEach(function (entry) {
                    $('#id_name').after('<div class="name_error error">' + entry + '</div>');
                });
            }

            if('subject' in data) {
                data['subject'].forEach(function (entry) {
                    $('#id_subject').after('<div class="subject_error error">' + entry + '</div>');
                });
            }

            if('email' in data) {
                data['email'].forEach(function (entry) {
                    $('#id_email').after('<div class="email_error error">' + entry + '</div>');
                });
            }

            if('message' in data) {
                data['message'].forEach(function (entry) {
                    $('#id_message').after('<div class="message_error error">' + entry + '</div>');
                });
            }
        }

        e.preventDefault();
        var datastring = $("#contact-form").serialize();
        $.ajax({
            type: "POST",
            url: "/contact/",
            data: datastring,
            dataType: "json",
            success: success_submit,
            error: error_submit
        });
    });
});
