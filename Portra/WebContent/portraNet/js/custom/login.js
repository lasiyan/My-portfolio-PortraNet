$(document).ready(function() {
	$('.login-window').click(function() {
		var loginBox = $(this).attr('href');
		$('#us_email').val("");
		$('#us_passowrd').val("");
		// 로그인 창과 팝업창을 띄움
		$(loginBox).fadeIn(300);
		
		// 화면 중앙에 배치
		var popMargTop = ($(loginBox).height() + 24) / 2; 
		var popMargLeft = ($(loginBox).width() + 24) / 2; 
		$(loginBox).css({ 
			'margin-top' : -popMargTop,
			'margin-left' : -popMargLeft
		});
		
		// 로그인 창을 제외한 부분을 어둡게 만듬
		$('body').append('<div id="mask"></div>');
		$('#mask').fadeIn(300);
		
	});
	
	// 닫기 버튼이나 로그인 창의 외부를 누르면 창 닫기
	$('a.close').on('click', function() { 
		$('#mask , .login-popup, .join-popup').fadeOut(300 , function() {
			$('#mask').remove();  
		});
	});
	$('body').on('click', '#mask', function() { 
		$('#mask , .login-popup, .join-popup').fadeOut(300 , function() {
			$('#mask').remove();  
		}); 
	});
	
	$('.sign-up').click(function() {
		var joinBox = $(this).attr('href');
		$('#us_Joinemail').val("");
		$('#us_Joinpassowrd').val("");
		$('#us_Joinpassowrd_again').val("");
		
		$('.login-popup').css("display", "none");
		$(joinBox).fadeIn(300);
		
		// 화면 중앙에 배치
		var popMargTop = ($(joinBox).height() + 24) / 2; 
		var popMargLeft = ($(joinBox).width() + 24) / 2; 
		$(joinBox).css({ 
			'margin-top' : -popMargTop,
			'margin-left' : -popMargLeft
		});
		
	});
	
	// 로그아웃 클릭 시 수행 내역
	$('#logout-text').click(function() {
		$(this).attr("style", "display: none");
		$('#mypage-text').attr("style", "display: none");
		$('#adminpage-text').attr("style", "display: none");
		$('#login-text').css("display", "block");
		
		// Navbar text 및 아이콘 초기화
		$('.navbar-header a').attr("href", "#login-box");
		$('.navbar-header a').attr("class", "login-window");
		
		$('#login-img').css("display", "block");
		$('.navbar-header a img').attr("id", "login-img");
		$('.navbar-header a img').attr("src", "images/login.png");
		$('.navbar-header a img').attr("alt", "로그인 버튼");
		$('.navbar-header a img').removeAttr("data-target");
		$('.navbar-header a img').removeAttr("data-toggle");
		
		$('#us_email').val("");
		$('#us_passowrd').val("");
		$('#us_Joinemail').val("");
		$('#us_Joinpassowrd').val("");
		$('#us_Joinpassowrd_again').val("");
		
		$('.bookmarkList').each(function() {
			$(this).remove();
		});
		
		// Admin 메뉴 삭제
		$('#admin-text').css('display', 'none');
		alert("로그아웃 되셨습니다");
	});
	
	//패스워드 클릭시 필드값 초기화
	$('#us_password').click(function() {
		$(this).val("");
	});
});