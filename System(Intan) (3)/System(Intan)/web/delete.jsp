<%-- 
    Document   : delete
    Created on : Dec 22, 2019, 1:35:29 AM
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
           String  id=request.getParameter("id");
int status=DAO.getdelete(id);

if(status>0)
{
    response.sendRedirect("managePackage.jsp");
    System.out.println("succesfull");
}
else{
    response.sendRedirect("managePackage.jsp");
    System.out.println("fail");
}

            
            %>
    </body>
</html>
