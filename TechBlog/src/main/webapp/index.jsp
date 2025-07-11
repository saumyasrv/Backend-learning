<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- css -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
<style>
   .banner-background{
       clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 93%, 56% 100%, 22% 95%, 0 100%, 0 0);
       }
</style>

</head>
<body>

<!-- navbar --> 
<%@include file = "normal_navbar.jsp" %>

<!-- banner -->

<div class="container-fluid p-0 m-0">
  <div class="jumbotron primary-background text-white banner-background">
    <div class="container">
   
     <h3 class="display-3">Welcome to Tech Blog</h3> 
     <p>Programming languages differ from natural languages in that natural languages are used for interaction between people, while programming languages are designed to allow humans to communicate instructions to machines</p>
     <p>The term computer language is sometimes used interchangeably with "programming language".However, usage of these terms varies among authors.</p>
   
     <button class="btn btn-outline-light btn-lg"><span class="fa fa-user-plus"></span>Start! It's free</button>
     <a href="login_page.jsp" class="btn btn-outline-light btn-lg"><span class="fa fa-user-circle fa-spin"></span>Login</a>
   </div> 
  </div>
  
</div>

<!-- cards --> 
<div class="container"> 

   <div class="row mb-2">
   
     <div class="col-md-4">
        <div class="card">
  
  <div class="card-body">
    <h5 class="card-title">Java Programming Language</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
</div>
     
     <div class="col-md-4">
        <div class="card">
  
  <div class="card-body">
    <h5 class="card-title">Java Programming Language</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
</div>
     
     <div class="col-md-4">
        <div class="card">
  
  <div class="card-body">
    <h5 class="card-title">Java Programming Language</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
</div>
   
   </div>
   
   
   <div class="row">
   
     <div class="col-md-4">
        <div class="card">
  
  <div class="card-body">
    <h5 class="card-title">Java Programming Language</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
</div>
     
     <div class="col-md-4">
        <div class="card">
  
  <div class="card-body">
    <h5 class="card-title">Java Programming Language</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
</div>
     
     <div class="col-md-4">
        <div class="card">
  
  <div class="card-body">
    <h5 class="card-title">Java Programming Language</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
</div>
   
   </div>

   


</div>

<!-- javascripts --> 
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>


<script src="js/myjs.js" type="text/javascript"></script>
<!--  <script>
   $(document).ready(function() {
       alert("document loaded")
})
</script> -->
</body>
</html>