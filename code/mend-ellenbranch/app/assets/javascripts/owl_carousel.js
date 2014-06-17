$(document).ready(function() {
  $("#owl-demo").owlCarousel({
    
    
    // Most important owl features
    items : 3,
    itemsCustom : false,
    itemsDesktop : [1199,2],
    itemsDesktopSmall : [600,1],
    itemsTablet: [768,1],
    itemsTabletSmall: false,
    itemsMobile : [479,1],
    singleItem : false,
    itemsScaleUp : false,

    //Autoplay
    autoPlay: 3000,
    stopOnHover : true
  });

});