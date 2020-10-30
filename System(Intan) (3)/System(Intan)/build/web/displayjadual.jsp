<%-- 
    Document   : displayjadual
    Created on : May 29, 2020, 3:41:44 PM
    Author     : user
--%>


<%@page import="FYP.DAO"%>
<%@page import="java.util.List"%>
<%@page import="FYP.jadual"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <title>TOD</title>
        <!-- Bootstrap -->
        <style>
            
             .container
             {
               
                 margin-top: 3%;
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
.row{
    width:80%;
    margin-left: 10%;
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
        <a class="nav-link" href="manageprofilevolunteer.jsp">My Profile <span class="sr-only">(current)</span></a>
      </li>
           
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Management
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="displayjadual.jsp">Schedule</a>
         
  
        </div>
      </li>
      
         
         
      </li>
       <li class="nav-item">
        <a class="nav-link" href="homepage.html">Log out</a>
      </li>
    </ul>
  </div>
</nav>
        
        <div class="row">
          
            <h3 style="margin-left:40%;">
                TABLE OF DUTY
                
            </h3>
        
		<div class="table-responsive table-bordered movie-table">
            <table class="table movie-table">
                        <thead  class="cf">
                            <tr>
                                
                        <h3> <th>DAY</th>
                                <th>4 PM - 6 PM</th>
                                <th>8 PM - 10 PM</th>
                                <th>10 PM - 12 PM</th>
                        </h3>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                            <tr>
                                <th>MONDAY</th>
                                <%  List <jadual> list=DAO.getschedule();
        
                                
for(jadual a:list)
{
                         
if(a.getHari().equalsIgnoreCase("Monday"))
{
    if(a.getMasa().equalsIgnoreCase("4PM-6PM"))
    {
        %>
                                <td><%=a.getIdv() %></td>                      
                                <%
    }
}

if(a.getHari().equalsIgnoreCase("Monday"))
{
if(a.getMasa().equalsIgnoreCase("8PM-10PM"))
    {
%>

<td><%=a.getIdv() %></td>  

<%
}

}

if(a.getHari().equalsIgnoreCase("Monday"))
{
if(a.getMasa().equalsIgnoreCase("10PM-12PM"))
{
%>
<td><%=a.getIdv() %></td>  


<%
}
}


                       %>
 
                                <%}%>
                            </tr>
                            </tr>
                            <tr>
                            <tr>
                                <th>TUESDAY</th>
                                <%
                                    List<jadual> list2=DAO.getschedule();
                                    
for(jadual b:list2)
{
    if(b.getHari().equalsIgnoreCase("Tuesday"))
{
if(b.getMasa().equalsIgnoreCase("4PM-6PM"))
{
    %>
                                <td><%=b.getIdv() %></td> 
            <%
}

else if(b.getMasa().equalsIgnoreCase("8PM-10PM"))
{
%>
<td><%=b.getIdv() %></td> 

<%
}
else if (b.getMasa().equalsIgnoreCase("10PM-12PM"))
{
%>
<td><%=b.getIdv() %></td> 
<%
}
}

}
                                    %>
                              
                            </tr>
                            </tr>
                           
                            <tr>
                            <tr>
                                <th>WEDNESDAY</th>
                                <%
                                    List<jadual> list3=DAO.getschedule();
                                    
for(jadual b:list3)
{
    if(b.getHari().equalsIgnoreCase("Wednesday"))
{
if(b.getMasa().equalsIgnoreCase("4PM-6PM"))
{
    %>
                                <td><%=b.getIdv() %></td> 
                                <%
            
            
}
else if(b.getMasa().equalsIgnoreCase("8PM-10PM"))
{
%>
                                <td><%=b.getIdv() %></td> 
                                <%


}
else if(b.getMasa().equalsIgnoreCase("10PM-12PM")){
%>
                                <td><%=b.getIdv() %></td> 
                                <%
}
}
}
    %>
                            </tr>
                            </tr>
                            <tr>
                            <tr>
                                <th>THURSDAY</th>
                                 <%
                                    List<jadual> list4=DAO.getschedule();
                                    
for(jadual b:list4)
{
    if(b.getHari().equalsIgnoreCase("Thursday"))
{
if(b.getMasa().equalsIgnoreCase("4PM-6PM"))
{
    %>
                                <td><%=b.getIdv() %></td> 
                                <%
            
            
}
else if(b.getMasa().equalsIgnoreCase("8PM-10PM"))
{
%>
                                <td><%=b.getIdv() %></td> 
                                <%


}
else if(b.getMasa().equalsIgnoreCase("10PM-12PM")){
%>
                                <td><%=b.getIdv() %></td> 
                                <%
}
}
}
    %>
                            </tr>
                            </tr>
                            <tr>
                            <tr>
                                <th>FRIDAY</th>
                               <%
                                    List<jadual> list5=DAO.getschedule();
                                    
for(jadual b:list5)
{
    if(b.getHari().equalsIgnoreCase("Friday"))
{
if(b.getMasa().equalsIgnoreCase("4PM-6PM"))
{
    %>
                                <td><%=b.getIdv() %></td> 
                                <%
            
            
}
else if(b.getMasa().equalsIgnoreCase("8PM-10PM"))
{
%>
                                <td><%=b.getIdv() %></td> 
                                <%


}
else if(b.getMasa().equalsIgnoreCase("10PM-12PM")){
%>
                                <td><%=b.getIdv() %></td> 
                                <%
}
}
}
    %>
                            </tr>
                            </tr>
                            <tr>
                            <tr>
                                <th>SATURDAY</th>
                                 <%
                                    List<jadual> list6=DAO.getschedule();
                                    
for(jadual b:list6)
{
    if(b.getHari().equalsIgnoreCase("Saturday"))
{
if(b.getMasa().equalsIgnoreCase("4PM-6PM"))
{
    %>
                                <td><%=b.getIdv() %></td> 
                                <%
            
            
}
else if(b.getMasa().equalsIgnoreCase("8PM-10PM"))
{
%>
                                <td><%=b.getIdv() %></td> 
                                <%


}
else if(b.getMasa().equalsIgnoreCase("10PM-12PM")){
%>
                                <td><%=b.getIdv() %></td> 
                                <%
}
}
}
    %>
                            </tr>
                            </tr>
                            <tr>
                            <tr>
                                <th>SUNDAY</th>
                               <%
                                    List<jadual> list7=DAO.getschedule();
                                    
for(jadual b:list7)
{
    if(b.getHari().equalsIgnoreCase("Sunday"))
{
if(b.getMasa().equalsIgnoreCase("4PM-6PM"))
{
    %>
                                <td><%=b.getIdv() %></td> 
                                <%
            
            
}
else if(b.getMasa().equalsIgnoreCase("8PM-10PM"))
{
%>
                                <td><%=b.getIdv() %></td> 
                                <%


}
else if(b.getMasa().equalsIgnoreCase("10PM-12PM")){
%>
                                <td><%=b.getIdv() %></td> 
                                <%
}
}
}
    %>
                            </tr>
                            </tr>

                        </tbody>
                    </table>
                </div>
            </div>
      
            <div class="footer-bottom">
		Copyright © 2020 Intan SPAOKUMT, All Rights Reserved
	</div>
    </body>
</html>