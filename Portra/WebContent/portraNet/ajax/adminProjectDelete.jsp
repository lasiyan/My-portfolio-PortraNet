<?xml version="1.0" encoding="UTF-8" ?>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="portra.portranet.ProjectDO" %>
<%@ page import="portra.portranet.PortraDAO" %>
<%@ page contentType="text/xml" pageEncoding="UTF-8" %>
<%
	request.setCharacterEncoding("utf-8");
 	
	String projectDeleteValue = request.getParameter("projectDeleteValue");
 	
 	boolean chk = false;
 	boolean sameChk = false;
 	PortraDAO admin = new PortraDAO();
 	
 	sameChk = admin.PJsameChk(projectDeleteValue);
 	if(sameChk == false) {
%>
 		<state>noProject</state>
<%
 	}
 	else {
 		chk = admin.adminProjectDelete(projectDeleteValue);
 		if(chk == true) {
%>
 			<state>true</state>
<%	
 		}
 		else {
%>
 			<state>false</state>
<%	
 		}
 	}
%>