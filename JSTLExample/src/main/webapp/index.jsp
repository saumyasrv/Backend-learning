
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Example</title>
</head>
<body>
   <h1>This is JSTL Example</h1>
   
  <!-- 1. out tag: -->
  
  <!-- 2.set tag -->
  
  <c:set var="i" value="23" scope="application"></c:set> <!-- 1)application level 
                                                              2)session level
                                                              3)request scope
                                                              4)page level -->
  
  <h1> <c:out value="${i}"></c:out></h1>
  
  <!-- 3. remove tag -->
  <c:remove var="i"/>
    <h1> <c:out value="${i}">this is default value</c:out></h1>
    
    <hr>
    
    <!-- 4. if tag -->
    
      <c:set var="i" value="23" scope="application"></c:set> 
    
   <c:if test="${i==23}">
      <h1>Yes i is 23, condition is true</h1>
      
   </c:if>
  
  <!-- 5.choose, when, otherwise : like switch statement in java -->
  
  <c:choose>
     <c:when test="${i>0}">
        <h1>this is my case 1</h1>
            <h2>number is positive</h2>
     </c:when>
     
     <c:when test="${i<0}">
        <h1>this is my case 2</h1>
          <h2>number is negative</h2>
     </c:when>
     
     <c:otherwise>
        <h1>Default case</h1>
           <h2>number is 0</h2>
     </c:otherwise>
  
  
  </c:choose>
  
  <!-- 6. forEach tag -->
  
  <c:forEach var="j" begin="1" end="10"> <!-- we can use items instead of begin and end if we have a list of items already -->
      <h1>value of j is <c:out value="${j}"></c:out></h1>
  </c:forEach>
  
  <!-- 7,8 url and redirect tag -->
  
  <c:url var="myurl" value="https://www.google.com/search">
      <c:param name="q" value="java indonesia"></c:param>
  </c:url>
  
  <h1> <c:out value="${myurl}"></c:out> </h1>
  
 <%
    //<c:redirect url="${myurl}"></c:redirect>

 %>

  
</body>
</html>