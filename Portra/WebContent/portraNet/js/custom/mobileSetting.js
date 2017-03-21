// 모바일에서 실행 시 주소 창 숨기기 - 안드로이드 지원
window.onload = function() {
	setTimeout(function() {
		window.scrollTo(0, 1);
	}, 100);
};
	
// addEventListener 이벤트
window.addEventListener('load', function(){
	setTimeout(scrollTo, 1);
}, false);