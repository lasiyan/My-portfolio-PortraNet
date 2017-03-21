<?xml version="1.0" encoding="UTF-8" ?>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="portra.portranet.UserDO" %>
<%@ page import="portra.portranet.PortraDAO" %>
<%@ page contentType="text/xml" pageEncoding="UTF-8" %>
<%
	request.setCharacterEncoding("utf-8");

	session.invalidate();

	String email = request.getParameter("email");
	String password = request.getParameter("password");
	boolean chk = false;
	PortraDAO userDAO = new PortraDAO();
	 	
	if(email != null && email != "" && password != null && password != "") {
		chk = userDAO.getLoginCheck(email, password);
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