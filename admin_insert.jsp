<%-- 
    Document   : admin_insert
    Created on : Feb 23, 2022, 12:10:14 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <form method="get">
            
            <br><br>
            
            Patient name: <input type="text" name="pt_name">
            
            <br><br>
            
            Patient Id: <input type="text" name="pt_id">
            
            <br><br>
            
            Patient Address: <input type="text" name="pt_address">
            
            <br><br>
            
            Date: <input type="text" name="date">
            
            <br><br>
            
            Timing: <input type="text" name="timing">
            
            <br><br>
            
            <input type="submit" name="pt_insert" value="Insert">
            
            </form>
    </body>
</html>
