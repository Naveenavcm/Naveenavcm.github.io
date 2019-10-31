<%@ page import="java.sql.*" %>
<% String name=request.getParameter("name");
   String d_id=request.getParameter("d_id");
   String qualification=request.getParameter("qualification");
   String specialist=request.getParameter("specialist");
   String ph_no=request.getParameter("ph_no");

        //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:8080:orcl","system","viswa");
          //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:8080:orcl","system","viswa");
          Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:system/ anbu@localhost:1521:XE");
         //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@sid3.comp.nus.edu.sg:1521:sid3","system","viswa");

   Statement stmt=con.createStatement();
stmt.executeUpdate("insert into new_doctor (name,d_id,qualification,specialist,ph_no) values('"+name+"','"+d_id+"','"+qualification+"','"+specialist+"','"+ph_no+"')");
   con.close();
   response.sendRedirect("mainpg.html"); 
   //System.Out.println("Inserted"); 
   //session.setAttribute("name", name);
    //out.print("Inserted");
      


    //stmt.executeQuery("insert into klogin(name,password) values('"+name+"','"+password+"')");
    //con.close();
    //response.sendRedirect("k-homepage.html");  
%>