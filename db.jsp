<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page errorPage="err.jsp"%>
<%
String ques=request.getParameter("ques");
String id= request.getParameter("id");
String q="insert into letme values(?,?)";
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java","root","root");
PreparedStatement ps=con.prepareStatement(q);
ps.setString(1, ques);
ps.setString(2, id);
int i= ps.executeUpdate();
if (i>0)
{
RequestDispatcher rd= request.getRequestDispatcher("end.html");
rd.include(request, response);
out.println("Answer Will be mailed soon ");
%><h1>Check Mail in one hour for answer</h1>
<script type="text/javascript">alert('Your question has been posted successfully and answer will be mailed soon on '+id)</script>
<%

}
else {%><script type="text/javascript">alert('Some error occurred Try Again!!')</script> <%}
%>