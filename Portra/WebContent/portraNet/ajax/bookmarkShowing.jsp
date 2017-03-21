<?xml version="1.0" encoding="UTF-8" ?>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="portra.portranet.UserDO" %>
<%@ page import="portra.portranet.BookmarkDO" %>
<%@ page import="portra.portranet.PortraDAO" %>
<%@ page contentType="text/xml" pageEncoding="UTF-8" %>
<%
	request.setCharacterEncoding("utf-8");
 			
 	String username = request.getParameter("username");
 	
 	PortraDAO bookmark = new PortraDAO();
 	ArrayList<BookmarkDO> bookmarkList = new ArrayList<BookmarkDO>();
 	
 	bookmarkList = bookmark.bookmarkShowing(username);
%>
	<contents>
<%	
	for(BookmarkDO  bm : (ArrayList<BookmarkDO>)bookmarkList) {
%>
		<bookmark>
			<pjid><%=bm.getBMPj_id() %></pjid>
			<title><%=bm.getTitle() %></title>
			<src><%=bm.getSrc() %></src>
		</bookmark>
<%
	}
%>
	</contents>
