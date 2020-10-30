<%-- 
    Document   : report
    Created on : May 27, 2020, 12:03:20 PM
    Author     : user
--%>

<%@page import="FYP.DAO"%>
<%@page import="FYP.pengguna"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://cdn.zingchart.com/zingchart.min.js"></script>
        <script src="https://cdn.zingchart.com/zingchart.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

        <title>JSP Page</title>
        <style>
            .container
            {
                width:80%;
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
        </style>
    </head>
    <body>
        
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
          <a class="dropdown-item" href="registervolunteer">manage</a>
  
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Manage Schedule</a>
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
        
        
        
        
       <%!
        // --- String Join Function converts from Java array to javascript string.  
        public String join(ArrayList<?> arr, String del) {

            StringBuilder output = new StringBuilder();

            for (int i = 0; i < arr.size(); i++) {

                if (i > 0) {
                    output.append(del);
                }

                // --- Quote strings, only, for JS syntax  
                if (arr.get(i) instanceof String) {
                    output.append("\"");
                }
                output.append(arr.get(i));
                if (arr.get(i) instanceof String) {
                    output.append("\"");
                }
            }

            return output.toString();
        }
    %>  
    <div class="container">
    
      <div id="myChart1"></div>  
    </div>
      
      <%     // --- Create two Java Arrays  
        ArrayList<String> month = new ArrayList<String>();
        ArrayList<Double> total = new ArrayList<Double>();

        // --- Loop 10 times and create 10 string dates and 10 users  
        List<pengguna> list6 = DAO.getgraph();
        for (pengguna obj : list6) {

            month.add("" + obj.getTime());
            System.out.println("time"+obj.getTime());
            total.add(obj.getJumlah());
        }


    %>  
    
    <script>
        
        var month = [<%= join(month, ",")%>];
    var total = [<%= join(total, ",")%>];
    </script>
    
    
<div class="footer-bottom">
		Copyright © 2020 Intan SPAOKUMT, All Rights Reserved
	</div>
    </body>
        <script>
    window.onload = function () {
        zingchart.render({
            id: "myChart1",
            width: "100%",
            height: 380,
            
            data: {
                "type": "bar",
                "title": {
                    "text": "Jumlah Sumbagan setiap Bulan"
                },
                "scale-x": {

                    "labels": month
                },
                "plot": {
                    "line-width": 1,
                    'background-color': "turquoise"
                },
                "series": [{

                        "values": total,
                   



                    }


                ]
            }
        });}
    </script>
    
</html>
