  $(document).ready(function() {
    //  SIZE HEADER TO VIEWPORT
        var viewportHeight = $(window).height() - 30; 
        $("header").height(viewportHeight );

    // RESEIZE HEADER FOR VIEWPORT HEIGHT CHANGES
      $(window).resize(function() {
          var viewportHeight = $(window).height() - 30;
          $("header").height(viewportHeight);
          console.log(viewportHeight)
      });
     
    // CHANGE OPACITY OF IMAGE ON SCROLL
      var divs = $('header');
      var range = 300;
      $(window).on('scroll', function() {
        var st = $(this).scrollTop() - 50;
        divs.each(function() {
          var offset = $(this).offset().top;
          var height = $(this).outerHeight() ;
          offset = offset + height / 2;
          $(this).css({
            'opacity': (1 - ((st - offset + range) / range))
          });
        });
      });
    });