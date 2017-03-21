// Intro Page Showing 
function introPage() {
	$('#about-wrap').fadeOut();
	$('#project-wrap').fadeOut();
	$('#contact-wrap').fadeOut();
	$('#admin-wrap').fadeOut();
	$('#intro-wrap').fadeIn(2000);
	
	$('#footer-wrap').attr("style", "display: none");
}

// About Page Showing
function aboutPage() {
	$('#intro-wrap').fadeOut();
	$('#project-wrap').fadeOut();
	$('#contact-wrap').fadeOut();
	$('#admin-wrap').fadeOut();
	$('#about-wrap').fadeIn(2000);
	
	$('#footer-wrap').attr("style", "display: block");
}

// Project Page Showing
function projectPage() {
	$('#intro-wrap').fadeOut();
	$('#about-wrap').fadeOut();
	$('#contact-wrap').fadeOut();
	$('#admin-wrap').fadeOut();
	$('#project-wrap').fadeIn(2000);
	
	$('#footer-wrap').attr("style", "display: block");
}

// Contact Page Showing
function contactPage() {
	$('#intro-wrap').fadeOut();
	$('#about-wrap').fadeOut();
	$('#project-wrap').fadeOut();
	$('#admin-wrap').fadeOut();
	$('#contact-wrap').fadeIn(2000);
	
	$('#footer-wrap').attr("style", "display: block");
}

// Admin Page Showing
function adminPage() {
	$('#intro-wrap').fadeOut();
	$('#about-wrap').fadeOut();
	$('#project-wrap').fadeOut();
	$('#contact-wrap').fadeOut();
	$('#admin-wrap').fadeIn(2000);
	
	$('#footer-wrap').attr("style", "display: block");
}

