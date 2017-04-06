<%@ page contentType="text/html"%>
<%@ page import="java.sql.*"%>

<% 
String vaadhar=request.getParameter("user[aadhar]");
String vfname=request.getParameter("user[first_name]");
String vlname=request.getParameter("user[last_name]");
String vpassword=request.getParameter("user[password]");

%>

<%
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","soe","soe");
String vsql="insert into dluser values(?,?,?,?)";
PreparedStatement pstmt=con.prepareStatement(vsql);
pstmt.setString(1,vaadhar);
pstmt.setString(2,vfname);
pstmt.setString(3,vlname);
pstmt.setString(4,vpassword);
pstmt.executeUpdate();

%>
<html>
<script type="text/javascript">
function alertName(){
alert("Form has been submitted");
} 
</script> 
<body>
<script type="text/javascript">window.onload = alertName;</script>
</body>
</html>


<jsp:forward page="ccsign_in.jsp"/>



<%}catch(Exception e){
//out.println("<h>Sorry Aleady record exist with this ID...");
%>
<html>
<body bgcolor="white"><br><br><br><br>
<center><font color="blue" style="tahoma"><i>
<b>Sorry Aleady record exist with this ID<br>
<a href="newcb.jsp"><b>BACK</a></i></font></center>
</body>
</html>
<%}%>
