$(function(){
  $("#menu-buttons p a").mouseover(function(e){
    $(this).parent().toggleClass("hovered");
  }).mouseout(function(){
    $(this).parent().toggleClass("hovered");
  });

  $("#subheader p a").hover(function() {
    var imgData = $(this).parent().attr("img-data");
    if (!$(this).parent().hasClass("active")) {
      if (imgData !="partners" ) {
        $(".main-image").hide();
        $("[alt="+imgData+"]").stop(false, true).fadeIn();
      }
    }
  }, function() {
    var imgData = $(this).parent().attr("img-data");
    if (!$(this).parent().hasClass("active")) {
      if (imgData !="partners" ) {
        $("[alt="+imgData+"]").fadeOut('fast', function() {
          $(".main-image").stop(false, true).css("display","inline");
        });
      }
    }
  });

  $("#subheader p a.left").hover(function() {
    if (!$(this).parent().hasClass("active")) {
      $(this).parent().toggleClass("hovered");
      $(".active-line").toggle();
      $("#left-line").stop(false, true).fadeIn();
    }
  }, function() {
    if (!$(this).parent().hasClass("active")) {
      $(this).parent().toggleClass("hovered");
      $("#left-line").stop(false, true).fadeOut('fast', function() {
        $(".active-line").toggle();
      });
    }
  });

  $("#subheader p a.middle").hover(function(e){
     if (!$(this).parent().hasClass("active")) {
      $(this).parent().toggleClass("hovered");
      $(".active-line").toggle();
      $("#middle-line").stop(false, true).fadeIn();
    }
  }, function() {
    if (!$(this).parent().hasClass("active")) {
      $(this).parent().toggleClass("hovered");
      $("#middle-line").stop(false, true).fadeOut('fast', function() {
        $(".active-line").toggle();
      });
    }
  });

  $("#subheader p a.right").hover(function(e){
    if (!$(this).parent().hasClass("active")) {
      $(this).parent().toggleClass("hovered");
      $(".active-line").toggle();
      $("#right-line").stop(false, true).fadeIn();
    }
  }, function() {
    if (!$(this).parent().hasClass("active")) {
      $(this).parent().toggleClass("hovered");
      $("#right-line").stop(false, true).fadeOut('fast', function() {
        $(".active-line").toggle();
      });
    }
  });
});
