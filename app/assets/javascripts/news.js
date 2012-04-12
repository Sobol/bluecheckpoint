$(function(){
  $("ul.news-container li a").fancybox({
    href: $(this).attr("href"),
    'scrolling'	: 'no',
    'titleShow'	: false
  });
});
