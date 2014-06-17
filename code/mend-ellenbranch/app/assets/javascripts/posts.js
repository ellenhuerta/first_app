$(document).ready(function() {
  $('.pagination').hide();
  if ($('.pagination').length) {
    $('#js-load-more-btn').click(function() {
    	var url = $('.pagination .next_page').attr('href');
    if (url && $(window).scrollTop() > $(document).height() - $(window).height() - 10) {	
        $('.pagination').text("Loading...");
        return $.getScript(url);
      }
    });
   //$(window).scroll();
 }
 
});