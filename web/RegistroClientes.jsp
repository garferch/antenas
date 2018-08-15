<%-- 
    Document   : RegistroClientes
    Created on : 14/08/2018, 07:25:50 PM
    Author     : Intersol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>RegistroClientes</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <LINK REL=StyleSheet HREF="style.css" TYPE="text/css" MEDIA=screen>
    </head>
    <body>
        
       <form class="login" action="Registrar.jsp" method="get">
    <h1 class="login-title">Registro Clientes</h1>
    <input type="text" class="login-input" placeholder="Cliente" autofocus name="usuario">
    <input type="password" class="login-input" placeholder="Direccion" name="pwd">
    <input type="password" class="login-input" placeholder="Telefono" name="pwd">
    <h1 class="login-title">Router</h1>
    <input type="text" class="login-input" placeholder="Router" autofocus name="usuario">
    <input type="password" class="login-input" placeholder="Direccion" name="pwd">
    <input type="password" class="login-input" placeholder="Telefono" name="pwd">
    <input type="submit" value="Guardar" class="login-button">
  <p class="login-lost"><a href="">Olvidaste tu password</a></p>
  </form>
   
    </body>
</html>
