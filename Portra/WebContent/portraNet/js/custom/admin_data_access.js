// 북마크 출력 함수
		function adminUserShowing() {
			$.ajax({
				type: "POST",
				cache: false,
				url: "ajax/adminUserShowing.jsp",
				dataType: 'xml',
				success: function(data) {
					$('.userResult').remove();
					$('.projectResult').remove();
					$('.messageResult').remove();
					
					$('.admin-search-project').attr('style', 'display: none');
					$('.admin-search-message').attr('style', 'display: none');
					$('.admin-search-user').removeAttr('style');
					
					$('.projectFunction').attr('style', 'display: none');
					$('.messageFunction').attr('style', 'display: none');
					$('.userFunction').removeAttr('style');
					
					$('.projectHeader').attr('style', 'display: none');
					$('.messageHeader').attr('style', 'display: none');
					$('.userHeader').removeAttr('style');
					$(data).find('user').each(function() {
						var us = "";
						
						us += "<tr class='userResult'>";
						us += 	"<td class='Admin-usid'>"+$(this).find('email').text()+"</td>";
						us +=	"<td>"+$(this).find('join').text()+"</td>";
						us += "</tr>";
					
						$('.resultTable-body').append(us);
						
					});
				},
				error: function(){
			        alert("유저 목록을 불러오는데 실패하였습니다.");
					return false;
				}
			});
		}
		
		// 프로젝트 출력 함수
		function adminProjectShowing() {
			$.ajax({
				type: "POST",
				cache: false,
				url: "ajax/adminProjectShowing.jsp",
				dataType: 'xml',
				success: function(data) {
					$('.userResult').remove();
					$('.projectResult').remove();
					$('.messageResult').remove();
					
					$('.admin-search-message').attr('style', 'display: none');
					$('.admin-search-user').attr('style', 'display: none');
					$('.admin-search-project').removeAttr('style');
					
					$('.userFunction').attr('style', 'display: none');
					$('.messageFunction').attr('style', 'display: none');
					$('.projectFunction').removeAttr('style');
					
					$('.userHeader').attr('style', 'display: none');
					$('.messageHeader').attr('style', 'display: none');
					$('.projectHeader').removeAttr('style');
					$(data).find('project').each(function() {
						var pj = "";
						
						pj += "<tr class='projectResult'>";
						pj += 	"<td>"+$(this).find('img').text()+"</td>";
						pj +=	"<td>"+$(this).find('title').text()+"</td>";
						pj +=	"<td>"+$(this).find('category').text()+"</td>";
						pj +=	"<td>"+$(this).find('bmcount').text()+"</td>";
						pj += "</tr>";
					
						$('.resultTable-body').append(pj);
						
					});
				},
				error: function(){
			        alert("프로젝트 목록을 불러오는데 실패하였습니다.");
					return false;
				}
			});
		}
		
		// 메세지 출력 함수
		function adminMessageShowing() {
			$.ajax({
				type: "POST",
				cache: false,
				url: "ajax/adminMessageShowing.jsp",
				dataType: 'xml',
				success: function(data) {
					$('.userResult').remove();
					$('.projectResult').remove();
					$('.messageResult').remove();
					
					$('.admin-search-user').attr('style', 'display: none');
					$('.admin-search-project').attr('style', 'display: none');
					$('.admin-search-message').removeAttr('style');
					
					$('.userFunction').attr('style', 'display: none');
					$('.projectFunction').attr('style', 'display: none');
					$('.messageFunction').removeAttr('style');
					
					$('.userHeader').attr('style', 'display: none');
					$('.projectHeader').attr('style', 'display: none');
					$('.messageHeader').removeAttr('style');
					$(data).find('message').each(function() {
						var msg = "";
						
						msg += "<tr class='messageResult'>";
						msg += 	"<td>"+$(this).find('name').text()+"</td>";
						msg +=	"<td>"+$(this).find('email').text()+"</td>";
						msg +=	"<td>"+$(this).find('msg').text()+"</td>";
						msg +=	"<td>"+$(this).find('time').text()+"</td>";
						msg += "</tr>";
					
						$('.resultTable-body').append(msg);
						
					});
				},
				error: function(){
			        alert("프로젝트 목록을 불러오는데 실패하였습니다.");
					return false;
				}
			});
		}