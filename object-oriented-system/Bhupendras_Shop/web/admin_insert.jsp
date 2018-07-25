<%-- 
    Document   : admin
    Created on : Mar 3, 2018, 1:33:34 PM
    Author     : BC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="bhupendras_shop.css" type="text/css" >
    </head>
    <body>

        <% String classifier_name = "none";
            session.setAttribute("admin_mode", "insert");
            String db_insertion_result = (String) session.getAttribute("db_insertion_result");
            //out.println("Admin mode = " + (String) session.getAttribute("admin_mode"));
            //out.println("insertion_result " + db_insertion_result);
            if ((String) session.getAttribute("classifier_name") != null) {
                classifier_name = (String) session.getAttribute("classifier_name");
                //out.println("Classifier name selected = " + classifier_name);                
            }%>       

        <div id="big_wrapper">            
            <center><h2> Welcome Admin!! </h2></center> <br /> <br />
            <form name="admin" action="Controller" method="post">
                 <div class="logmeout"> <input type="submit" name="signout" value=" Logout "> </div>
                <nav id="links"> 
                    <ul>                                             
                        <li> <a href="admin_update.jsp" title="Update" > <img id="update"  border="0" src="Images/update.jpg" width="25" height="25" alt="Loading" /> </a> </li>
                        <li> <a href="admin_remove.jsp" title="Delete" > <img id="delete"  border="0" src="Images/delete.png" width="25" height="25" alt="Loading" /> </a> </li>                    
                        <li> <a href="admin_insert.jsp" title="Insert" > <img id="insert"  border="0" src="Images/insert.jpg" width="75" height="75" alt="Loading" /> </a> </li>
                        <li> <a href="admin_view_all.jsp" title="View" > <img id="view"  border="0" src="Images/view.jpg" width="25" height="25" alt="Loading" /> </a> </li>          
                    </ul>
                </nav>
                <center>      <br /><h3> Select a product to insert </h3> <br />  <br /> 
                     <% if(db_insertion_result!=null){if(db_insertion_result.equals("success")){%>
                     <span style="color:green">  <b> Insertion Successful!!  </b> </span> 
                     <% } if(db_insertion_result.equals("failure")) { %>
                     <span style="color:red">  <b> Insertion Failure! Please try again!   </b> </span> 
                     <% }} %>
                     <br /> <br />
                    <select name="admin_classifer_choice">
                        <option value=""> </option>
                        <option value="Books"> Books </option> 
                    </select> 
                    <input type="submit"  value =" > " name="admin_catagory" /> <br /> <br /> 
                    <div id="admin_mode"> </div>
                    <% if ((String) session.getAttribute("classifier_name") != null) {
                         classifier_name = (String) session.getAttribute("classifier_name");%>      
                    Catogory Selected : <span style="color:green">  <b> <%= classifier_name%> </b> </span>

                    <% }%>      <br /> <br />
                    <% if (classifier_name != null || classifier_name != "") {%>
                    Name &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <input type="text" name="admin_product_name" /> <br />  <br />
                    Author/Store &nbsp; <input type="text" name="admin_product_author_store_name" /> <br />  <br />
                    Description &nbsp; &nbsp; <input type="text" name="admin_product_description" /> <br />  <br />
                    Price &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; <input type="text" name="admin_product_price" /> <br />  <br />
                    <input type="submit" value="  Insert  " name="admin_db_changes" />
                    <% }%>
                </center>
                <br /> <br />
                <form>
                    </div>
                    </body>
                    </html>
