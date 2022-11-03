<%-- 
    Document   : update_appointment
    Created on : Feb 23, 2022, 12:04:47 AM
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
         <form>
                
                 Patient name: <input type="text" name="pt_name">
            
            <br><br>
            
            Patient Id: <input type="text" name="pt_id">
            
            <br><br>
            
            Patient Address: <input type="text" name="pt_address">
            
            <br><br>
          
            
                New Appointment date: <input type="text" name="date">
                
                <br><br>
                
                New Appointment time: <input type="text" name="timing">
                
                <br><br>
                
                <input type="submit" name="btn" value="update">
            </form>
    </body>
</html>
