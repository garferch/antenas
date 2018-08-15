<%@ page import ="java.sql.*" %>
<%@page import="conexion.conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    
    <%
       String user = request.getParameter("usuario");    
    String pwd = request.getParameter("pwd");
    conexion conex = new conexion();
    Connection cx= conex.conectar();
    
            try{
                Statement consulta=cx.createStatement();
                ResultSet rs=consulta.executeQuery("SELECT * FROM usuarios where usuario='"+user+"' and pwd='"+pwd+"'");
                if (rs.next()){
                    session.setAttribute("user", user);
                    //out.println("ok");
                    response.sendRedirect("registroClientes.jsp");
                  }
                else{
                     out.println("Contraseña invalida <a href='index.jsp'>Intertar de nuevo</a>");
                    }
               
                }catch(SQLException e){
                    out.println(e);

                  }



    %>

