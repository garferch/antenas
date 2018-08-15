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
         <ul id="menu">
            <li><a href="registroClientes.jsp">Clientes</a></li>
            <li><a href="antenas.jsp">Antenas</a></li>
            <li><a href="buscar.jsp">Buscar</a></li>
            <li><a href="index.jsp">Salir</a></li>
         </ul> 
    <form class="login" action="Registrar.jsp" method="get">
           
        <h1 class="login-title">Registro Clientes</h1>
        <input type="text" class="login-input" placeholder="Cliente" autofocus name="cliente">
        <input type="password" class="login-input" placeholder="Direccion" name="direccion">
        <input type="password" class="login-input" placeholder="Telefono" name="telefono">
         
        <select id="antena" name="Antena" class="select">
          <option>Antena</option>
              <option value="IntersolN">IntersolN</option>
          <option value="IntersolOm">IntersolOm</option>
          <option value="IntersolOmn">IntersolOmn</option>
          <option value="IntersolOe">IntersolOe</option>
                    <option value="IntersolW">IntersolW</option>

        </select>
     
        
        <select id="paquete" name="Paquete" class="select">
          <option>Paquete</option>
              <option value="basico">Basico</option>
          <option value="medio">Standard</option>
          <option value="alto">Premium</option>


        </select>
        <p></p>   
        <h1 class="login-title">Router</h1>
        <input type="text" class="login-input" placeholder="Router" autofocus name="router">
        <input type="text" class="login-input" placeholder="MAC" name="routermac">
        <input type="text" class="login-input" placeholder="Usuario" name="routermac">
        <input type="password" class="login-input" placeholder="Contraseña" name="routercontraseña">
        <input type="text" class="login-input" placeholder="SSID" name="ssid">
          <input type="password" class="login-input" placeholder="WEP" name="wep">
<p></p> 
        <h1 class="login-title">Antena</h1>
        <input type="text" class="login-input" placeholder="Antena" autofocus name="antena">
        <input type="text" class="login-input" placeholder="MAC" name="antenamac">
        <input type="text" class="login-input" placeholder="Usuario" name="antenausuario">
        <input type="password" class="login-input" placeholder="Contraseña" name="antenacontraseña">
        <input type="submit" value="Guardar" class="login-button">
      
  </form>
   
    </body>
</html>
