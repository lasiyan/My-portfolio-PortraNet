$(document).ready(function() {
	
	// 카테고리 별 total 개수 표시
	var all = $('article').length;
	var c = $("article[class*='category-c']").length;
	var java = $("article[class*='category-java']").length;
	var mobile = $("article[class*='category-mobile']").length;
	var web = $("article[class*='category-web']").length;
	var _else = $('article[class*="category-else"]').length;
	
	$("#selectlist option[value='all']").append(" ("+all+")");
	$("#selectlist option[value='c']").append(" ("+c+")");
	$("#selectlist option[value='java']").append(" ("+java+")");
	$("#selectlist option[value='mobile']").append(" ("+mobile+")");
	$("#selectlist option[value='web']").append(" ("+web+")");
	$("#selectlist option[value='else']").append(" ("+_else+")");
	
	// 카테고리 기능 구현
   	$("#selectlist").change(function() {
   		$("#selectlist option:selected").each(function() {
   			var selectVal = $(this).val();
   			
   			// 모든 게시글을 숨기고 해당 카테고리 class만 출력
   			if(selectVal == "all") {
   				$('article').attr("style", "display: block");
   		   	}
   		   	else if(selectVal == "c") {
   		   		$('article').attr("style", "display: none");
	   		   	$("article[class*='category-c']").attr("style", "display: block");
   		   	}
   		   	else if(selectVal == 'java') {
	   		   	$('article').attr("style", "display: none");
	   		   	$("article[class*='category-java']").attr("style", "display: block");
   		   	}
   		   	else if(selectVal == 'mobile') {
	   		   	$('article').attr("style", "display: none");
	   		   	$("article[class*='category-mobile']").attr("style", "display: block");
   		   	}
   		   	else if(selectVal == 'web') {
	   		   	$('article').attr("style", "display: none");
	   		   	$("article[class*='category-web']").attr("style", "display: block");
   		   	}
   		   	else if(selectVal == 'else') {
	   		   	$('article').attr("style", "display: none");
	   			$('article[class*="category-else"]').attr("style", "display: block");
   		   	}
   		   	else {
   		   		alert("not selected !!");
   		   	}
   			
   			// Load more 버튼 재설정 - 게시글 수 및 클릭 비활성화
   			var showing = $('article[style="display: block"]').length;
   	   		var total = $('article').length;
   	   		$('.load-more-btn p').text("Load More ("+showing+"/"+showing+")");
	   	   	$('.load-more-btn p').unbind('click');
   		});
   	});
});