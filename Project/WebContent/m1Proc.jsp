<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8"); 
	
		//POST로 Input.html로부터 입력받은 내용을 변수화
        String name = request.getParameter("name");
        String star = request.getParameter("star");
		String com = request.getParameter("com");
		int cnt=0;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/onepeice";
			Connection con = DriverManager.getConnection(url, "admin", "1234");
			Statement stat = con.createStatement();
			cnt++;
			
			String query = "INSERT INTO command(name, star, com, cnt)  VALUES('" + name + "','" + star + "','" + com + "','" + cnt + "')";
			stat.executeUpdate(query);
			stat.close();
			con.close();
		} catch (Exception e) {
			out.println(e);
		}
		response.sendRedirect("m1.jsp");
	%>



</body>
</html>