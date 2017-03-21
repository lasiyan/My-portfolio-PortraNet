<?xml version="1.0" encoding="UTF-8" ?>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="portra.portranet.UserDO" %>
<%@ page import="portra.portranet.PortraDAO" %>
<%@ page contentType="text/xml" pageEncoding="UTF-8" %>
<%
	request.setCharacterEncoding("utf-8");
 			
 	String email = request.getParameter("email");
 	String pwd = request.getParameter("pwd");
 	
 	boolean chk = false;
 	PortraDAO userDAO = new PortraDAO();
 	
 	if(email != null && email != "" && pwd != null && pwd != "") {
 		chk = userDAO.userSingUp(email, pwd);
 	}
 	if(chk == false) {
%>
		<state>false</state>
<%
 	} else {
%>
		<state>true</state> 
<%		
 	}
%>