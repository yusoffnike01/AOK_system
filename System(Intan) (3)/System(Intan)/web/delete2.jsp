<%-- 
    Document   : delete2
    Created on : May 27, 2020, 2:14:34 AM
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
        <%  String id=request.getParameter("id1");
        System.out.println("idvo"+id);
int status=DAO.getdeletedonate(id);
if(status>0)
{
    response.sendRedirect("donate1.jsp");
    System.out.println("success");
}
else
{
    response.sendRedirect("donate1.jsp");
    System.out.println("fail");
}
           
           %>
    </body>
</html>
