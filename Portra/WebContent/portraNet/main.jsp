<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error_page.jsp" import="java.util.*, portra.portranet.*"%>
<% int total = 0;%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
		
	    <!-- Site info -->      
	    <title>P O R T R A net</title>
	    <meta name="description" content="포트폴리오">
	    <meta name="author" content="오원열">  
	    <meta name="designer" content="동일">        
	    <meta name="dcterms.rightsHolder" content="lasiyan">
	    <meta name="keywords" content="portranet">    

    	<!-- Main css -->
	    <link href="../portraNet/css/nomalize.css" rel="stylesheet">
	    <link href="../portraNet/css/bootstrap.min.css" rel="stylesheet">
	    <link href="../portraNet/css/jquery.fancybox.css" rel="stylesheet">
	    <link href="../portraNet/css/animate.css" rel="stylesheet">
	   
	    <!-- Custom css -->
	    <link href="../portraNet/css/custom/default.css?version=1.03" rel="stylesheet">
	    <link href="../portraNet/css/custom/block.css" rel="stylesheet">
	    <link href="../portraNet/css/custom/footer.css" rel="stylesheet">
	    <link href="../portraNet/css/custom/loding-page.css?version=1.02" rel="stylesheet">
	    <link href="../portraNet/css/custom/navbar.css?version=1.9" rel="stylesheet">
	    	<!-- Intro Css -->
	    	<link href="../portraNet/css/custom/carousel.css" rel="stylesheet">
	   		<link href="../portraNet/css/custom/login.css?version=1.11" rel="stylesheet">
		    <!-- About css -->
			<link href="../portraNet/css/custom/about.css?version=1.02" rel="stylesheet"> 
			<!-- Project css -->
			<link href="../portraNet/css/custom/project.css?version=2.13" rel="stylesheet">
			<link href="../portraNet/css/custom/modal.css?version=3.00" rel="stylesheet">
			<!-- Contact css -->
			<link href="../portraNet/css/custom/contact.css?version=1.25" rel="stylesheet">
			<!-- Admin CSS -->
			<link href="../portraNet/css/custom/admin.css?version=1.09" rel="stylesheet">
			
	    <!-- Main Scripts -->
		<script src="../portraNet/js/jquery-2.1.4.min.js"></script>
		<script src="../portraNet/js/bootstrap.min.js"></script>
		<script src="../portraNet/js/animatescroll.min.js"></script>
		<script src="../portraNet/js/jquery.fancybox.js"></script>
		<script src="../portraNet/js/jquery.bootstrap-autohidingnavbar.min.js"></script>
		
		<!-- Custom Scripts -->
		<script src="../portraNet/js/custom/browserSetting.js?version=2.37"></script>
		<script src="../portraNet/js/custom/pageShowing.js?version=1.13"></script>
			<!-- Intro Scripts -->
			<script src="../portraNet/js/custom/login.js?version=1.27"></script>
	    	<script src="../portraNet/js/custom/login_data_access.js?version=1.26"></script>
			<!-- Project Scripts -->
			<script src="../portraNet/js/custom/loadMore.js"></script>
			<script src="../portraNet/js/custom/category.js?version=1.01"></script>
			<script src="../portraNet/js/custom/search.js?version=1.02"></script>
			<script src="../portraNet/js/custom/bookmark_data_access.js?version=1.02"></script>
			<!-- Contact Scripts -->
			<script src="../portraNet/js/custom/contact_data_access.js?version=1.02"></script>
			<!-- Admin Scripts -->
			<script src="../portraNet/js/custom/admin_data_access.js?version=1.05"></script>
			<script src="../portraNet/js/custom/adminSearching.js?version=1.01"></script>
			<script src="../portraNet/js/custom/admin_function.js?version=1.01"></script>
			
		<!-- jQuery Mobile Function -->
	    <script src="../portraNet/js/jquery.mobile.custom.min.js?version=1.01"></script>
	    
		<!-- 북마크 아이콘 지정 (모바일) -->
		<link rel="apple-touch-icon" href="../portraNet/images/apple-touch-icon.png" />
		<!-- 주소창 자동 닫기 (모바일) -->
		<script src="../portraNet/js/custom/mobileSetting.js?version=1.01"></script>
		<!-- for iPhone -->
		<meta name="apple-mobile-web-app-capable" content="yes">  
		<meta name="apple-mobile-web-app-status-bar-style" content="black">		
	</head>
	
	<jsp:useBean id="projects" scope="request" class="java.util.ArrayList" />
	
	<!-- Main Page Start -->
	<body id="home" style="padding: 0;">
	
		<!-- Loading page -->
		<%@ include file="loading_page.jsp" %>
		
		<!-- Navigation Part --> 		
 		<%@ include file="navbar_page.jsp" %>
		
		<!-- Main wrap -->
		<div id="main-wrap" class="start-Page" style="display:none; background-color:#CCCCCC;">
			
			<!-- top Button -->
			<div id="topButton" class="top-btn"><a href="#home" onclick="$('#home').animatescroll();"><img src="../portraNet/images/top_btn.png" title="맨 위로" style="width: 40%;"></a></div>
			
			<!-- Intro page -->
			<div id="intro-wrap"><%@ include file="intro_page.jsp" %></div>
			
			<!-- About page -->
			<div id="about-wrap" style="background-image: url('../portraNet/images/main.png')"><%@ include file="about_page.jsp" %></div>
	 		 
	 		<!-- Project page -->
	 		<div id="project-wrap"><%@ include file="project_page.jsp" %></div>
	 		
	 		<!-- Contact page -->
	 		<div id="contact-wrap" style="background-image: url('../portraNet/images/contact.JPG')"><%@ include file="contact_page.jsp" %></div>
	 		
	 		<!-- Admin page -->
	 		<div id="admin-wrap" style="background-image: url('../portraNet/images/admin.png')"><%@ include file="admin_page.jsp" %></div>
	 		
		 	<!-- footer -->
			<div id="footer-wrap" style="display: none">
				<footer class="footer"">
					<div class="copyright">
						<p>Copyright &copy;List of My Life</p>
					</div>
				</footer>
			</div>
		</div><!-- // Main wrap -->
	
		<!-- Login Join MyPage -->
  		<%@ include file="login_join_mypage.jsp" %>
  			
  		<!-- Project modal Page -->
  		<%@ include file="project_modal_page.jsp" %>
  		
		<!-- iOS Web app script -->
		<script>(function(a,b,c){if(c in b&&b[c]){var d,e=a.location,f=/^(a|html)$/i;a.addEventListener("click",function(a){d=a.target;while(!f.test(d.nodeName))d    =d.parentNode;"href"in d&&(d.href.indexOf("http")||~d.href.indexOf(e.host))&&(a.preventDefault(),e.href=d.href)},!1)}})(document,window.navigator,"standalone")</script>
		
	</body>
</html>