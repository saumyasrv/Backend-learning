<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp page</title>
</head>
<body>
    <h1>Fun Page</h1>
    <p>this page is all about using function tags</p>
    <c:set var = "name" value="Hello World"></c:set>
  <h1><c:out value="${name}"></c:out></h1> 
  
  <h1>Length of name is <c:out value="${fn: length(name)}"></c:out></h1>  <!-- function tags are used for operations like string manipulation -->
  <c:out value="${fn: toLowerCase(name)}"></c:out>
  <br>
  <c:out value="${fn:contains(name, 'Hello')}"></c:out>
</body>
</html>