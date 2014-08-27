# MENU RESPONSIVE
$ ->
    $('.nav-res-btn').click ->
        $('.nav-res').slideToggle("fast")
    $('.nav-res li').click ->
        $('.nav-res').slideToggle("fast")

# SCROLL MENU
$ ->
    nav = $('.nav')
    $(window).scroll ->
        if ($(this).scrollTop() > 400)
            nav.addClass("f-nav")
            $('.main-logo img').show()
        else
            nav.removeClass("f-nav")
            $('.main-logo img').hide()

# SMOOTH SCROLL
$ ->
    $('a.smooth').on 'click', (e) ->
        link = $(this)
        anchor  = link.attr('href')
        $('html, body').stop().animate({
            scrollTop: $(anchor).offset().top
        }, 1000)

# BG VIDEO
$ ->
    scaleVideo = ->
        # Got the window height and width anda saved them as variables
        windowHeight = $(window).height()
        windowWidth = $(window).width()

        # Got the video width and video height
        videoNativeWidth = $('video#bgvideo')[0].videoWidth
        videoNativeHeight = $('video#bgvideo')[0].videoHeight

        # Got the scale factors
        heightScaleFactor = windowHeight / videoNativeHeight
        widthScaleFactor = windowWidth / videoNativeWidth

        # Got the highest scale factor
        if (widthScaleFactor > heightScaleFactor)
            scale = widthScaleFactor
        else
            scale = heightScaleFactor

        scaledVideoHeight = videoNativeHeight * scale
        scaledVideoWidth = videoNativeWidth * scale

        $('video#bgvideo').height(scaledVideoHeight)
        $('video#bgvideo').width(scaledVideoWidth)

    $('video#bgvideo').on("loadedmetadata", scaleVideo)
    $(window).on("resize", scaleVideo)

# PARALLAX
$ ->
    $window = $(window)
    windowHeight = $window.height()

    $window.resize ->
        windowHeight = $window.height()

    $.fn.parallax = (xpos, speedFactor, outerHeight) ->
        $this = $(this)
        firstTop = null
        paddingTop = 0

        #get the starting position of each element to have parallax applied to it
        $this.each ->
            firstTop = $this.offset().top

        if (outerHeight)
            getHeight = (jqo) ->
                return jqo.outerHeight(true)
        else
            getHeight = (jqo) ->
                return jqo.height()

        # setup defaults if arguments aren't specified
        if (arguments.length < 1 || xpos == null)
            xpos = "50%"
        if (arguments.length < 2 || speedFactor == null)
            speedFactor = 0.1
        if (arguments.length < 3 || outerHeight == null)
            outerHeight = true

        # function to be called whenever the window is scrolled or resized
        update = ->
            pos = $window.scrollTop()

            $this.each ->
                $element = $(this)
                top = $element.offset().top
                height = getHeight($element)

                # Check if totally above or totally below viewport
                if (top + height < pos || top > pos + windowHeight)
                    return

                $this.css('backgroundPosition', "#{xpos} #{Math.round((firstTop - pos) * speedFactor)}px")

        $window.bind('scroll', update).resize(update)
        update()

# CONTACT FORM
$ ->
    $('#contact-form .success').hide()

    $('#contact-form').on 'submit', (e) ->
        success_submit = ->
            $('#contact-form .success').show()
            $('.name_error').remove()
            $('.subject_error').remove()
            $('.email_error').remove()
            $('.message_error').remove()
            $('#id_name').val('')
            $('#id_subject').val('')
            $('#id_email').val('')
            $('#id_message').val('')

        error_submit = (error) ->
            data = error.responseJSON
            $('#contact-form .success').hide()
            $('.name_error').remove()
            $('.subject_error').remove()
            $('.email_error').remove()
            $('.message_error').remove()
            if data['name']?
                data['name'].forEach (entry) ->
                    $('#id_name').after("<div class='name_error error'>#{entry}</div>")

            if data['subject']?
                data['subject'].forEach (entry) ->
                    $('#id_subject').after("<div class='subject_error error'>#{entry}</div>")

            if data['email']?
                data['email'].forEach (entry) ->
                    $('#id_email').after("<div class='email_error error'>#{entry}</div>")

            if data['message']?
                data['message'].forEach (entry) ->
                    $('#id_message').after("<div class='message_error error'>#{entry}</div>")

        e.preventDefault()
        datastring = $("#contact-form").serialize()
        promise = $.ajax {
            type: "POST",
            url: "/contact/",
            data: datastring,
            dataType: "json",
        }
        promise.done success_submit
        promise.fail error_submit
