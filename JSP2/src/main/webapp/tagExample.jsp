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
  
  
  <!-- JSP implicit objects -->
  
  <%
    out.println("This is my implicit object.");
    request.getParameter("");
    response.sendRedirect("");
    // config(ServletConfig)
    
    //application(ServletContext)
    
    //session
    
    out.println(session.isNew());
    session.setAttribute("name", 123);
    
    //page: current jsp page:
    
    	
    	//exception:Throwable...
    	
    	
    	//pageContext: PageContext
    	
    	/** 
    	Object              Type
    	out                JspWriter
    	request            HttpServletRequest
    	repsonse           HttpServletResponse
    	config             ServletConfig
    	application        ServletContext
    	session            HttpSession
    	pageContext        PageContext
    	page               Object
    	exception          Throwable
    	*/
  
  %>
   
</body>
</html>