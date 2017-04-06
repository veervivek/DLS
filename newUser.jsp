<%@ page import="java.sql.*"%>
<%!
String  useraadhar;
String fname;
String lname;
String password;
%>
<%
try
{
	fname=request.getParameter("user[first_name]");
	lname=request.getParameter("user[last_name]");
	useraadhar=request.getParameter("user[aadhar]");
	password=request.getParameter("user[password]");
	Class.forName("oracle.jdbc.driver.OracleDriver");
Connection  con=DriverManager.getConnection("jdbc:oracle:oci8:@localhost:1521:xe","soe","soe");
Statement stmt=con.createStatement();
String dquery="select * from aadhar";
ResultSet rs=stmt.executeQuery(dquery);
rs.next();
String afname=rs.getString("fname");
String alname=rs.getString("lname");
String aaadhar=rs.getString("aadharnumber");
if(fname.equals(afname)&&lname.equals(alname)&&useraadhar.equals(aaadhar))
{
RequestDispatcher rd=application.getRequestDispatcher("/users/a1.jsp");
rd.forward(request,response);

}
else{

out.println("<html><br><br><br><center><h3><i><font color=\"black\">invalid user name password</font></i></h3>");
}
}
catch(SQLException  e){
System.out.println("..."+e);
out.println("<html><br><br><br><center><h3><i><font color=\"black\">invalid user name password</font></i></h3>");
} %>
