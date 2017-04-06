<%@ page import="java.sql.*"%>
<%!
String  useraadhar;
%>
<%
try
{
	
useraadhar=request.getParameter("user[aadhar]");
	
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection  con=DriverManager.getConnection("jdbc:oracle:oci8:@localhost:1521:xe","soe","soe");
Statement stmt=con.createStatement();
String dquery="select * from dluser";
ResultSet rs=stmt.executeQuery(dquery);
rs.next();
String daadhar=rs.getString("aadharnumber");
if(useraadhar.equals(daadhar))
{

out.println("<html><br><br><br><center><h3><i><font color=\"black\">record already exits</font></i></h3>");
}
else
{
	RequestDispatcher rd=application.getRequestDispatcher("/users/a.jsp");
rd.forward(request,response);


}
}
catch(SQLException  e){
System.out.println("..."+e);
out.println("<html><br><br><br><center><h3><i><font color=\"black\">invalid user name password</font></i></h3>");
} %>
