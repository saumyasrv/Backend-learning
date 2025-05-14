<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<head>
<body>

<h1>Welcome to Home Page</h1>
<p>This is my first page</p>

<%=   new Date().toLocaleString()   %>

<br>

<a href = "login">Login Servlet</a>

</body>
</head>