<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Project Modal</title>
	</head>
	
	<body>
		
		<%
 			for(ProjectDO  pj : (ArrayList<ProjectDO>)projects) {
 		%>
 				<div class="modal fade" id="modal-<%=pj.getPj_id() %>">
					<div class="modal-dialog modal-lg modal-size">
						<div class="modal-content">
						<!-- Modal view header -->
							<div class="modal-header">
						    	<!-- 닫기(x) 버튼 -->
								<button type="button" class="close" data-dismiss="modal">×</button>
								<!-- header title -->
								<h4 class="modal-title"><%=pj.getPj_title() %></h4>
								<h5 class="modal-subtitle"><%=pj.getPj_sub() %></h5>
							</div>
							<!-- Modal view body -->
							<div class="modal-body">
								<!-- Modal view content load from DB -->
						    	<img src="../portraNet/images/project_detail/<%=pj.getPj_id()%>/<%=pj.getPj_dimg1()%>.JPG" alt=""/>
								<div class="modal-infotext"><p class="p-infotext"><%=pj.getPj_dinfo1() %></p></div>
								
								<img src="../portraNet/images/project_detail/<%=pj.getPj_id()%>/<%=pj.getPj_dimg2()%>.JPG" alt=""/>
								<div class="modal-infotext"><p class="p-infotext"><%=pj.getPj_dinfo2() %></p></div>
								
								<img src="../portraNet/images/project_detail/<%=pj.getPj_id()%>/<%=pj.getPj_dimg3()%>.JPG" alt=""/>
								<div class="modal-infotext"><p class="p-infotext"><%=pj.getPj_dinfo3() %></p></div>
									
								<img src="../portraNet/images/project_detail/<%=pj.getPj_id()%>/<%=pj.getPj_dimg4()%>.JPG" alt=""/>
								<div class="modal-infotext"><p class="p-infotext"><%=pj.getPj_dinfo4() %></p></div>
									
								<img src="../portraNet/images/project_detail/<%=pj.getPj_id()%>/<%=pj.getPj_dimg5()%>.JPG" alt=""/>
								<div class="modal-infotext"><p class="p-infotext"><%=pj.getPj_dinfo5() %></p></div>
									
								<img src="../portraNet/images/project_detail/<%=pj.getPj_id()%>/<%=pj.getPj_dimg6()%>.JPG" alt=""/>
								<div class="modal-infotext"><p class="p-infotext"><%=pj.getPj_dinfo6() %></p></div>
									
								<img src="../portraNet/images/project_detail/<%=pj.getPj_id()%>/<%=pj.getPj_dimg7()%>.JPG" alt=""/>
								<div class="modal-infotext"><p class="p-infotext"><%=pj.getPj_dinfo7() %></p></div>
									
						      </div>
						      <!-- Modal view footer -->
							<div class="modal-footer">
								<button type="button" class="btn btn-default" onClick="addBM(<%=pj.getPj_id() %>,'<%=pj.getPj_title() %>', '<%=pj.getPj_img() %>');">BookMark</button>
								<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
		<%
 			}
		%>

 	</body>
</html>