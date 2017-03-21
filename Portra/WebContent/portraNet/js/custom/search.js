function searchPJ() {
	var text = $('#search-text').val();
	
	$('article').attr("style", "display: none");

	// 전체 프로젝트 게시물 타이틀에서 데이터 검색
	$('.pTitle').each(function(i) {
		var title = $(this).text();
		if(title.indexOf(text) != -1) {
			$(this).closest('article').attr("style", "display: block");
		}
	});
	
	// 프로젝트 게시물 서브 타이틀에서 데이터 검색
	$('.pSubtitle').each(function(i) {
		var title = $(this).text();
		if(title.indexOf(text) != -1) {
			$(this).closest('article').attr("style", "display: block");
		}
	});
	
	var showing = $('article[style="display: block"]').length;
	
	if(showing == 0) {
		alert("검색된 결과가 없습니다");
	}
	
   	var total = $('article').length;
   	$('.load-more-btn p').text("Load More ("+showing+"/"+total+")");
   	$('.load-more-btn p').unbind('click');
}
