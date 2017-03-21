<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Login Join Mypage</title>
	</head>

	<body>
		<div id="login-box" class="login-popup">
				<a class="close"><img src="../portraNet/images/close_pop.png" class="btn_close" title="Close Window" alt="Close" /></a>
				<form class="signin" action="#">
					<fieldset class="textbox">
						<label class="email">
							<span>ID</span>
						    <input id="us_email" name="email" value="" type="text" autocomplete="off" placeholder="Username">
						</label>	                
						
						<label class="password">
							<span>Password</span>
							<input id="us_password" name="password" value="" type="password"
							 	onkeypress="if(event.keyCode==13) {loginChk(); return false;}" placeholder="Password">
						</label>                
						<button class="submit button" type="button" onClick="loginChk();">LOGIN</button>
						<p><a class="sign-up" href="#join-box">Create new account</a></p>
					</fieldset>
				</form>
			</div> 
			
			<div id="join-box" class="join-popup">
				<a class="close"><img src="../portraNet/images/close_pop.png" class="btn_close" title="Close Window" alt="Close" /></a>
				<form method="post" class="signup" action="#">
					<fieldset class="textbox">
						<label class="email">
							<span>ID</span>
						    <input id="us_Joinemail" name="email" value="" type="text" autocomplete="off" placeholder="Username">
						    <input id="chkflag" value="0" style="display:none;">
						    <p style="margin-bottom: 0px; font-size: 0.7em"><a class="same-chk" onClick="sameChk();">ID 중복 체크</a></p>
						</label>	                
						<label class="password">
							<span>Password</span>
							<input id="us_Joinpassword" name="password" value="" type="password" placeholder="Password">
						</label>  
						<label class="password-again">
							<span>Password Again</span>
							<input id="us_Joinpassword_again" name="password-again" value="" type="password"
								 onkeypress="if(event.keyCode==13) {join(); return false;}" placeholder="password-again">
						</label>              
						<button class="submit button" type="button" onClick="join();">Sign Up</button>
					</fieldset>
				</form>
			</div>  
			
			<!-- My page -->
			<div class="modal fade" id="myPage" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-margin"></div>
  				<div class="modal-dialog" role="document">
  					
    				<div class="modal-content">
      					<div class="modal-header" style="min-height: auto">
        					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        					<h4 class="modal-title mypageName" id="myModalLabel" style="height: 70px; margin-top: 40px;">My Page</h4>
      					</div>
      					<div id="myPageContent" class="modal-body">
      						<p class="bookmarkState">등록된 북마크가 없습니다</p>
      					</div>
      					<div class="modal-footer">
        					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
      					</div>
    				</div>
	  			</div>
  			</div>
	</body>
</html>