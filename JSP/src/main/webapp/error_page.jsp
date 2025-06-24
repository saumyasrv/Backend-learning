<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page isErrorPage="true" %><!-- made this true to make it an error page -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sorry!! Something went wrong </title>
<style type="text/css">
  *{
   padding:0px;
   margin:0px;
  
  }

</style>
</head>
<body>
    <div style="padding:20px; color: pink; background: #e2e2e2;" >
   <h1>Sorry!! Something went wrong</h1>
   <br>
   <p><%= exception %></p>  <!-- exception here is an implicit object which will give the exact exception -->
   </div>
</body>
</html>