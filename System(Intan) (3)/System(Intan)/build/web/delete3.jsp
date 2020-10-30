<%-- 
    Document   : delete3
    Created on : May 29, 2020, 11:47:56 AM
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
            
int status=DAO.getdeletefile(id);

if(status>0)
{
    response.sendRedirect("manageapplication.jsp");
}
else
{
    response.sendRedirect("manageapplication.jsp");
}
            %>
    </body>
</html>
