<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 폼</title>
</head>
<body>
	<center>
		<form action="joinProc.jsp" method="post">
			<table border=1>
				<table border="1" cellpadding="3" cellspacing="0">
					<tr>
						<td width="70" align="center">이름</td>
						<td><input type="text" name="name" placeholder="이름 입력"></td>
					</tr>
					<tr>
						<td width="70" align="center">아이디</td>
						<td><input type="text" name="id" size="25" placeholder="아이디 입력"> 
					</tr>
					<tr>
						<td width="70" align="center">비밀번호</td>
						<td><input type="password" name="pwd" size="30"></td>
					</tr>
					<tr>
						<td colspan="2" align="center">
						<input type="submit" value="회원가입"> 
						<input type="reset" value="취소"></td>
					</tr>
				</table>
		</form>
	</center>
</body>
</html>