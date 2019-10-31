<%@ page import="java.sql.*" %>
 <% String res_id=request.getParameter("res_id");
 out.println(res_id);
   String h_id=request.getParameter("h_id");

out.println(h_id);
   String firstname=request.getParameter("firstname");
   String lastname=request.getParameter("lastname");                
 // String dob=request.getParameter("dob");
   
out.println(firstname);
out.println(lastname);
   String aadhaar_no=request.getParameter("aadhaar_no");
   String gender=request.getParameter("gender");
   String age=request.getParameter("age");
String dateofjoining=request.getParameter("dateofjoining");
  String illness=request.getParameter("illness");
   String disease=request.getParameter("disease");
    String address=request.getParameter("address");
String phone=request.getParameter("phone");


out.println(firstname);
out.println(lastname);
out.println(aadhaar_no);
out.println(gender);
out.println(age);
out.println(dateofjoining);
out.println(illness);
out.println(disease);
out.println(address);
out.println(phone);



        //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:8080:orcl","system","viswa");
          //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:8080:orcl","system","viswa");
          Class.forName("oracle.jdbc.driver.OracleDriver");
          Connection con=DriverManager.getConnection("jdbc:oracle:thin:system/anbu@localhost:1521:XE");
         //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@sid3.comp.nus.edu.sg:1521:sid3","system","viswa");

   Statement stmt=con.createStatement();
stmt.executeUpdate("insert into new_resident(res_id,h_id,firstname,lastname,aadhaar_no,gender,age,dateofjoining,illness,disease,address,phone) values('"+res_id+"','"+h_id+"','"+firstname+"','"+lastname+"','"+aadhaar_no+"','"+gender+"','"+age+"','"+dateofjoining+"','"+illness+"','"+disease+"','"+address+"','"+phone+"')");
   con.close();
   response.sendRedirect("mainpg.html"); 
   
%>