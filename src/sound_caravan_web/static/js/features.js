(function() {
  $(function() {
    $('.nav-res-btn').click(function() {
      return $('.nav-res').slideToggle("fast");
    });
    return $('.nav-res li').click(function() {
      return $('.nav-res').slideToggle("fast");
    });
  });

  $(function() {
    var nav;
    nav = $('.nav');
    return $(window).scroll(function() {
      if ($(this).scrollTop() > 400) {
        nav.addClass("f-nav");
        return $('.main-logo img').show();
      } else {
        nav.removeClass("f-nav");
        return $('.main-logo img').hide();
      }
    });
  });

  $(function() {
    return $('a.smooth').on('click', function(e) {
      var anchor, link;
      link = $(this);
      anchor = link.attr('href');
      return $('html, body').stop().animate({
        scrollTop: $(anchor).offset().top
      }, 1000);
    });
  });

  $(function() {
    var scaleVideo;
    scaleVideo = function() {
      var heightScaleFactor, scale, scaledVideoHeight, scaledVideoWidth, videoNativeHeight, videoNativeWidth, widthScaleFactor, windowHeight, windowWidth;
      windowHeight = $(window).height();
      windowWidth = $(window).width();
      videoNativeWidth = $('video#bgvideo')[0].videoWidth;
      videoNativeHeight = $('video#bgvideo')[0].videoHeight;
      heightScaleFactor = windowHeight / videoNativeHeight;
      widthScaleFactor = windowWidth / videoNativeWidth;
      if (widthScaleFactor > heightScaleFactor) {
        scale = widthScaleFactor;
      } else {
        scale = heightScaleFactor;
      }
      scaledVideoHeight = videoNativeHeight * scale;
      scaledVideoWidth = videoNativeWidth * scale;
      $('video#bgvideo').height(scaledVideoHeight);
      return $('video#bgvideo').width(scaledVideoWidth);
    };
    $('video#bgvideo').on("loadedmetadata", scaleVideo);
    return $(window).on("resize", scaleVideo);
  });

  $(function() {
    var $window, windowHeight;
    $window = $(window);
    windowHeight = $window.height();
    $window.resize(function() {
      return windowHeight = $window.height();
    });
    return $.fn.parallax = function(xpos, speedFactor, outerHeight) {
      var $this, firstTop, getHeight, paddingTop, update;
      $this = $(this);
      firstTop = null;
      paddingTop = 0;
      $this.each(function() {
        return firstTop = $this.offset().top;
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
      if (arguments.length < 1 || xpos === null) {
        xpos = "50%";
      }
      if (arguments.length < 2 || speedFactor === null) {
        speedFactor = 0.1;
      }
      if (arguments.length < 3 || outerHeight === null) {
        outerHeight = true;
      }
      update = function() {
        var pos;
        pos = $window.scrollTop();
        return $this.each(function() {
          var $element, height, top;
          $element = $(this);
          top = $element.offset().top;
          height = getHeight($element);
          if (top + height < pos || top > pos + windowHeight) {
            return;
          }
          return $this.css('backgroundPosition', "" + xpos + " " + (Math.round((firstTop - pos) * speedFactor)) + "px");
        });
      };
      $window.bind('scroll', update).resize(update);
      return update();
    };
  });

  $(function() {
    $('#contact-form .success').hide();
    return $('#contact-form').on('submit', function(e) {
      var datastring, error_submit, promise, success_submit;
      success_submit = function() {
        $('#contact-form .success').show();
        $('.name_error').remove();
        $('.subject_error').remove();
        $('.email_error').remove();
        $('.message_error').remove();
        $('#id_name').val('');
        $('#id_subject').val('');
        $('#id_email').val('');
        return $('#id_message').val('');
      };
      error_submit = function(error) {
        var data;
        data = error.responseJSON;
        $('#contact-form .success').hide();
        $('.name_error').remove();
        $('.subject_error').remove();
        $('.email_error').remove();
        $('.message_error').remove();
        if (data['name'] != null) {
          data['name'].forEach(function(entry) {
            return $('#id_name').after("<div class='name_error error'>" + entry + "</div>");
          });
        }
        if (data['subject'] != null) {
          data['subject'].forEach(function(entry) {
            return $('#id_subject').after("<div class='subject_error error'>" + entry + "</div>");
          });
        }
        if (data['email'] != null) {
          data['email'].forEach(function(entry) {
            return $('#id_email').after("<div class='email_error error'>" + entry + "</div>");
          });
        }
        if (data['message'] != null) {
          return data['message'].forEach(function(entry) {
            return $('#id_message').after("<div class='message_error error'>" + entry + "</div>");
          });
        }
      };
      e.preventDefault();
      datastring = $("#contact-form").serialize();
      promise = $.ajax({
        type: "POST",
        url: "/contact/",
        data: datastring,
        dataType: "json"
      });
      promise.done(success_submit);
      return promise.fail(error_submit);
    });
  });

}).call(this);
