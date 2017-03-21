function adminAddUser() {
	var userID = $('#userAddName').val();
	var userPwd = $('#userAddPassword').val();

	if($.trim(userID).length == 0) {
		alert("아이디를 입력해주세요");
		$('#userAddName').focus();
	}
	else if($.trim(userPwd).length == 0) {
		alert("비밀번호를 입력해주세요");
		$('#userAddPassword').val("");
		$('#userAddPassword').focus();
	}
	else {
		$.ajax({
			type: "POST",
			cache: false,
			url: "ajax/adminUserAdd.jsp",
			data: {userID : userID, userPwd : userPwd},
			dataType: 'xml',
			success: function(xml) {
				$('#userAddName').val("");
				$('#userAddPassword').val("");
				var state = $(xml).find("state").text();
				
				if(state == "already") {
					alert("이미 있는 아이디 입니다");
				}
				else if(state == "true") {
					alert(userID+" 추가 완료");
					adminUserShowing();
				}
				else {
					alert("회원가입 오류");
				}
			},
			error: function(){
				$('#userAddName').val("");
				$('#userAddPassword').val("");
		        alert("User Add Data access Error");
				return false;
			}
		});
	}
}
		
function adminDeleteUser() {
	var userID = $('#userDeleteName').val();

	if($.trim(userID).length == 0) {
		alert("아이디를 입력해주세요");
		$('#userDeleteName').focus();
	}
	else if(confirm(userID+" 삭제 확인") == false) {
		return;
	}
	else {
		$.ajax({
			type: "POST",
			cache: false,
			url: "ajax/adminUserDelete.jsp",
			data: {userID : userID},
			dataType: 'xml',
			success: function(xml) {
				var state = $(xml).find("state").text();

				if(state == "noID") {
					$('#userDeleteName').val("");
					alert("없는 유저입니다.");
				}
				else if(state == "true") {
					$('#userDeleteName').val("");
					alert(userID+" 삭제 완료");
					adminUserShowing();
				}
			},
			error: function(){
				$('#userDeleteName').val("");
				alert("User Delete Data access Error");
				return false;
			}
		});
	}
}
		
function adminDeleteProject() {
	var projectDeleteValue = $('#projectDeleteValue').val();

	if($.trim(projectDeleteValue).length == 0) {
		alert("Title이나 Img를 입력해주세요");
		$('#projectDeleteValue').focus();
	}
	else if(confirm("정말로 삭제하시겠습니까?") == false) {
		return;
	}
	else {
		$.ajax({
			type: "POST",
			cache: false,
			url: "ajax/adminProjectDelete.jsp",
			data: {projectDeleteValue : projectDeleteValue},
			dataType: 'xml',
			success: function(xml) {
				var state = $(xml).find("state").text();

				if(state == "noProject") {
					$('#projectDeleteValue').val("");
					alert("없는 프로젝트입니다.");
				}
				else if(state == "true") {
					$('#projectDeleteValue').val("");
					alert(projectDeleteValue+" 삭제 완료");
					adminProjectShowing();
				}
			},
			error: function(){
				$('#projectDeleteValue').val("");
				alert("Project Delete Data access Error");
				return false;
			}
		});
	}
}

function adminDeleteMsgForName() {
	var messageDeleteName = $('#messageDeleteName').val();
	var before = $('.resultTable-body tr').length;
	
	if($.trim(messageDeleteName).length == 0) {
		alert("이름이나 이메일를 입력해주세요");
		$('#messageDeleteName').focus();
	}
	else if(confirm(messageDeleteName+"의 메세지가 삭제됩니다") == false) {
		return;
	}
	else {
		$.ajax({
			type: "POST",
			cache: false,
			url: "ajax/adminMsgDeleteForUser.jsp",
			data: {messageDeleteName : messageDeleteName},
			dataType: 'xml',
			success: function(xml) {
				var state = $(xml).find("state").text();

				if(state == "noMsg") {
					alert("해당 항목이 존재하지 않습니다");
				}
				else if(state == "true") {
					alert(messageDeleteName+"의 메세지가 삭제되었습니다");
					adminMessageShowing();
				}
				else {
					alert("삭제 중 오류 발생");
				}
			},
			error: function(){
				alert("Message Delete Data access Error");
				return false;
			}
		});
	}
}
		
function adminDeleteMsgForContent() {
	var messageDeleteContent = $('#messageDeleteContent').val();

	if($.trim(messageDeleteContent).length == 0) {
		alert("내용을 입력해주세요");
		$('#messageDeleteContent').focus();
	}
	else if(confirm(messageDeleteContent+"을 포함한 메세지가 삭제됩니다") == false) {
		return;
	}
	else {
		$.ajax({
			type: "POST",
			cache: false,
			url: "ajax/adminMsgDeleteForContent.jsp",
			data: {messageDeleteContent : messageDeleteContent},
			dataType: 'xml',
			success: function(xml) {
				var state = $(xml).find("state").text();

				if(state == "noMsg") {
					alert("해당 항목이 존재하지 않습니다");
				}
				else if(state == "true") {
					alert("해당 항목이 삭제되었습니다");
					adminMessageShowing();
				}
				else {
					alert("삭제 중 오류 발생");
				}
			},
			error: function(){
				alert("Message Delete Data access Error");
				return false;
			}
		});
	}
}
		
function adminDeleteMsgAll() {
	var total = $('.resultTable-body tr').length;

	if(total == 0) {
		alert("삭제할 항목이 없습니다");
	}
	else if(confirm(total+"개의 전체 메세지가 삭제됩니다") == false) {
		return;
	}
	else {
		$.ajax({
			type: "POST",
			cache: false,
			url: "ajax/adminMsgDeleteAll.jsp",
			dataType: 'xml',
			success: function(xml) {
				var state = $(xml).find("state").text();

				if(state == "true") {
					alert("모든 메세지가 삭제되었습니다");
					adminMessageShowing();
				}
				else {
					alert("삭제 중 오류 발생");
				}
			},
			error: function(){
				alert("Message Delete Data access Error");
				return false;
			}
		});
	}
}