<%-- 
    Document   : buscar
    Created on : 14/08/2018, 11:15:35 PM
    Author     : garferch
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="conexion.conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <LINK REL=StyleSheet HREF="style.css" TYPE="text/css" MEDIA=screen>
    </head>
    <body>
        <ul id="menu">
            <li><a href="registroClientes.jsp">Clientes</a></li>
            <li><a href="antenas.jsp">Antenas</a></li>
            <li><a href="buscar.jsp">Buscar</a></li>
            <li><a href="index.jsp">Salir</a></li>
         </ul> 
        <form class="login" action="buscar.jsp" method="get">
           
        <h1 class="login-title">Buscar</h1>
        <label>
            <input type="radio" name="buscar" value="clientes" checked> Cliente
        </label>
        <label>
            <input type="radio" name="buscar" value="ssid"> SSID
        </label>
        <label>
            <input type="radio" name="buscar" value="antenas"> Antena
        </label>
        <input type="text" class="login-input" placeholder="Valor a buscar" autofocus name="antena">
        <input type="submit" value="Buscar" class="login-button">
        
         <%
    String user = request.getParameter("usuario");    
    String pwd = request.getParameter("contraseña");
    conexion conex = new conexion();
    Connection cx= conex.conectar();
    
            try{
                Statement consulta=cx.createStatement();
                ResultSet registros=consulta.executeQuery("SELECT cliente, SSID, WifiPWd from clientesantenas");
                int NumeroColumnas=registros.getMetaData().getColumnCount();
                %>
                 <table border="1">
                <%
                    while(registros.next())
                        {
                            
                %><tr><%                            
                              for (int i=0;i<NumeroColumnas;i++)
                                {
                                               
                %><td><%
                                         out.println(registros.getString(i+1));
                %></td><%
                                }   
                                
                %></tr><%
                        }
             %></table><%
           // jTable1.setModel(modelo);
     }
     catch(SQLException e)
     {
         out.println(e);
     }
                    
                    
                    
                
           
                %>
                
                
                <%
                try{
                Statement consulta=cx.createStatement();
                ResultSet registros=consulta.executeQuery("SELECT cliente, telefono, antena, ssid, wifipwd from clientesantenas where idCliente=1");
                int NumeroColumnas=registros.getMetaData().getColumnCount();
                %>
                 <table border="1">
                <%
                    while(registros.next())
                        {
                            
                %><tr><%                            
                              for (int i=0;i<NumeroColumnas;i++)
                                {
                                               
                %><tr><td><%
                    out.println(registros.getMetaData().getColumnName(i+1));
                                        
                %></td><td><%
                
                 out.println(registros.getString(i+1));
                %></td></tr><%
                                }   
                                
                %></tr><%
                        }
             %></table><%
           // jTable1.setModel(modelo);
     }
     catch(SQLException e)
     {
         out.println(e);
     }
                    
                    
                    
                
           
                %>
         </form>
        
    </body>
</html>
