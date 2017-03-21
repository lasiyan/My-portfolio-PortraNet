// 북마크 추가 함수
function addBM(pj_id, title, img) {
	var username = $('#now-user-temp').text();
	var img_src = "../portraNet/images/project_img/"+img+".JPG";
	
	if($.trim(username).length == 0) {
		alert("로그인이 필요합니다");
	}
	else {
		$.ajax({
			type: "POST",
			url: "ajax/bookmark.jsp",
			data: {username : username, img : img, img_src : img_src, title : title, pj_id : pj_id},
			dataType: 'xml',
			success: function(xml) {
				var state = $(xml).find("state").text();
				if(state == "true") {
					alert("북마크에 등록되었습니다!");
				}
			},
			error: function() {
				alert("이미 추가된 항목입니다");
				return false;
			}
		});
	}
}

// 북마크 출력 함수
function bookmarkShowing() {
	var username = $('#now-user-temp').text();
	$.ajax({
		type: "POST",
		cache: false,
		url: "ajax/bookmarkShowing.jsp",
		data: {username : username},
		dataType: 'xml',
		success: function(data) {
			$(data).find('bookmark').each(function() {
				var target = $(this).find('pjid').text();
				var bm = "";
				// 먼저 북마크의 목록이 있으면 기존 텍스트 삭제
				if($('.bookmarkList').length) {
					$('.bookmarkState').css("display", "none");
					$('#myPageContent').css("float", "left");
					$('.modal-footer').css("margin-top", "15px");
				}
				
				// DB의 pj-id 수 만큼 북마크 생성
				if(!($('#'+target+'-bml').length)) {
					bm += "<div id='"+target+"-bml' class='bookmarkList'>";
					bm += 	"<a href='#'>";
					bm += 	"<img class='mypageImg' src='"+$(this).find('src').text()+"' data-target='#modal-"+target+"' data-toggle='modal'/></a>";
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
				// 북마크 목록이 없으면 없다는 텍스트 출력
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