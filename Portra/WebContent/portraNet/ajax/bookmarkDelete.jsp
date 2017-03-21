<?xml version="1.0" encoding="UTF-8" ?>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="portra.portranet.UserDO" %>
<%@ page import="portra.portranet.PortraDAO" %>
<%@ page contentType="text/xml" pageEncoding="UTF-8" %>
<%
	request.setCharacterEncoding("utf-8");
 			
 	String username = request.getParameter("username");
 	String pj_id = request.getParameter("pj_id");
 	
 	boolean chk = false;
 	PortraDAO bookMark = new PortraDAO();
 	
 	chk = bookMark.bookmarkDelete(username, pj_id);
 	
 	if(chk == true) {
%>
		<state>true</state>
<%
 	} else {
%>
		<state>false</state> 
<%		
 	}
%>