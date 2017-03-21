<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Navigation Bar</title>
	</head>

	<body>
	
		<div id="navbar-wrap" class="container" style="display: none">
 			<nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar-scroll">
 				<div class="container">
 					<div class="navbar-header">
 						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-exl-collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a href="#login-box" class="login-window"><img id="login-img" src="images/login.png" align="absmiddle" alt="로그인 버튼"></a>
 						<img class="logo01" src="../portraNet/images/logo01.png" alt="temple_Logo" onClick="introPage();">
					</div>
		 			<div class="collapse navbar-collapse navbar-right navbar-exl-collapse">
 						<ul class="nav navbar-nav">
		 					<li><a onclick="aboutPage();">ABOUT</a></li>
		 					<li><a onclick="projectPage();">PROJECT</a></li>
		 					<li><a onclick="contactPage();">CONTECT</a></li>
		 					
		 					<li id="login-text"><a href="#login-box" class="login-window">LOGIN</a></li>
		 					<li id="mypage-text" style="display: none"><a href="#" data-target="#myPage" data-toggle="modal" onClick="bookmarkShowing();">MY PAGE</a></li>
		 					<li id="admin-text" style="display: none"><a onclick="adminPage();">ADMIN</a></li>
		 					<li id="logout-text" style="display: none"><a href='#'>LOGOUT</a></li>
 						</ul>
 					</div>
 				</div>
 			</nav>
 		</div>
		
	</body>
</html>