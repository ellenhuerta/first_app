//  SIZE HEADER TO VIEWPORT
 $(document).ready(function() {
     var viewportHeight = $(window).height() - 30; 
    $(".posts header").height(viewportHeight );
    console.log(viewportHeight);


// RESEIZE HEADER FOR VIEWPORT HEIGHT CHANGES
$(window).resize(function() {
    var viewportHeight = $(window).height() - 30;
    $(".posts header").height(viewportHeight);
    console.log(viewportHeight);
});

 });