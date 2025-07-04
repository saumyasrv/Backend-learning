
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Page</title>
</head>
<body>
   <h1>This is test page</h1>
   <c:out value="${i}"></c:out> <!-- value of scope is being printed as 23 which it is getting from index.jsp 
                                     we  defined the scope of i in index.jsp as "application" so the value of i will be 
                                     available for the whole application level-->
                                     
                                     
</body>
</html>