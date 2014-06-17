$(document).ready(function() {
  $('a.right-off-canvas-toggle').click(function(){
      $(window).scroll(function(){
        if ($('#is_open').hasClass('move-left')) {
          if ($(window).scrollTop() > $(window).height()){
            $('a.right-off-canvas-toggle').click();
          }
        }
    });
  });
});