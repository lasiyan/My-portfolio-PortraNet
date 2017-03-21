<?xml version="1.0" encoding="UTF-8" ?>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="portra.portranet.SendDO" %>
<%@ page import="portra.portranet.PortraDAO" %>
<%@ page contentType="text/xml" pageEncoding="UTF-8" %>
<%
	request.setCharacterEncoding("utf-8");
 	
	String messageDeleteName = request.getParameter("messageDeleteName");
 	
 	boolean chk = false;
 	boolean sameChk = false;
 	PortraDAO admin = new PortraDAO();
 	
 	sameChk = admin.MsgForNameSameChk(messageDeleteName);
 	if(sameChk == false) {
%>
 		<state>noMsg</state>
<%
 	}
 	else {
 		chk = admin.adminMsgForNameDelete(messageDeleteName);
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