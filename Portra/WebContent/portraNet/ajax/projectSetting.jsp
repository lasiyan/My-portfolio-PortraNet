<?xml version="1.0" encoding="UTF-8" ?>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="portra.portranet.ProjectDO" %>
<%@ page import="portra.portranet.PortraDAO" %>
<%@ page contentType="text/xml" pageEncoding="UTF-8" %>
<%
	request.setCharacterEncoding("utf-8");
 	
 	PortraDAO project = new PortraDAO();
 	ArrayList<ProjectDO> projectList = new ArrayList<ProjectDO>();
 	
 	projectList = project.projectSetting();
%>
	<contents>
<%	
	for(ProjectDO  pj : (ArrayList<ProjectDO>)projectList) {
%>
		<bookmark>
			<pjid><%=pj.getPj_id() %></pjid>
			<img><%=pj.getPj_img() %></img>
			<title><%=pj.getPj_title() %></title>
			<sub><%=pj.getPj_sub() %></sub>
			<cate><%=pj.getPj_category() %></cate>
		</bookmark>
<%
	}
%>
	</contents>
