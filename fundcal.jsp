<%@ page import="java.sql.*"%>
<%
String amount=request.getParameter("amount");
out.print(amount);
try
{out.println("Total funds is");
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con=DriverManager.getConnection("jdbc:oracle:thin:system/anbu@localhost:1521:XE");
Statement st=con.createStatement();
String strQuery = " update new_funds set amount =amount/2";
ResultSet rs = st.executeQuery(strQuery);
out.print(amount);
//String Countamount="";
//while(rs.next())
//Countamount = rs.getString(1);
//out.println("Your fund is :"||rs);

}
catch (Exception e){
out.println("Total funds");
e.printStackTrace();
}
%>
</body>
</html>