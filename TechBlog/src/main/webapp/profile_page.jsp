<%@page import="com.tech.blog.entities.User" %>
<%@page errorPage="error_page.jsp" %>
<%

 User user = (User)session.getAttribute("currentUser");
  if(user==null) {
	  response.sendRedirect("login_page.jsp");
  }

%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile page</title>
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
      <nav class="navbar navbar-expand-lg navbar-dark primary-background">
  <a class="navbar-brand" href="index.jsp"><span class="fa fa-asterisk"></span>Tech Blog</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#"><span class="fa fa-bell-o"></span>Learn code with Saumya <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false"><span class="	fa fa-check-square-o"></span>
          Categories
        </a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="#">Programming language</a>
          <a class="dropdown-item" href="#">Project Implementation</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Data Structure</a>
        </div>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="#"><span class="fa fa-address-card-o"></span>Contact</a>
      </li>
       
      
    </ul>
    <ul class="navbar-nav mr-right">
      <li class="nav-item">
        <a class="nav-link" href="#!" data-toggle="modal" data-target="#profile-modal"><span class="fa fa-user-circle"></span><%= user.getName() %></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="LogoutServlet"><span class="fa fa-user-plus"></span>Logout</a>
      </li>
    
    </ul>
  </div>
</nav>
      
      <!-- end of navbar -->
  
  <!-- profile modal --> 
  <!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="profile-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header primary-background text-white text-center">
        <h5 class="modal-title" id="exampleModalLabel">Tech Blog</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
	      <div class="container text-center">
	           <img alt="profile image" src="pics/<%= user.getProfile() %>" class="img-fluid" style="border-radius: 50%; max-width:150px">
	             <br>
	            <h5 class="modal-title mt-3" id="exampleModalLabel"><%= user.getName() %></h5>
	             <!-- details --> 
	             <div id="profile-details">
	             <table class="table">
 
					  <tbody>
					    <tr>
					      <th scope="row">ID:</th>
					      <td><%= user.getId() %></td>
					      
					    </tr>
					    <tr>
					      <th scope="row">Email:</th>
					      <td><%= user.getEmail() %></td>
					      
					    </tr>
					    <tr>
					      <th scope="row">Gender:</th>
					      <td><%= user.getGender() %></td>
					     
					    </tr>
					    <tr>
					      <th scope="row">Status:</th>
					      <td><%= user.getAbout()%></td>
					     
					    </tr>
					    <tr>
					      <th scope="row">Registered on:</th>
					      <td><%= user.getRdate().toString()%></td>
					     
					    </tr>
					  </tbody>
					</table>
				</div>
				
				
				<!-- profile edit -->
				<div id="profile-edit" style="display:none">
				   <h3 class="mt-2">Please Edit Carefully</h3>
				     <form action="EditServlet" method="post">
				        <table class="table">
				          <tr>
				             <td>ID:</td>
				             <td><%= user.getId() %></td>
				          </tr>
				          <tr>
				             <td>Email:</td>
				             <td><input type="email" class="form-control"name="user_email" value="<%= user.getEmail()%>"></td>
				          </tr>
				          <tr>
				             <td>Name:</td>
				             <td><input type="text" class="form-control"name="user_name" value="<%= user.getName()%>"></td>
				          </tr>
				          <tr>
				             <td>Password:</td>
				             <td><input type="password" class="form-control"name="user_password" value="<%= user.getPassword()%>"></td>
				          </tr>
				          
				          <tr>
					      <td>Gender:</td>
					      <td><%= user.getGender().toUpperCase() %></td>
					      
					       <tr>
				             <td>About:</td>
				             <td>
				               <textarea class="form-control" name="user_about" rows="3"><%= user.getAbout() %>
				               </textarea>
				             </td>
				          </tr>
				          
					       <tr>
				             <td>Profile Pic:</td>
				             <td>
				               <input type="file" name="profile_pic" class="form-control">
				             </td>
				          </tr>
					     
					    </tr>
				        
				        </table>
				        <div class="container">
				          <button type="submit" class="btn  primary-background text-white">Save</button>
				        </div>
				     </form>
				</div>
					
	      </div>
               
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button id="edit-profile-button" type="button" class="btn  primary-background text-white">EDIT</button>
      </div>
    </div>
  </div>
</div>
  
  <!-- end of profile modal -->
  
  
  
  <!-- javascripts --> 
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

<script src="js/myjs.js" type="text/javascript"></script>

<script type="text/javascript">
   $(document).ready(function() {
      let editStatus = false;
      
	   
	   
       $("#edit-profile-button").click(function(){
          
           if(editStatus==false) {
        	  $("#profile-details").hide()
              $("#profile-edit").show()
              editStatus=true;
        	  $(this).text("Back");  //here 'this' is edit-profile-button
           }
           else {
        	   $("#profile-details").show()
               $("#profile-edit").hide()
               editStatus=false;
        	   $(this).text("EDIT");
           }
       })
   }
		   );
 
</script>



</body>
</html>