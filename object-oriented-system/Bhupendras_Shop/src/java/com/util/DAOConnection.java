/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.util;

import java.sql.*;

/**
 *
 * @author BC
 */
public  class DAOConnection {
static Connection con;
static String username = null;
static String password = null;

 
   public static Connection sqlconnection(){
       try{
           String dbUrl = "jdbc:mysql://localhost:3306/india_db";
           Class.forName("com.mysql.jdbc.Driver").newInstance();
           con=DriverManager.getConnection(dbUrl,"root","root");              
           System.out.println("Connection established for SQL");
       }catch(Exception e){
           System.out.println("Database connection exception="+e);
       }
       return con;    
    
}    
    
}
