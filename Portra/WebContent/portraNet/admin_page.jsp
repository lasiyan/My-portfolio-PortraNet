<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Admin Page</title>
		
	</head>

	<body>
	
		<div class="admin">
			<div class="admin-container">
				<div class="admin-button">
					<button id="user-btn" class="admin-user-btn" onClick="adminUserShowing();">USER</button>
					<button id="project-btn" class="admin-project-btn" onClick="adminProjectShowing();">PROJECT</button>
					<button id="message-btn" class="admin-message-btn" onClick="adminMessageShowing();">MESSAGE</button>
				</div>
				
				<div class="admin-search">
					<div class="admin-search-user" style="display: none">
						회원 검색 :	<input type="text" id="adminUserSearchInput" placeholder="User ID"/>
					</div>
					<div class="admin-search-project" style="display: none">
						프로젝트 검색 : <input type="text" id="adminProjectSearchInput" placeholder="Project Img or Title"/>
					</div>
					<div class="admin-search-message" style="display: none">
						메세지 검색 : <input type="text" id="adminMessageSearchInput" placeholder="Name, Email or Content"/>
					</div>
				</div>
				
				<div class="admin-resultWindow">
					<table class="resultTable">
						<thead>
							<tr class="userHeader" style="display: none">
								<th>ID</th>
								<th>가입일</th>
							</tr>
							<tr class="projectHeader" style="display: none">
								<th>IMG</th>
								<th>타이틀</th>
								<th>카테고리</th>
								<th>북마크 횟수</th>
							</tr>
							<tr class="messageHeader" style="display: none">
								<th>이름</th>
								<th>이메일</th>
								<th>내용</th>
								<th>보낸 시간</th>
							</tr>
						</thead>
						<tbody class="resultTable-body">
							
						</tbody>
					</table>
				</div>
				
				<div class="admin-functionWindow">
					<div class="userFunction" style="display: none">
						<input id="userAddName" placeholder="userID"/>
						<input id="userAddPassword" placeholder="Password"/>
						<button onClick="adminAddUser();">회원등록</button>
						<br>
						<input id="userDeleteName" placeholder="userID"/>
						<button onClick="adminDeleteUser();">회원삭제</button>
					</div>
					
					<div class="projectFunction" style="display: none">
						<input id="projectDeleteValue" placeholder="Title or Img name"/>
						<button onClick="adminDeleteProject();">프로젝트 삭제</button>
					</div>
					
					<div class="messageFunction" style="display: none">
						<input id="messageDeleteName" placeholder="이름 또는 이메일"/>
						<button  onClick="adminDeleteMsgForName();">메세지 삭제</button>
						<br>
						<input id="messageDeleteContent" placeholder="포함된 내용 삭제"/>
						<button onClick="adminDeleteMsgForContent();">메세지 삭제</button>
						<br>
						<button id="messageDeleteAll" onClick="adminDeleteMsgAll();">전체 삭제</button>
					</div>
				</div>
			</div>
		</div>
			
	</body>
</html>