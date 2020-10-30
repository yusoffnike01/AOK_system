<%-- 
    Document   : donate1
    Created on : May 27, 2020, 1:37:20 AM
    Author     : user
--%>

<%@page import="FYP.DAO"%>
<%@page import="FYP.pengguna"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <title>JSP Page</title>
        <style>
            
                #profileid1
                {
                   
               
               
                 width:60%;
                
                
                border:2px solid #34495e;
         
                box-sizing: border-box;
                position:absolute;
                
                }

        </style>
    </head>
    
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
        <a class="nav-link" href="#">Application List</a>
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
        <a class="nav-link" href="#">Manage Schedule</a>
      </li>
       
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Management Donor
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="donate1.jsp">list of citizen</a>
          <a class="dropdown-item" href="#">Report</a>
  
        </div>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="homepage.html">Log out</a>
      </li>
    </ul>
  </div>
</nav>
    <body>
         <div class="table-responsive-sm">
             <table class="table">
                 
                 <tr>
                     <th>ID Citizen</th>
                     <th>Name</th>
                     <th>Email</th>
                     <th>No. Phone</th>
                     <th>Address</th>
                     <th>City</th>
                     <th>State</th>
                     <th>Total</th>
                     <th>Receipt</th>
                     <th>Action</th>
                     
                 </tr>
        <%
        
        List<pengguna>list=DAO.getAlldonation();
        
for(pengguna obj:list)
{
    %>
    <tr>
        <td><%=obj.getIdpenderma() %></td>
        <td><%=obj.getNama() %></td>
        <td><%=obj.getEmail() %></td>
        <td><%=obj.getNoTel() %></td>
        <td><%=obj.getAlamat() %></td>
        <td><%=obj.getBandar() %></td>
        <td><%=obj.getNegeri() %></td>
        <td><%=obj.getJumlah() %></td>
        <td> <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal<%=obj.getIdpenderma() %>">View Receipt</button></td>
        <td><a href="delete2.jsp?id1=<%=obj.getIdpenderma()  %>" onclick="return confirm('Are you sure to delete?')"><button  type="button" class="btn btn-info">Delete</button></a></td>
    </tr>
    
    
     <div id="myModal<%=obj.getIdpenderma() %>" class="modal fade" role="dialog">
			<div class="modal-dialog">
			   
					
				    <div class="modal-body">
                                     
                                      <img src="<%=obj.getBase64Image() %>" id="profileid1">
                                 
						
				    </div>
				
			</div>
		</div>
    <%
}
        
        %>
             </table>
         </div>
    </body>
</html>
