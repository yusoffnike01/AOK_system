<%-- 
    Document   : file-list
    Created on : May 28, 2020, 1:51:01 PM
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
        <title>JSP Page</title>
    </head>
    <body>
        <%
            List<file>list=DAO.getAllfile();
            
for(file a:list)
{
    %>
    <%=a.getEmail() %>
    <%=a.getFile() %>
    <%=a.getPath() %>
    <%
}
            
            
            %>
    </body>
</html>
