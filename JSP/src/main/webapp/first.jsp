<%@page import="java.text.BreakIterator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import= "java.util.*" %> <!-- Page directive -->
    <!-- there are a few properties of page directive...google it -->
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <!-- include the error page for error handling --> 
    <%@page errorPage="error_page.jsp" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{
   margin : 0px;
   padding : 0px; 
}
</style>
</head>
<body>

   <%@include file="header.jsp" %>

   <h1>Random number : 
       <%
        Random r = new Random();
        int n = r.nextInt(6); // 6 is upperbound that means it will give me numbers from 0-5
       %>
      
      <%= n  %>
   </h1>

    <%!
       int a = 10;
       int b = 30;
       String name = "Hello";
       
       public int doSum() {
    	   return a+b;
       }
       
       public String reverseString () {
    	   StringBuffer br = new StringBuffer(name);
    	   return br.reverse().toString();
       }
     %>
     
     <%
       out.println(a);
       out.println("<br>");
       out.println(b); // we do not need to create out object of PrintWriter in jsp because it has its own out object to print
       out.println("<br>");
       out.println("sum is "+doSum());
       
       out.println("<br>");

       out.println(reverseString());
     %>
     
     
     <h1>Sum = <%= doSum() %></h1>
     
     
     
     <!-- taglib directive-->
     <c:set var="name" value="Saumya"></c:set>
     <c:out value="${name }"></c:out>
     
     <c:if test="${3>2 }">
        <h2>This is true block, 3>2 </h2>
     </c:if>
     
     <!-- error handling in jsp --> 
     <%!
       int n1 = 20;
       int n2 = 0;
     %>
     
     
     <%
        int division =n1/n2;
     %>
     
     <h1>Division = <%=division %></h1>
</body>
</html>