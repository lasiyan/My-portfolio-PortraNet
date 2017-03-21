<?xml version="1.0" encoding="UTF-8" ?>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="portra.portranet.UserDO" %>
<%@ page import="portra.portranet.PortraDAO" %>
<%@ page contentType="text/xml" pageEncoding="UTF-8" %>
<%
	request.setCharacterEncoding("utf-8");
 			
 	String userID = request.getParameter("userID");
 	
 	boolean chk = false;
 	boolean sameChk = false;
 	PortraDAO admin = new PortraDAO();
 	
 	sameChk = admin.sameChk(userID);
 	if(sameChk == false) {
%>
 		<state>noID</state>
<%
 	}
 	else {
 		chk = admin.adminUserDelete(userID);
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