package conexion;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Intersol
 */
public class conexion {
 Connection con;
    public Connection conectar(){
    
    String bd="ciber";
    String user="root";
    String pwd="12345";
  try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/ciber", "root", "12345");
         
         } catch (SQLException ex) {
             
             }
           catch(ClassNotFoundException  ex){
               
           }
    return con;
    
    
}
}
