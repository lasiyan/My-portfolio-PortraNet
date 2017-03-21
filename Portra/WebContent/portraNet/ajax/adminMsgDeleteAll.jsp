<?xml version="1.0" encoding="UTF-8" ?>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="portra.portranet.SendDO" %>
<%@ page import="portra.portranet.PortraDAO" %>
<%@ page contentType="text/xml" pageEncoding="UTF-8" %>
<%
	request.setCharacterEncoding("utf-8");
 	
 	boolean chk = false;;
 	PortraDAO admin = new PortraDAO();
 
 	chk = admin.adminMsgAllDelete();
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
%>