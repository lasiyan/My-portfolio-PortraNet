// 제이쿼리 모바일 loading 메세지 숨기기
$( document ).on( "mobileinit", function() {
	$.mobile.loader.prototype.options.disabled = true;
});
   	
$(document).ready(function() {
	/* 캐러셀 자동 슬라이드 - 6초 간격 */
    $('.carousel').carousel({interval: 6000});
    
    /* 캐러셀 사이즈 조절 */
   	$('.carousel-inner > .item > img').css('height', $(window).height());
   	$('.intro_box').css('height', ($(window).height() - 50));
   	$('.carousel-indicators').css('margin-bottom', ($(window).height() - 50) / 2);
   	$('#about-wrap').css('min-height', ($(window).height() - 103));
   	$('#contact-wrap').css('min-height', ($(window).height() - 53));
   	$('#admin-wrap').css('min-height', ($(window).height() - 103));
   	
   	$(window).resize(function() {
        $('.carousel-inner > .item > img').css('height', $(window).height());
        $('.intro_box').css('height', ($(window).height() - 50));
        $('.carousel-indicators').css('margin-bottom', ($(window).height() - 50) / 2);
        $('#about-wrap').css('min-height', ($(window).height() - 53));
        $('#contact-wrap').css('min-height', ($(window).height() - 53));
       	$('#admin-wrap').css('min-height', ($(window).height() - 103));
   	});
   	
   	$("#carousel-generic").swiperight(function() {
        $(this).carousel('prev');
      });
    $("#carousel-generic").swipeleft(function() {
        $(this).carousel('next');
    });


   	/* 메인 화면 사이즈 조정 */
   	$('.main-wrap').css('min-height', $(window).height());
   
   	
   	/* Modal에서 Null값 제거 */
   	$('.modal-body img[src$="null.JPG"]').attr("style", "display: none");
   	
   	$('.p-infotext').each(function() {
		var text = $(this).text();
		//alert(text);
		if(text == 'null') {
			$(this).attr("style", "display: none");
			$(this).parent().attr("style", "display: none");
		}
	});
   	
   	/* 네비바 항목 클릭시 자동 닫기 */
   	$('.navbar-collapse a').click(function(){
	    $(".navbar-collapse").collapse('hide');
	});
   	
   	$('.navbar-fixed-top').autoHidingNavbar('setDisableAutohide', true);
   	
   	$('#modal-1').on('hidden', function() {
   	    $(this).removeData('modal');
   	});
   	$('#modal-2').on('hidden', function() {
   	    $(this).removeData('modal');
   	});
});