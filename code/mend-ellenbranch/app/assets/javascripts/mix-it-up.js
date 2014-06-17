$(function(){
  $('#Container').mixItUp({
    load: {
      filter: 'all' 
    },
    controls: {
      toggleFilterButtons: false
      
    },
    callbacks: {
      onMixEnd: function(state){
        console.log(state.activeFilter)
      }
    }
  });
});