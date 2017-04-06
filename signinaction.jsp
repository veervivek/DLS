<%@ page contentType="text/html"%>
<%@ page import="java.sql.*"%>
<%
String uaadhar=request.getParameter("user[aadhar]");
String upassword=request.getParameter("user[password]");
%>

<%
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","soe","soe");
Statement stmt=con.createStatement();
String dquery="select * from dluser where aadharnumber='"+uaadhar+"'";
ResultSet rs=stmt.executeQuery(dquery);
rs.next();
String daadhar=rs.getString("aadharnumber");
String dpassword=rs.getString("password");
if(uaadhar.equals(daadhar)&&upassword.equals(dpassword))
{
RequestDispatcher rd=application.getRequestDispatcher("/users/new.jsp");
rd.forward(request,response);
}
else{

out.println("<html><br><br><br><center><h3><i><font color=\"black\">invalid aadhar or password</font></i></h3>");
}
}
catch(SQLException  e){
System.out.println("..."+e);
out.println("<html><br><br><br><center><h3><i><font color=\"black\">invalid aadhar or  password</font></i></h3>");
} %>
