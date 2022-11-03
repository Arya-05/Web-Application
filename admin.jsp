<%-- 
    Document   : admin
    Created on : Feb 22, 2022, 11:24:45 PM
    Author     : LENOVO
--%>

<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="viva.Admin"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello Admin</h1>
        
        <%
            Configuration c = new Configuration() ;
            c.configure();
            SessionFactory sf=c.buildSessionFactory();
            Session s = sf.openSession();
            Transaction t = s.beginTransaction();
            %>
            
        <form method="get">
            
            <input type="submit" value="View Patient" name="view_btn">
            
            <input type="submit" value="Insert appointment" name="insert_btn">
                
            <br><br>

        </form>

        <%  
            String insertBtn = request.getParameter("insert_btn");
            String viewBtn = request.getParameter("view_btn");

            if (insertBtn != null)
            { %>
                 <jsp:include page="admin_insert.jsp"/>
          <%  } 
            
            String pt_name = request.getParameter("pt_name");
            String pt_id = request.getParameter("pt_id");
            String pt_address = request.getParameter("pt_address");
            String date = request.getParameter("date");
            String timing = request.getParameter("timing");
            
            if(pt_name != null)
            {
                Admin ab = new Admin();

                ab.setPatient_Id(Integer.parseInt(pt_id));
                ab.setPatient_Name(pt_name);
                ab.setPatient_address(pt_address);
                ab.setDate(date);
                ab.setTiming(timing);

                s.save(ab);

                t.commit();
                s.close();
                sf.close();
               
               out.print("Appointment inserted successfully");
            %>  
            <br><br>
            <a href="index.html">Back to login</a>
      <%    }
            
            
            else if(viewBtn != null)
            {
                String query1 = "from Admin";
                Query q = s.createQuery(query1); 

                List<Admin> r = q.list();

                for (Admin ele: r)
                { %>
                    Patient Name: <%=ele.getPatient_Name()%>
                    <br>
                    Patient Id: <%=ele.getPatient_Id()%>
                    <br>
                    Patient Address: <%=ele.getPatient_address()%>
                    <br>
                    Date: <%=ele.getDate()%>
                    <br>
                    Timing: <%=ele.getTiming()%>
                    <br>
                    
                    <hr>
          <%    }
                
                %>  
                <br><br>
            <a href="index.html">Back to login</a>
      <%
            }
            
          
             
            
            %>
        
    </body>
</html>
