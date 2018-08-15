

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Clientes</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <LINK REL=StyleSheet HREF="style.css" TYPE="text/css" MEDIA=screen>
    </head>
    <body>
        
       <form class="login" action="login.jsp" method="get">
    <h1 class="login-title">Inicio</h1>
    <input type="text" class="login-input" placeholder="Usuario" autofocus name="usuario">
    <input type="password" class="login-input" placeholder="Contraseña" name="pwd">
    <input type="submit" value="Acceder" class="login-button">
  <p class="login-lost"><a href="">Olvidaste tu password</a></p>
  </form>
   
    </body>
</html>
