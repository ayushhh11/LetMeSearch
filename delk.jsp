<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
RequestDispatcher rd= request.getRequestDispatcher("index.html");
rd.include(request, response);
%>
<script type="text/javascript">
alert('Posted Successfully answer will be mailed on '+id)</script>

<%}else {RequestDispatcher rd= request.getRequestDispatcher("index.html");
rd.include(request, response);}%>
<script type="text/javascript">
alert('Error occured try again ')</script>
