<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Contact Page</title>
	</head>

	<body>
	
		<!-- Contact -->
 		<div class="contact">
			<div class="contact-wrap">
				<div class="contact-box">
					<a><img src="../portraNet/images/logo03.png"></a>
					<h1>I N F O R M A T I O N</h1>
					<ul>
						<li>가천대학교 컴퓨터공학과 3학년 오원열</li>
						<li><a href="mailto:lasiyan@naver.com">lasiyan@naver.com</a></li>
						<li><a href="tel:010-8662-8428">010 - 8662 - 8428</a></li>
					</ul>
					<div class="input">
						<input type="text" id="sendName" name="name" placeholder="Name" title="Name">
						<input type="text" id="sendEmail" name="email" placeholder="E-mail" title="Email"> 
						<textarea name="message" id="sendMessage" class="i_message" title="Message" placeholder="Message" rows=5></textarea>
						<button class="send_btn" type="submit" onClick="sendMessage();">
							SEND to Message
						</button>
					</div>
				</div>
			</div>
		</div>
		
	</body>
</html>