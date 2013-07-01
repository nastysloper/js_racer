$(document).ready(function(){

  $(document).on('keyup', function(event) {

    if (event.keyCode == 83){
      var position1 = parseInt($('#monster1').css('left'));
      if(position1 <= 60) {
        alert("Monster wins!");
        $(document).unbind('keyup');
      }
      $("#monster1").animate({left: "-=40px"}, 80);

    }
    else if (event.keyCode == 74) {
      var position2 = parseInt($('#freeze').css('left'));
      if (position2 <= 60) {
        alert("Freeze wins!");
        $(document).unbind('keyup');
      }
      $("#freeze").animate({left: "-=40px"}, 80);
    }

  });
});


