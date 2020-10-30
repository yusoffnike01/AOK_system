<%-- 
    Document   : delete1
    Created on : May 24, 2020, 11:14:58 PM
    Author     : user
--%>

<%@page import="FYP.DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id=request.getParameter("id");
            
int status=DAO.deletevolunteer(id);
if (status>0)
{
    
    response.sendRedirect("registervolunteer.jsp");
}
else
{
    response.sendRedirect("registervolunteer.jsp");
}
           
            
            
            %>
    </body>
</html>
