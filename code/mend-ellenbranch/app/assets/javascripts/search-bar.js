$(document).ready(function(){
  var searchBox = $('.searchbox'); //  GRAB THE FORM
  var submitIcon = $('.searchbox-icon'); // DIFF SUBMIT ICON TO SUBMIT SEARCHBOX
  var inputBox = $('.searchbox-input');
  var isOpen = false;
    
  submitIcon.click(function(){
  	// TOOGLE SEARCHBOX ICON.
  	// ADD A CLASS TO THE FORM TAG AND FOCUS THE FORM.
    if(isOpen == false){
      //ADD CLASS TO FORM
      searchBox.addClass('searchbox-open'); 
      // FOCUS INPUT FIELD
      inputBox.focus(); 
      // SEARCH-BAR
      if( $(window).width() < 600 ) {
        $('.searchbox-open').css('width', '100%');  
      } else {
        $('.searchbox-open').css('width', '35%');
      }

      isOpen = true;
    } else {
        searchBox.removeClass('searchbox-open');
        inputBox.focusout();
      // SEARCH-BAR
        if( $(window).width() < 600 ) {
          $('.searchbox').css('width', '0');
        } else {
          $('.searchbox').css('width', '0');
        }

        isOpen = false;
    }
  });  
      // AFTER YOU CLICK AND LET GO OF THE ICON
  submitIcon.mouseup(function(){ return false; });
        
  searchBox.mouseup(function(){ return false; });
        
  $(document).mouseup(function(){
    if(isOpen == true){
      $('.searchbox-icon').css('display','block');
      submitIcon.click();
    }
  });

});
            
  function buttonUp(){
  // GRAB THE INPUT SEARCH BOX AND TRIM ANY WHITE SPACE THAT IS AT THE BEGGINING OR END OF SEARCH 
  // FIND LENGHT OF THE STRING
    var inputVal = $('.searchbox-input').val();
    inputVal = $.trim(inputVal).length;
    
    if( inputVal !== 0){
        $('.searchbox-icon').css('display','none');
    } else {
        $('.searchbox-input').val('');
        $('.searchbox-icon').css('display','block');
    }
}
