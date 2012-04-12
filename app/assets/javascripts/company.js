$(document).ready(function(){
  $('#carousel').jcarousel({
    animation: 'fadeIn',
    scroll: 1,
    visible: 4,
    buttonPrevHTML: "<a class='prev' href=''></a>",
    buttonNextHTML: "<a class='next' href=''></a>",
    start: 0
  });
  
  $('#carousel a.prev').live('click', function(e){
    e.preventDefault();
  });

  $('#carousel .next').live('click', function(e){
    e.preventDefault();
  });
  
  $('#carousel ul li.thumb a').fancybox({
    href: $(this).attr("href"),
    'scrolling'	: 'no',
    'titleShow'	: false
  });
});
