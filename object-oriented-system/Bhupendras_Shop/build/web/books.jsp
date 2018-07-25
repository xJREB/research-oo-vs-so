<%-- 
    Document   : books
    Author     : Oops
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/home.css" type="text/css" rel="stylesheet"/>
        <title>JSP Page</title>
        <%@ include file="header.jsp"%>
    </head>
    <body>
        <h1>Books are here</h1>
     <%
     try{
         String book_name = request.getParameter("search_boook");
          Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore", "root", "root");
            
         
          Statement stmt = con.createStatement();
           ResultSet rs = stmt.executeQuery("select title,description,author from book where title = '"+book_name+"'");
         
         while(rs.next())
         {
             String book = rs.getString("title");
             String book_des = rs.getString("description");
             String book_aut = rs.getString("author");
             %>
            <center><div> 
               <br/><div  style="width:800px;height:110px;border:10px solid #000">
            <%out.print("<b>Name of the book:-</b>"+book+"<br/>");
              out.print( "<b>Description:-</b> "+book_des+"<br/>");
              out.print( "<b>Name of the author:-</b> "+book_aut); 
             %>
              </div></center>
            
            <%
         }
        }catch(Exception e){
            
        }
     %>
     <%@ include file="footer.jsp"%>
    </body>
</html>
