<%-- 
    Document   : home
    Created on : 25/07/2018, 07:16:30 PM
    Author     : Intersol
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
    </head>
    <body>
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
    </body>
</html>
