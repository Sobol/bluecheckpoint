$(function(){
  $("#menu-buttons p a").mouseover(function(e){
    $(this).parent().toggleClass("hovered");
  }).mouseout(function(){
    $(this).parent().toggleClass("hovered");
  });

  $("#commit input").mouseover(function(e){
    $(this).parent().toggleClass("hovered");
  }).mouseout(function(){
    $(this).parent().toggleClass("hovered");
  });

  $("#add-news-button a").mouseover(function(e){
    $(this).parent().toggleClass("hovered");
  }).mouseout(function(){
    $(this).parent().toggleClass("hovered");
  });

  $("#add-codes-button a").mouseover(function(e){
    $(this).parent().toggleClass("hovered");
  }).mouseout(function(){
    $(this).parent().toggleClass("hovered");
  });
  
  if ($("html").hasClass("ie6") || $("html").hasClass("ie7") || $("html").hasClass("ie8")) {
    $("html").prepend('<div class="ie_bg_fix"></div>');
  }
  
  $("#images ul li").mouseover(function(e){
    $(this).children("a").show();
  }).mouseout(function(){
    $(this).children("a").hide();
  });

});
