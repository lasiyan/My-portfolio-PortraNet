<?xml version="1.0" encoding="UTF-8" ?>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="portra.portranet.UserDO" %>
<%@ page import="portra.portranet.PortraDAO" %>
<%@ page contentType="text/xml" pageEncoding="UTF-8" %>
<%
	request.setCharacterEncoding("utf-8");
 			
 	String userID = request.getParameter("userID");
 	String userPwd = request.getParameter("userPwd");
 	
 	boolean chk = false;
 	boolean already = true;
 	PortraDAO userDAO = new PortraDAO();
 	
 	already = userDAO.sameChk(userID);
 	if(already == true) {
%>
 		<state>already</state>
<%
 	}
 	else {
 		chk = userDAO.userSingUp(userID, userPwd);
 		if(chk == false) {
%>
 			<state>false</state>
<%
 		} else {
%>
			<state>true</state>
<%
 		}
 	} 
%>