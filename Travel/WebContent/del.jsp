<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
 request.setCharacterEncoding("utf-8");
 String id = request.getParameter("del");

 try{
  Class.forName("com.mysql.jdbc.Driver");
  String url = "jdbc:mysql://localhost:3306/travel";
  Connection con = DriverManager.getConnection(url,"admin","1234");
  Statement stat = con.createStatement();

  String query = "DELETE FROM member where id='" + request.getParameter("del")+"'";
  //쿼리문 전송
  stat.executeUpdate(query); //return 1.
  stat.close();
  con.close();
  response.sendRedirect("output.jsp") ;
 }

  catch(Exception e){
  out.println( e );
 }
 %>


</body>
</html>