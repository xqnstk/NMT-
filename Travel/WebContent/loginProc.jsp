<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>

<%
request.setCharacterEncoding("utf-8"); 

try {
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/travel";
	Connection con = DriverManager.getConnection(url, "admin", "1234");
	Statement stat = con.createStatement();
    
    String user_id= request.getParameter("id");
    String user_pw= request.getParameter("pwd");
     
    String sql = "SELECT * FROM member WHERE id='" + user_id + "'and pwd='" + user_pw + "'";
    stat.executeQuery(sql);
    ResultSet rs = stat.executeQuery(sql);
    
    // isLogin 은 로그인 확인 유무를 위한 변수
    Boolean isLogin = false;
    while(rs.next()) {
        // rs.next가 true 라면 = 정보가 있다
        isLogin = true;
    }
    
    // DB에 내가 적은 정보가 있다면
    if(isLogin) {
        // 지금 로그인할 id와 pw를 session에 저장하고
        session.setAttribute("id", user_id); 
        session.setAttribute("pwd", user_pw);
        // 첫 페이지로 돌려보낸다
        response.sendRedirect("index.jsp");    
    } else {
        // DB에 내가적은 정보가 없다면 경고창을 띄워준다
        %> <script> alert("로그인 실패"); history.go(-1); </script> <%            
    }
} catch (Exception e) {       
    out.println(e);
}
%>



</body>
</html>