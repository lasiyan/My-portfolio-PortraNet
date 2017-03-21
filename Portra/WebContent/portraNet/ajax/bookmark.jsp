<?xml version="1.0" encoding="UTF-8" ?>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="portra.portranet.UserDO" %>
<%@ page import="portra.portranet.PortraDAO" %>
<%@ page contentType="text/xml" pageEncoding="UTF-8" %>
<%
	request.setCharacterEncoding("utf-8");
 			
 	String username = request.getParameter("username");
 	String img = request.getParameter("img");
 	String title = request.getParameter("title");
 	String imgsrc = request.getParameter("img_src");
 	String pj_id = request.getParameter("pj_id");
 	
 	boolean insert_chk = false;
 	boolean same_chk = false;
 	PortraDAO bookMark = new PortraDAO();
 	
 	if(username != null && username != "" && img != null && img != "" && title != null && title != "" && imgsrc != null && imgsrc != "") {
 		same_chk = bookMark.bookmarkAddChk(username, img);
 		if(same_chk == false) {
 			insert_chk = bookMark.bookmarkInsert(username, pj_id, img, imgsrc, title);
 		} else {
 %>
 			<state>already</state>
 <%
 		}
 	}
 	if(insert_chk == false) {
%>
		<state>false</state>
<%
 	} else {
%>
		<state>true</state> 
<%		
 	}
%>