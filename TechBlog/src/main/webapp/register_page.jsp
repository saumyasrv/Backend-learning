<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
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
  <%@include file="normal_navbar.jsp" %>
  
<main class="primary-background p-5 banner-background" style="padding-bottom: 80px;">
    <div class="container">
       <div class="col-md-6 offset-md-3">
           <div class="card">
               <div class="card-header text-center primary-background text-white">
               <span class="fa fa-3x fa-user-circle"></span>
               <br>
               Register here
               </div>
               <div class="card-body">
        <form>
        
        	 <div class="form-group">
				    <label for="user_name">User Name</label>
  				    <input type="text" class="form-control" id="user_name" aria-describedby="emailHelp">
			 </div>
			 
			 
       		 <div class="form-group">
				    <label for="exampleInputEmail1">Email address</label>
  				    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
   					<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
			 </div>
			 

			  <div class="form-group">
			    <label for="exampleInputPassword1">Password</label>
			    <input type="password" class="form-control" id="exampleInputPassword1">
			  </div>
			  
			  <div class="form-group">
			    <label for="gender">Select Gender</label>
			    <br>
			    <input type="radio" id="gender" name="gender">Male
			    <input type="radio" id="gender" name="gender">Female
			  </div>
			  
			  <div class="form-group">
			     <textarea name="about" class="form-control" rows="5" placeholder="Enter something about yourself"></textarea>
			  </div>
			  
			  <div class="form-group form-check">
			    <input type="checkbox" class="form-check-input" id="exampleCheck1">
			    <label class="form-check-label" for="exampleCheck1"> Agree Terms & Conditions</label>
			  </div>
			  
			  
			  
 		      <button type="submit" class="btn primary-background text-white">Submit</button>
      </form>
               </div>
              
           </div>
       </div>
    </div>




</main>


<!-- javascripts --> 
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>


<script src="js/myjs.js" type="text/javascript"></script>
</body>
</html>