<%-- 
    Document   : profilemanager
    Created on : May 25, 2020, 12:34:51 PM
    Author     : user
--%>

<%@page import="FYP.DAO"%>
<%@page import="FYP.pengguna"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <title>profile manager</title>
        <style>
    
    .footer-bottom{
	width: 100%;
	padding: 20px 0;
	text-align: center;
        position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
	color: #fff;
	background: rgb(9, 95, 234);

}
.container{
    margin-left: 15.5%;
}
@media  (max-width: 768px) {
     .footer-bottom{
	width: 100%;
	padding: 20px 0;
	text-align: center;
        position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
	color: #fff;
	background: rgb(9, 95, 234);
      

}
</style>
    </head>
    <body>
        
        
         <!--
        
        for log out
        
        -->
<script>
            function togglebar()
            {
                document.getElementById("bar").classList.toggle('active');
            }
           
      $(document).ready(function() {
         function disablePrev() { window.history.forward() }
         window.onload = disablePrev();
         window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
      });
   
             
           </script>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">SPAOKUMT</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="profilemanager.jsp">My Profile <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="manageapplication.jsp">Application List</a>
      </li>
     
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Management volunteer
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="resvolunter.jsp">register</a>
          <a class="dropdown-item" href="registervolunteer.jsp">manage</a>
  
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="package.jsp">Manage package</a>
      </li>
         
          <li class="nav-item">
        <a class="nav-link" href="manageshedule.jsp">Manage Schedule</a>
      </li>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="homepage.html">Log out</a>
      </li>
    </ul>
  </div>
</nav>
         <% 
                 
                pengguna e = DAO.getmanagerBySession((String)session.getAttribute("user"));
       
        %>
        
     <div class="container">
	<div class="row">
		
		<div class="col-md-9">
		    <div class="card">
		        <div class="card-body">
		            <div class="row">
		                <div class="col-md-12">
		                    <h4>Your Profile</h4>
		                    <hr>
		                </div>
		            </div>
		            <div class="row">
		                <div class="col-md-12">
                                    <form action="process.jsp" method="POST">
                              <div class="form-group row">
                                  <input name="id"  class="form-control here" required="required" type="hidden" value="<%=e.getId() %>">
                                <label for="username" class="col-4 col-form-label">Name*</label> 
                                <div class="col-8">
                                  <input name="name" placeholder="Name" class="form-control here" required="required" type="text" value="<%=e.getNama() %>">
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="name" class="col-4 col-form-label">IC</label> 
                                <div class="col-8">
                                  <input  name="ic" placeholder="IC" class="form-control here" type="text" value="<%=e.getIc() %>">
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="lastname" class="col-4 col-form-label">No.Phone</label> 
                                <div class="col-8">
                                  <input  name="phone" placeholder="No.phone" class="form-control here" type="text" value="<%=e.getNoTel() %>">
                                </div>
                              </div>
                                        <div class="form-group row">
                                <label for="lastname" class="col-4 col-form-label">Email </label> 
                                <div class="col-8">
                                  <input  name="email" placeholder="email" class="form-control here" type="email" value="<%=e.getEmail() %>">
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="text" class="col-4 col-form-label">Address</label> 
                                <div class="col-8">
                                  <input id="text" name="address" placeholder="address" class="form-control here" required="required" type="text" value="<%=e.getAlamat() %>">
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="text" class="col-4 col-form-label">City</label> 
                                <div class="col-8">
                                  <input id="text" name="city" placeholder="city" class="form-control here" required="required" type="text" value="<%=e.getBandar() %>">
                                </div>
                              </div>
                            <div class="form-group row">
                                <label for="lastname" class="col-4 col-form-label" >State</label> 
                                <div class="col-8">
                                    <select name="state">
                                   <option  selected><%=e.getNegeri() %></option>
                                    <option>KEDAH</option>
                                    <option>KELANTAN</option>
                                    <option>MELAKA</option>
                                    <option>NEGERI SEMBILAN</option>
                                    <option>PAHANG</option>
                                    <option>PERAK</option>
                                    <option>PERLIS</option>
                                    <option>PULAU PINANG</option>
                                    <option>SABAH</option>
                                    <option>SARAWAK</option>
                                    <option>TERENGGANU</option>
                                    <option>W.P(KUALA LUMPUR)</option>
                                    <option>W.P(LABUAN)</option>
                                    <option>W.P(PUTRAJAYA)</option></select>
                                </div>
                              </div>
                             
                           
                              <div class="form-group row">
                                <label for="newpass" class="col-4 col-form-label"> Password</label> 
                                <div class="col-8">
                                  <input id="newpass" name="password"  class="form-control here" type="text" value="<%=e.getPassword() %>">
                                </div>
                              </div> 
                              <div class="form-group row">
                                <div class="offset-4 col-8">
                                  <button name="Submit" type="submit" class="btn btn-primary" value="Update My Profile">Update My Profile</button>
                                </div>
                              </div>
                            </form>
		                </div>
		            </div>
		            
		        </div>
		    </div>
		</div>
	</div>
</div>
                                <div class="footer-bottom">
		Copyright © 2020 Intan SPAOKUMT, All Rights Reserved
	</div>
    </body>
</html>
