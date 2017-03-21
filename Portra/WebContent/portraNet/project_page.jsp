<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Project Page</title>
	</head>
	
	<body>
		
		<!-- Project -->
 		<div id="project"></div>
 		<p id="now-user-temp" Style="display: none"></p>
 		<div class="project-content">
 			<div class="container project-container">
 				<div class="p-option">
 					<!-- Select BOX -->
 					<div class="selectBox black rounded">
	 					<select id="selectlist" name="category">
						    <option selected value="all">전체</option>
						    <option value="c">C/C++</option>
						    <option value="java">JAVA</option>
						    <option value="mobile">Mobile</option>
						    <option value="web">Web</option>
						    <option value="else">기타</option>						    
						</select>
					</div>
					<!-- SearchBar -->
					<div class="searchBar">
						<input id="search-text" type="text" onkeypress="if(event.keyCode==13) {searchPJ(); return false;}">
						<input id="search-btn" type="submit" value="Search" width="100" height="30" onClick="searchPJ();"/>
					</div>
				</div>
				
				<!-- Project list load from DB --> 				
 				<div class="proj_list">
					<%
						int count = 0;
						for(ProjectDO  pj : (ArrayList<ProjectDO>)projects) {
							count += 1;
							total += 1;
							
							if(count <=6) {
							%>
								<article class="onProject category-<%=pj.getPj_category()%>" style="display: block" data-target="#modal-<%=pj.getPj_id() %>" data-toggle="modal">
 									<div class ="pContent">
 										<a><div class ="project">
 											<img src ='../portraNet/images/project_img/<%=pj.getPj_img() %>.JPG' alt=''/>
 											</div>
 											<h4 class ='pTitle'><%=pj.getPj_title() %></h4>
 											<p class ='pSubtitle'><%=pj.getPj_sub() %></p>
 										</a>
 									</div>
 								</article>	
 							<%
							}
							else {
 							%>
 								<article class="category-<%=pj.getPj_category()%>" style="display: none" data-target="#modal-<%=pj.getPj_id() %>" data-toggle="modal">
 									<div class ="pContent">
 										<a><div class ="project">
 											<img src ='../portraNet/images/project_img/<%=pj.getPj_img() %>.JPG' alt=''/>
 											</div>
 											<h4 class ='pTitle'><%=pj.getPj_title() %></h4>
 											<p class ='pSubtitle'><%=pj.getPj_sub() %></p>
 										</a>
 									</div>
 								</article>
 							<%
 							}
						}
 					%>
 				</div>
 				
 		
 				<div class="load-more-btn">
 					<p>Load More(6 / <%out.print(total); %>)</p>
 				</div>
 			</div>
 		</div>
 	</body>
</html>