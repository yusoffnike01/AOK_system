<%-- 
    Document   : success
    Created on : May 28, 2020, 11:20:46 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:if test="${requestScope.msg!=null}">
            <h3><c:out value="${requestScope.msg}"></c:out></h3>
        </c:if>
        <c:if test="${sessionScope.filename!=null}">
            <c:set var="file" scope="session" value="${sessionScope.filename}"/>
        </c:if>
            <a href="<c:url value="Downloadservlet?filename=${file}"/>">Download</a>
             <a href="<c:url value="file-list.jsp"/>">view list</a>
    </body>
</html>
