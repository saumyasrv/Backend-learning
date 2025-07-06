<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>All users are:</h1>
    
<sql:setDataSource driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/youtube" user="root" password="root" var="ds"/>
 <sql:query dataSource="${ds}" var="result">select * from table1;</sql:query>
 
 <div class="container">
 <table class="table">
   <thead>
      <tr>
         <th>User ID</th>
         <th>User name</th>
         <th>User city</th>
      </tr>
   </thead>
   <tbody>
      <c:forEach items="${result.rows}" var="row">
         <tr>
            <td><c:out value="${row.tId}" /></td>
            <td><c:out value="${row.tName}" /></td>
            <td><c:out value="${row.tCity}" /></td>
         </tr>
      </c:forEach>
   </tbody>
</table>
</div>

</body>
</html>