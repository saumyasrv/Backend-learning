<%@page import="com.tech.blog.entities.User" %>
<%@page errorPage="error_page.jsp" %>
<%

 User user = (User)session.getAttribute("currentUser");
  if(user==null) {
	  response.sendRedirect("login_page.jsp");
  }

%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     <%= user.getName() %>
     <br>
     <%= user.getEmail() %>
     <br>
     <%= user.getAbout() %>
</body>
</html>