<?xml version="1.0" encoding="UTF-8" ?>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="portra.portranet.SendDO" %>
<%@ page import="portra.portranet.PortraDAO" %>
<%@ page contentType="text/xml" pageEncoding="UTF-8" %>
<%
	request.setCharacterEncoding("utf-8");
 			
 	String sdname = request.getParameter("sdName");
 	String sdemail = request.getParameter("sdEmail");
 	String sdmsg = request.getParameter("sdMsg");
 	String nowUser = request.getParameter("nowUser");
 	boolean chk = false;
 	PortraDAO sendDAO = new PortraDAO();
 	
 	if(sdname != null && sdname != "" && sdemail != null && sdemail != "" && sdmsg != null && sdmsg != "") {
 		chk = sendDAO.sendMessage(sdname, sdemail, sdmsg, nowUser);
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