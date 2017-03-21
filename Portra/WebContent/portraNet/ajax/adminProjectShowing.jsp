<?xml version="1.0" encoding="UTF-8" ?>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="portra.portranet.ProjectDO" %>
<%@ page import="portra.portranet.PortraDAO" %>
<%@ page contentType="text/xml" pageEncoding="UTF-8" %>
<%
	request.setCharacterEncoding("utf-8");
 			
 	PortraDAO project = new PortraDAO();
 	ArrayList<ProjectDO> projectList = new ArrayList<ProjectDO>();
 	
 	projectList = project.adminProjectShowing();
%>
	<contents>
<%	
	for(ProjectDO  pj : (ArrayList<ProjectDO>)projectList) {
%>
		<project>
			<img><%=pj.getPj_img() %></img>
			<title><%=pj.getPj_title() %></title>
			<category><%=pj.getPj_category() %></category>
			<bmcount><%=pj.getPj_bmcount() %></bmcount>
		</project>
<%
	}
%>
	</contents>
