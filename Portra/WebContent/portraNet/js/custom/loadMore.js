$(document).ready(function() {
	// Load-more 버튼에서 (현재게시물 / 전체 게시물) 카운팅 구현
	var i = 6;
	$('div.load-more-btn p').click(function() {
   		$('div.proj_list>article:nth-child('+(i+1)+')').attr("style", "display: block").addClass("onProject");
   		$('div.proj_list>article:nth-child('+(i+2)+')').attr("style", "display: block").addClass("onProject");
   		$('div.proj_list>article:nth-child('+(i+3)+')').attr("style", "display: block").addClass("onProject");
   		i+=3;
   		
   		var total_count = $('div.proj_list > article').size();
   		var now_showing = $('.onProject').size();
   		$('div.load-more-btn p').text("Load More ("+(now_showing)+"/"+total_count+")");
   	});
});