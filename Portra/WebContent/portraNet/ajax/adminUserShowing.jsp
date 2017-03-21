<?xml version="1.0" encoding="UTF-8" ?>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="portra.portranet.UserDO" %>
<%@ page import="portra.portranet.PortraDAO" %>
<%@ page contentType="text/xml" pageEncoding="UTF-8" %>
<%
	request.setCharacterEncoding("utf-8");
 			
 	PortraDAO user = new PortraDAO();
 	ArrayList<UserDO> userList = new ArrayList<UserDO>();
 	
 	userList = user.adminUserShowing();
%>
	<contents>
<%	
	for(UserDO  us : (ArrayList<UserDO>)userList) {
%>
		<user>
			<email><%=us.getUs_email() %></email>
			<join><%=us.getUs_join() %></join>
		</user>
<%
	}
%>
	</contents>
