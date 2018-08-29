<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="cs.css">
<title>로그인 폼</title>
</head>
<body>
<%
	String user_id = (String)session.getAttribute("id"); 
	out.println(user_id); 
	
	if(("".equals(user_id))) { //회원만 메뉴바 보이게
%>
		<jsp:include  page="top.jsp" flush="false"></jsp:include>
<%
	} 
%>
<center>
		<form action="loginProc.jsp" method="post" class="joinform">
			<center><br><br><br><br><br>
				<table border="1" cellpadding="3" cellspacing="0">
					<tr>
						<td width="70" align="center">아이디</td>
						<td><input type="text" name="id" size="25" placeholder="아이디 입력"> </td>
					</tr>
					<tr>
						<td width="70" align="center">비밀번호</td>
						<td><input type="password" name="pwd" size="30" placeholder="비밀번호 입력"></td>
					</tr>
					<tr>
						<td colspan="2" align="center">
						<input type="submit" value="로그인"> 
						<input type="reset" value="취소"></td>
					</tr>					
				</table>
			</center><br><br>
		비회원이십니까? <a href="joinForm.jsp">회원가입</a> <br> 
		</form>
		</center>
</body>
</html>