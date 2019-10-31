<%@ page import="java.sql.*" %>
<% String name=request.getParameter("name");
   String amount=request.getParameter("amount");
   String acc_no=request.getParameter("acc_no");
      String phone_no=request.getParameter("phone_no");
   String h_id=request.getParameter("h_id");

        //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:8080:orcl","system","viswa");
          //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:8080:orcl","system","viswa");
          Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:system/ anbu@localhost:1521:XE");
         //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@sid3.comp.nus.edu.sg:1521:sid3","system","viswa");

   Statement stmt=con.createStatement();
stmt.executeUpdate("insert into new_funds (name,amount,acc_no,phone_no,h_id) values('"+name+"','"+amount+"','"+acc_no+"','"+phone_no+"','"+h_id+"')");
   con.close();
   response.sendRedirect("mainpg.html"); 
  // System.Out.println("Inserted"); 
   //session.setAttribute("name", name);
    //out.print("Inserted");
      


    //stmt.executeQuery("insert into klogin(name,password) values('"+name+"','"+password+"')");
    //con.close();
    //response.sendRedirect("k-homepage.html");  
%>