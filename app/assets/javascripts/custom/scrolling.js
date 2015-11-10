function scrollToAnchor(aid){
    var aTag = $("a[name='"+ aid +"']");
    $('html,body').animate({scrollTop: aTag.offset().top},1000);
}

$(document).ready(function(){

  $('body').on( 'click', "[data-scroll-to-anchor]", function(e) {

     scrollToAnchor($(this).data('scroll-to-anchor'));

     $('#nav li a').removeClass("active");
      $(this).addClass("active");
      return false;

  });

});