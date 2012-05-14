// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.jcarousel
//= require jquery.fancybox-1.3.4.pack
//= require jquery.uniform
//= require_tree .

$(function() {
  $("#car_brand").uniform();
  
  $("#commit input").hover(
    function () {
      $("#commit").addClass("hover");
    },
    function () {
      $("#commit").removeClass("hover");
    }
  );
  
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
