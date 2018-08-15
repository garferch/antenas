<%-- 
    Document   : AccesPoint
    Created on : 25/07/2018, 06:44:04 PM
    Author     : Intersol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Antenas</title>
         <LINK REL=StyleSheet HREF="style.css" TYPE="text/css" MEDIA=screen>
    </head>
    <body>
         <ul id="menu">
            <li><a href="registroClientes.jsp">Clientes</a></li>
            <li><a href="antenas.jsp">Antenas</a></li>
            <li><a href="buscar.jsp">Buscar</a></li>
            <li><a href="index.jsp">Salir</a></li>
         </ul>
        <form class="login" action="Registrar.jsp" method="get">
           
        <h1 class="login-title">Registro Antenas</h1>
        <input type="text" class="login-input" placeholder="Antena" autofocus name="antena">
        <input type="text" class="login-input" placeholder="SSID" autofocus name="ssid">
        <input type="password" class="login-input" placeholder="WEP" name="wep">
        <input type="text" class="login-input" placeholder="Usuario" name="routermac">
        <input type="password" class="login-input" placeholder="Contraseña" name="routercontraseña">
        <select id="frecuencia" name="frecuencia" class="select">
        
          <option>Frecuencia</option>
          <option value="2.4">2.4 Ghz</option>
          <option value="5">5 Ghz</option>
        </select>
       
    </body>
</html>
