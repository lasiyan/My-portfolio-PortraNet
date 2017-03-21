<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"  errorPage="error_page.jsp" import="portra.portranet.*, java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="dao" class="portra.portranet.PortraDAO"/>
<jsp:useBean id="project" class="portra.portranet.ProjectDO"/>
<jsp:setProperty name="project" property="*"/> 

<% 
	// 컨트롤러 요청 파라미터
	String action = request.getParameter("action");

	// 파라미터에 따른 요청 처리
	if(action.equals("list")) {
		ArrayList<ProjectDO> projects = dao.getDBList();
		
		request.setAttribute("projects", projects);
		pageContext.forward("main.jsp");
	}
	else {
		out.println("<script>alert('action 파라미터를 확인해 주세요!!!')</script>");
	}
%>