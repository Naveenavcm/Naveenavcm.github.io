
<%@ page import="java.sql.*" %>
<% String name=request.getParameter("name");
   String sid=request.getParameter("sid");
   String h_id=request.getParameter("h_id");
   String adhar_no=request.getParameter("adhar_no");
   String salary=request.getParameter("salary");
   String ph_no=request.getParameter("ph_no");
    String address=request.getParameter("address");

          Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:system/anbu@localhost:1521:XE");
        
   Statement stmt=con.createStatement();
stmt.executeUpdate("insert into staff(name,sid,h_id,adhar_no,salary,ph_no,address) values('"+name+"','"+sid+"','"+h_id+"','"+adhar_no+"','"+salary+"','"+ph_no+"','"+address+"')");
   con.close();
   response.sendRedirect("mainpg.html"); 
   //System.Out.println("Inserted"); 
   //session.setAttribute("name", name);
    //out.print("Inserted");
      


    //stmt.executeQuery("insert into klogin(name,password) values('"+name+"','"+password+"')");
    //con.close();
    //response.sendRedirect("k-homepage.html");  
%>