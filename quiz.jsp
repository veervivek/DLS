
<%@ page import="mypackage.*" %>

<% 
try
{
Test1 ob=new Test1();
ob.cam();
}
catch(Exception e)
{
	out.print("error");
}
%>

