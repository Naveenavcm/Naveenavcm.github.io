<%@ page import="java.sql.*" %>
<% String uname=request.getParameter("uname");
   String pass=request.getParameter("pass");
  

        //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:8080:orcl","system","viswa");
       
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:system/anbu@localhost:1521:XE");


  //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:8181:orcl","System","viswa")
         //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@sid3.comp.nus.edu.sg:1521:sid3","system","viswa");

   Statement stmt=con.createStatement();
stmt.executeUpdate("insert into login (uname,pass) values('"+uname+"','"+pass+"')");
   con.close();
   response.sendRedirect("mainpg.html"); 
   //System.Out.println("Inserted"); 
   //session.setAttribute("name", name);
    //out.print("Inserted");
      


    //stmt.executeQuery("insert into klogin(name,password) values('"+name+"','"+password+"')");
    //con.close();
    //response.sendRedirect("k-homepage.html");  
%>