<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>loading Page</title>
	</head>

	<body>
	
		<div id="loading-wrap">
			<div id="loading-page"></div>
			<p id="Load-text">Created by Google Chrome</p>
		</div>
		<script type="text/javascript">
			function showPage() {
				var loading_wrap = $("div#loading-wrap");
				
		  		var navbar = $("#navbar-wrap");
		  		var main_wrap = $("#main-wrap");
		  		var footer_wrap = $("#footer-wrap");
		  		
		  		loading_wrap.css("display","none");
		  		
		  		navbar.attr("style", "display: block");
		  		main_wrap.attr("style", "display: block");
		  		
		  		$('#about-wrap').fadeOut('fast');
		  		$('#project-wrap').fadeOut('fast');
		  		$('#contact-wrap').fadeOut('fast');
		  		$('#admin-wrap').fadeOut('fast');
			}
			setTimeout("showPage()", 4000);
		</script>
 		
	</body>
</html>