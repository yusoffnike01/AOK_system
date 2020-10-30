<%-- 
    Document   : package
    Created on : May 26, 2020, 9:25:11 PM
    Author     : user
--%>

<%@page import="FYP.DAO"%>
<%@page import="java.util.List"%>
<%@page import="FYP.pakej"%>
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
        <title>Manage package</title>
        <style>
            
            .container1
            {
               
          
                width:70%;
                margin-left: 15%;
            }
            
             .footer-bottom{
             
	width: 100%;
	padding: 20px 0;
      position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
    
   
	text-align: center;
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
        <a class="nav-link" href="#">Manage package</a>
      </li>
         
          <li class="nav-item">
        <a class="nav-link" href="#">Manage Schedule</a>
      </li>
     
       <li class="nav-item">
        <a class="nav-link" href="homepage.html">Log out</a>
      </li>
    </ul>
  </div>
        </nav>
        <div class="container1">
        <div class="table-wrapper-scroll-y my-custom-scrollbar">
<div class="table-responsive-sm">
             <table class="table">
                 
                 <tr>
                     <th>ID Package</th>
                     <th>Detail Package</th>
                     <th>Price</th>
                     <th>Location</th>
                     <th colspan="2">Action</th>
                 </tr>
        <%
            List<pakej>list=DAO.getdisplay();
            
        for(pakej obj:list)
        {
            %>
            <tr><td>
            <%=obj.getIdPakej() %>
            </td>
            <td><%=obj.getButiranPakej() %></td>
            <td><%=obj.getHargaPakej() %></td>
            <td><%=obj.getLokasi() %></td>
            <td><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal<%=obj.getIdPakej() %>">Edit</button></td>
            </tr>
            
            
            <div id="myModal<%=obj.getIdPakej() %>" class="modal fade" role="dialog">
			<div class="modal-dialog">
			    <div class="modal-content">
					<div class="modal-header">
						 <button type="button" class="close" data-dismiss="modal">&times;</button>
						    <h4 class="modal-title">Update</h4>
				    </div>
				    <div class="modal-body">
                                        <form action="process.jsp" method="POST">
                                            <input type="hidden"  name="idpackej" value="<%=obj.getIdPakej() %>">
                                            <label>Details:</label>
                                            <input type="text" name="detail" value="<%=obj.getButiranPakej() %>">
                                            <br>
                                             <label>Price:</label>
                                            <input type="text" name="price" value="<%=obj.getHargaPakej() %>">
                                            <br>
                                             <label>Location</label>
                                            <input type="text" name="location" value="<%=obj.getLokasi() %>"><br>
                                                <input type="submit" name="Submit"  value="Edit Packej">
                                        </form>
						
						
						
				    </div>
				</div>
			</div>
		</div>
            <%
        }
            %>
             </table>
</div>
        </div>
        </div>
                <div class="footer-bottom">
		Copyright © 2020 Intan SPAOKUMT, All Rights Reserved
	</div>
    </body>
</html>
