<%-- 
    Document   : clientes
    Created on : 23/07/2018, 12:45:00 PM
    Author     : Intersol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if ((session.getAttribute("user") == null) || (session.getAttribute("user") == "")) {
%>
No estas logeado<br/>
<a href="index.jsp">Login</a>
<%} else {
%>
Bienvenido <%=session.getAttribute("user")%>
<a href='logout.jsp'>Salir</a>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
<%
    }
%>