$(document).ready(function() {
			// 회원 이름 검색 기능
			$('#adminUserSearchInput').keyup(function() {
				var inputVal = $(this).val();
				$('.resultTable>tbody>tr').hide();
				
				var temp = ".resultTable>tbody>tr>td:nth-child(2n+1):contains('"+inputVal+"')";
				$(temp).parent().show();
			});	
			
			// 프로젝트 이미지, 타이틀 검색 기능
			$('#adminProjectSearchInput').keyup(function() {
				var inputVal = $(this).val();
				$('.resultTable>tbody>tr').hide();
				
				var temp = ".resultTable>tbody>tr>td:nth-child(4n+1):contains('"+inputVal+"')";
				var temp2 = ".resultTable>tbody>tr>td:nth-child(4n+2):contains('"+inputVal+"')";
				$(temp).parent().show();
				$(temp2).parent().show();
			});
			
			// 메세지 보낸이, 이메일, 내용 검색 기능
			$('#adminMessageSearchInput').keyup(function() {
				var inputVal = $(this).val();
				$('.resultTable>tbody>tr').hide();
				
				var temp = ".resultTable>tbody>tr>td:nth-child(4n+1):contains('"+inputVal+"')";
				var temp2 = ".resultTable>tbody>tr>td:nth-child(4n+2):contains('"+inputVal+"')";
				var temp3 = ".resultTable>tbody>tr>td:nth-child(4n+3):contains('"+inputVal+"')";
				$(temp).parent().show();
				$(temp2).parent().show();
				$(temp3).parent().show();
			});
		});