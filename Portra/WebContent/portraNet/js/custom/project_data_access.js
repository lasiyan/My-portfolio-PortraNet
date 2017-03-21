// 프로젝트 출력 함수
function projectSetting() {
	$.ajax({
		type: "POST",
		cache: false,
		url: "ajax/projectSetting.jsp",
		dataType: 'xml',
		success: function(data) {
			$(data).find('bookmark').each(function() {
				var target = $(this).find('contents').text();
				var pj = "";
				var count = 1;
				if(!$('article').length) {
					$('article').remove();
				}
				
				pj = "<article class='category-"+$(this).find('cate').text+"' style='display: none' data-target='#modal-"+$(this).find('pjid').text()+"' data-toggle='modal'";
					bm += "<div class='pContent'>";
					bm += 	"<a><div class='project'>";
					bm += 	"<img src='../portraNet/images/'project_img/"+$(this).find('pj_img')+".JPG' src=' alt='
					bm +=	"<a href='#'><p class='mypageTitle'  data-target='#modal-"+target+"' data-toggle='modal'>"+$(this).find('title').text()+"</p></a>";
					bm +=	"<a href='#'><p class='bmlistDelete' onClick='bookmarkDelete("+target+");'>삭제</p></a>";
					bm += "</div>";
					
					$('#myPageContent').append(bm);
				}
				if($('.bookmarkList').length) {
					$('.bookmarkState').css("display", "none");
					$('#myPageContent').css("float", "left");
					$('.modal-footer').css("margin-top", "15px");
				}
			});
		},
		error: function(){
	        alert("북마크 목록을 불러오는데 실패하였습니다. 관리자에게 문의해주세요");
			return false;
		}
	});
}
		
// 북마크 목록 삭제 함수
function bookmarkDelete(pj_id) {
	var username = $('#now-user-temp').text();

	$.ajax({
		type: "POST",
		url: "ajax/bookmarkDelete.jsp",
		data: {username : username, pj_id : pj_id},
		dataType: 'xml',
		success: function(xml) {
			var state = $(xml).find("state").text();
			
			if(state == "true") {
				$('#'+pj_id+'-bml').remove();
				if(!$('.bookmarkList').length) {
					$('#myPageContent').css("float", "initial");
					$('.modal-footer').css("margin-top", "0px");
					$('.bookmarkState').css("display", "block");					
				}
				alert("삭제되었습니다");
			}
		},
		error: function(){
			alert("북마크 삭제에 실패하였습니다. 잠시 후 다시 시도해주세요");
			return false;
		}
	});
}