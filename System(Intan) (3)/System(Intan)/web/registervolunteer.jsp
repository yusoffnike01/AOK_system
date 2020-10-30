<%-- 
    Document   : registervolunteer
    Created on : May 22, 2020, 11:37:26 PM
    Author     : user
--%>

<%@page import="FYP.pengguna"%>
<%@page import="FYP.DAO"%>
<%@page import="java.util.List"%>
<%@page import="FYP.sukarelawan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style>
    
    .footer-bottom{
	width: 100%;
	padding: 20px 0;
	text-align: center;
	color: #fff;
	background: rgb(9, 95, 234);
        
}
.table-responsive-sm
{
    height:457px;
}
@media  (max-width: 768px) {
     .footer-bottom{
	width: 100%;
	padding: 20px 0;
	text-align: center;
	color: #fff;
	background: rgb(9, 95, 234);
        margin-top: 95.5%;

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
      <li class="nav-item ">
        <a class="nav-link" href="profilemanager.jsp">My Profile <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="manageapplication.jsp">Application List</a>
      </li>
     
      <li class="nav-item dropdown active">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Management volunteer
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="resvolunter.jsp">register</a>
          <a class="dropdown-item" href="registervolunteer">manage</a>
  
        </div>
      </li>
     <li class="nav-item dropdown active">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Management Schedule
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="manageshedule.jsp">List Table</a>
          <a class="dropdown-item" href="#">Edit Table</a>
  
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="donate1.jsp">Donation</a>
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
        <br><br>
         
         <div class="table-responsive-sm">
             <table class="table">
                 <tr>
      <th>ID</th>
      <th>Nama</th>
      <th>IC</th>
      <th>No.Phone</th>
      <th>Email</th>
      <th>Umur</th>
      <th>Categori</th>
      <th>Alamat</th>
      <th>Bandar</th>
      <th>Negeri</th>
      <th colspan="2">Action</th>
                 </tr>
      
      <%
          List<sukarelawan> list=DAO.getAllsukarelawan(e.getId());
          
for(sukarelawan obj:list)
{
    %>
    <tr>
        <td><%=obj.getIdsukarelawan() %></td>
        <td><%=obj.getNama()  %></td>
        <td><%=obj.getIc() %></td>
        <td><%=obj.getPhone() %></td>
        <td><%=obj.getEmail()  %></td>
        <td><%=obj.getUmur()  %></td>
        <td><%=obj.getCategori() %></td>
        <td><%=obj.getAlamat() %></td>
        <td><%=obj.getState() %></td>
        <td><%=obj.getCity() %></td>
        <td>  <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal<%=obj.getIdsukarelawan() %>">Edit</button></td>
    <td><a href="delete1.jsp?id=<%=obj.getIdsukarelawan()  %>" onclick="return confirm('Are you sure to delete?')"><button  type="button" class="btn btn-info">Delete</button></a></td>
    
    
    </tr>
    
      <div id="myModal<%=obj.getIdsukarelawan() %>" class="modal fade" role="dialog">
			<div class="modal-dialog">
			    <div class="modal-content">
					<div class="modal-header">
						 <button type="button" class="close" data-dismiss="modal">&times;</button>
						    <h4 class="modal-title">Update</h4>
				    </div>
				    <div class="modal-body">
                                        <form action="process.jsp" method="POST">
                                            <input type="hidden"  name="idvolunter" value="<%=obj.getIdsukarelawan() %>">
                                            <label>Alamat:</label>
                                            <input type="text" name="alamat" value="<%=obj.getAlamat() %>">
                                            <br>
                                             <label>Bandar:</label>
                                            <input type="text" name="bandar" value="<%=obj.getCity() %>">
                                            <br>
                                             <label>Negeri:</label>
                                            <input type="text" name="negeri" value="<%=obj.getState() %>"><br>
                                                <input type="submit" name="Submit"  value="Edit">
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
  
  	<div class="footer-bottom">
		Copyright © 2020 Intan SPAOKUMT, All Rights Reserved
	</div>
    </body>
</html>
