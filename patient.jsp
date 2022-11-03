<%-- 
    Document   : patient
    Created on : Feb 22, 2022, 11:58:05 PM
    Author     : LENOVO
--%>

<%@page import="viva.Admin"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="viva.Patient"%>
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
        <h1>Hello Patient!</h1>
         <%
            Configuration c = new Configuration() ;
            c.configure();
            SessionFactory sf=c.buildSessionFactory();
            Session s = sf.openSession();
            Transaction t = s.beginTransaction();
            %>
            
        <form method="get">
            
            <input type="submit" value="View Appointment" name="view_btn">
            
            <input type="submit" value="Update Appointment" name="update_btn">
            
            <input type="submit" value="Delete Appointment" name="del_btn">         
            <br><br>
            
        </form>
            
            <%  
            String updateBtn = request.getParameter("update_btn");
            String viewBtn = request.getParameter("view_btn");
            String delBtn = request.getParameter("del_btn");
           
            
           if (updateBtn != null)
            { %>
                 <jsp:include page="update_appointment.jsp"/>
          <%  } 
            
           String pt_name = request.getParameter("pt_name");
            String pt_id = request.getParameter("pt_id");
            String pt_address = request.getParameter("pt_address");
            String date = request.getParameter("date");
            String timing = request.getParameter("timing");
            
            if(pt_id != null)
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
               
               out.print("Appointment updated successfully");
            %>  
            <br><br>
            <a href="index.html">Back to login</a>
      <%    }
             if(viewBtn != null)
            {   %>
                <jsp:include page="view.jsp"/>
      <%    }
            String viewId = request.getParameter("viewSt_history");
             if(viewId != null)
            {
                String query1 = "from Admin where Patient_id=:id";
                Query q = s.createQuery(query1); 
                q.setInteger("id", Integer.parseInt(viewId));
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
            
            if(delBtn != null)
            {   %>
                <jsp:include page="delete.jsp"/>
               
               <%}
                if(request.getParameter("delete_ptId")!=null){
           
                     Admin p1 = new Admin();
             String i=request.getParameter("delete_ptId");                    
             p1.setPatient_Id(Integer.valueOf(i));
             s.delete(p1);
            
            t.commit();
            s.close();        
            sf.close();
                }
            
               
           %>   

    </body>
</html>
