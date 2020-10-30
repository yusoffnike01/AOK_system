<%-- 
    Document   : edit shedule
    Created on : May 29, 2020, 9:53:01 PM
    Author     : user
--%>

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
        <title>Edit Schedule </title>
        <style>
            .container
            {

                margin-top: 3%;
                width:55%;
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
            @media  (max-width: 768px) {
                
                .container
            {

                margin-top: 3%;
                width:98%;
            }
                
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

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Management Schedule
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="manageshedule.jsp">List Schedule</a>
                            <a class="dropdown-item" href="edit shedule.jsp">Edit Schedule</a>

                        </div>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="homepage.html">Log out</a>
                    </li>
                </ul>
            </div>
        </nav>
        <!-- Default form register -->
        <div class="container">
            <form class="text-center border border-light p-5" action="process.jsp">

                <p class="h4 mb-4">Edit Schedule</p>



                <!-- Hari -->

                <select name="day"  class="form-control mb-4">

                    <option value="Sunday">Sunday</option>
                    <option value="Monday">Monday</option>
                    <option value="Tuesday">Tuesday</option>
                    <option value="Wednesday">Wednesday</option>
                    <option value="Thursday">Thursday</option>
                    <option value="Friday">Friday</option>
                    <option value="Saturday">Saturday</option>
                </select>


                <!-- time -->
                <select name="time" id="defaultRegisterFormEmail" class="form-control mb-4">
                    <option value="4PM-6PM">4PM-6PM</option>
                    <option value="8PM-10PM">8PM-10PM</option>
                    <option value="10PM-12PM">10PM-12PM</option>



                </select>


                <!-- selected volunteer -->
                <input type="text"  class="form-control" placeholder="Selected Volunteer" aria-describedby="defaultRegisterFormPhoneHelpBlock" name="idv">


                <!-- edit -->
                
                <button class="btn btn-info my-4 btn-block" type="submit" name="Submit" value="Edit Schedule">Edit Schedule</button>



            </form>
        </div>
        <div class="footer-bottom">
            Copyright © 2020 Intan SPAOKUMT, All Rights Reserved
        </div>
    </body>
</html>