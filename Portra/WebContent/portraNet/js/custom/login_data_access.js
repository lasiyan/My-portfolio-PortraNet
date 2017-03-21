// 로그인 하기
function loginChk() {
	var email = $('#us_email').val();
	var password = $('#us_password').val();
	if($.trim(email).length == 0) {
		alert("아이디를 입력해주세요");
		$('#us_email').focus();
	}
	else if($.trim(password).length == 0) {
		alert("비밀번호를 입력해주세요");
		$('#us_passowrd').val("");
		$('#us_passowrd').focus();
	} else {
		$.ajax({
			type: "POST",
			cache: false,
			url: "ajax/login.jsp",
			data: {email : email, password : password},
			dataType: 'xml',
			success: function(xml) {
				var state = $(xml).find("state").text();
				if(state == "true") {
					//로그인 성공시 수행 내역
					$('#mask , .login-popup').fadeOut(300 , function() {
						$('#mask').remove();  
					});	// 창 주변의 불투명 레이아웃 삭제
					// 로그인 텍스트 및 아이콘 숨김
					// mypage나 admin 탭 추가
					$('#login-text').css("display", "none");
					$('#mypage-text').attr("style", "display: block");
					$('#logout-text').attr("style", "display: block");
					$('#login-img').css("display", "none");
					$('.mypageName').text(email+"'s Page");
					$('#now-user-temp').text(email);
					
					$('#us_email').val("");
					$('#us_passowrd').attr("value", "");
					if(email == "admin") {
						$('#admin-text').css('display', 'block');
						$('#total-wrap').css('display', 'none');
						alert("관리자 계정입니다");
					} 
					else {
						alert(email+"님 환영합니다");
					}
				} else {
					alert("아이디 또는 비밀번호를 확인해 주세요.");
					$('#us_email').focus();
					$('#us_password').val("");
				}
			},
			error: function() {
				alert("로그인에 실패하였습니다. 관리자에게 문의해 주세요");
				return false;
			}
		});
	}
}
// 데이터 중복 확인 체크
function sameChk() {
	var email = $('#us_Joinemail').val();
	if($.trim(email).length == 0) {
		alert("아이디를 입력해주세요");
		$('#us_Joinemail').focus();
	}	
	else {
		$.ajax({
			type: "POST",
			url: "ajax/sameChk.jsp",
			data: {email : email},
			dataType: 'xml',
			success: function(xml) {
				var state = $(xml).find("state").text();
				if(state == "false") {						
					alert("사용 가능한 아이디입니다");
					chkflag = true;
					$('#chkflag').attr("value", "1");
				} else {
					alert("중복된 아이디가 있습니다");
					$('#us_Joinemail').focus();
				}
			},
			error: function() {
				alert("중복확인에 실패하였습니다. 관리자에게 문의해 주세요");
				return false;
			}
		});
	}
} 
// 회원가입 기능
function join() {
	var email = $('#us_Joinemail').val();
	var pwd = $('#us_Joinpassword').val();
	var chkflag = $('#chkflag').val();
	var pwdAgain = $('#us_Joinpassword_again').val();
	if($.trim(email).length == 0) {
		alert("아이디를 입력해주세요");
		$('#us_Joinemail').focus();
	}
	else if(chkflag == 0) {
		alert("아이디 중복체크를 해주세요");
		$('#us_Joinemail').focus();
	}
	else if($.trim(pwd).length == 0) {
		alert("비밀번호를 입력해주세요");
		$('#us_Joinpassowrd').val("");
		$('#us_Joinpassowrd').focus();
	}
	else if($.trim(pwdAgain).length == 0) {
		alert("재확인 비밀번호를 입력해주세요");
		$('#us_Joinpassowrd_again').val("");
		$('#us_Joinpassowrd_again').focus();
	}
	else if(pwd != pwdAgain) {
		alert("비밀번호가 일치하지 않습니다");
		$('#us_Joinpassowrd_again').val("");
		$('#us_Joinpassowrd_again').focus();
	}	
	else {
		$.ajax({
			type: "POST",
			url: "ajax/join.jsp",
			data: {email : email, pwd : pwd},
			dataType: 'xml',
			success: function(xml) {
				var state = $(xml).find("state").text();
				if(state == "true") {
					//회원가입 성공시 수행 내역							
					$('#mask , .login-popup, .join-popup').fadeOut(300 , function() {
						$('#mask').remove();  
					}); // 화면 주변의 불투명 레이아웃 삭제
					alert("가입을 환영합니다. 로그인 해주세요");
					// 회원가입 창 텍스트 초기화
					$('#chkflag').attr("value", "0");
					$('#us_Joinemail').val("");
					$('#us_Joinpassowrd').val("");
					$('#us_Joinpassowrd_again').val("");
				} else {
					alert("회원가입에 실패하였습니다. 관리자에게 문의해 주세요");
					$('#us_email').focus();
					$('#us_password').val("");
				}
			},
			error: function() {
				alert("회원가입에 실패하였습니다. 관리자에게 문의해 주세요");
				return false;
			}
		});
	}
}	
		