<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup</title>
 <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</head>
<body style="background: url(img/wallpaper.jpg); background-size: cover; backfround-attachment: fixed;">
  <div class="container">
    <div class="row">
      <div class="col m6 offset-m3">
         <div class="card">
            <div class="card-content">
              <h3 style="margin-top: 10px;" class="center-align">Register Here!!</h3>
              
              <div class="form center-align">
                <!-- Creating form -->
                
                <form action="register" method="post">
                  <input type="text" name="user_name" placeholder="Enter user name"/>
                  <input type="password" name="user_password" placeholder="Enter user password"/>
                  <input type="email" name="user_email" placeholder="Enter user email"/>
                
                  <button type="submit" class="btn pink lighten-4">Submit</button>
                
                </form>
              </div>
              
              <div class="loader center-align" style="margin-top: 10px; display: none;">
              
                 <div class="preloader-wrapper active">
                     <div class="spinner-layer spinner-red-only">
                        <div class="circle-clipper left">
                          <div class="circle"></div>
                            </div><div class="gap-patch">
                                <div class="circle"></div>
                                   </div><div class="circle-clipper right">
                                      <div class="circle"></div>
                                 </div>
                          </div>
                        </div>
                        
                        <h6>Please Wait!</h6>
              </div>
              
            </div>
         </div>
      </div>
    </div>
   </div>
   <script
  src="https://code.jquery.com/jquery-3.7.1.min.js"
  integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
  crossorigin="anonymous"></script>
  
  <script>
     $(document).ready(function() {
console.log("page is ready..")
})

  </script>
  
</body>
</html>