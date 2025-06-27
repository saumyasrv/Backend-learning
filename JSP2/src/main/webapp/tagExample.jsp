<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib uri="/WEB-INF/mylib.tld" prefix="t" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>Hello World!</h1>
  <t:mytag></t:mytag>
  
  <hr>
  <t:printTableTag number = "23" color="red"></t:printTableTag>
  <t:printTableTag number = "9" color="blue"></t:printTableTag>
   
</body>
</html>