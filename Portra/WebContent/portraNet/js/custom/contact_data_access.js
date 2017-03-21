// Contact 메세지 보내기 함수
function sendMessage() {
	var sdName = $('#sendName').val();
	var sdEmail = $('#sendEmail').val();
	var sdMsg = $('#sendMessage').val();
	var nowUser = $('#now-user-temp').text();
		
	if($.trim(sdName).length == 0) {
		alert("이름을 입력해주세요");
		$('#sendName').focus();
	}
	else if($.trim(sdEmail).length == 0) {
		alert("이메일을 입력해주세요");
		$('#sendEmail').focus();
	}
	else if($.trim(sdMsg).length == 0) {
		alert("보낼 내용을 입력해주세요");
		$('#sendMessage').focus();
	}
	else {
		$.ajax({ // Ajax 사용
			type: "POST",
			cache: false,
			url: "ajax/sendMessage.jsp",
			data: {sdName : sdName, sdEmail : sdEmail, sdMsg : sdMsg, nowUser : nowUser },
			dataType: 'xml',
			success: function(xml) {
				var state = $(xml).find("state").text();
				// 전송 성공 시 텍스트 값 초기화
				if(state == "true") {
					$('#sendName').val("");
					$('#sendEmail').val("");
					$('#sendMessage').val("");
					alert("메세지가 전송되었습니다");
				}
			},
			error: function() {
				alert("메세지 전송에 실패하였습니다. 잠시 후 다시 시도해주세요");
				return false;
			}
		});
	}
}