<%-- 
    Document   : manageapplication
    Created on : May 29, 2020, 1:04:38 AM
    Author     : user
--%>

<%@page import="java.util.List"%>
<%@page import="FYP.file"%>
<%@page import="FYP.DAO"%>
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
        
<title>Application</title>
        
<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">


        <style>
            
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
      <li class="nav-item">
        <a class="nav-link" href="profilemanager.jsp">My Profile <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
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
        <a class="nav-link" href="#">Manage Schedule</a>
      </li>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="homepage.html">Log out</a>
      </li>
    </ul>
  </div>
         </nav><br>
    <center>
        <h3>  List Apply for a Volunteer AOK UMT</h3>
    </center>
       <div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver1 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
								
									<th class="cell100 column1">No</th>
									<th class="cell100 column2">Email</th>
									<th class="cell100 column3">Date</th>
									<th class="cell100 column4">File</th>
									<th class="cell100 column5">Action</th>
									
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>
                                                            <%
                                                                List<file>list=DAO.getAllfile();
                                                                
                                                                int i=1;
for(file a:list)
{
    
                                                                %>
								<tr class="row100 body">
									<td class="cell100 column1"><%=i++ %></td>
									<td class="cell100 column2"><%=a.getEmail() %></td>
									<td class="cell100 column3"><%=a.getTime() %></td>
									<td class="cell100 column4"><a href="view_file.jsp?id=<%=a.getId() %>">F<%=a.getId() %></a></td>
									<td class="cell100 column5"><a href="delete3.jsp?id=<%=a.getId()  %>" onclick="return confirm('Are you sure to delete?')"><button  type="button" class="btn btn-info">Delete</button></a></td>
								</tr>

							<% }%>

								
							</tbody>
						</table>
					</div>
				</div>
				
			
		</div>
       </div>
         <div class="footer-bottom">
		Copyright © 2020 Intan SPAOKUMT, All Rights Reserved
	</div>
    </body>
</html>
