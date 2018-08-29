<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="cs.css">
<title>여행지 추천받기</title>
</head>
<body>
<jsp:include  page="top.jsp" flush="false"></jsp:include>

	<form action="startProc.jsp" method="post" class="csform">
	<h2>연령</h2>
  		<input type="radio" name="age" value="10"> 청소년 
  		<input type="radio" name="age" value="20"> 성인 <br>
  	<h2>테마</h2>
  		<input type="radio" name="area" value="hotplace"> 핫플 <br>
  		<input type="radio" name="area" value="trip"> 여행 <br>   
  		<input type="radio" name="area" value="nature"> 자연 <br> 
  		<input type="radio" name="area" value="sinchon"> 맛집 <br>    
  	<h2>요금</h2>
  		<input type="radio" name="fee" value="50000">40000원 이하 <br>
  		<input type="radio" name="fee" value="100000">80000원 이하 <br>
  		<input type="radio" name="fee" value="150000">상관x<br>     
  	<br><br><br><br>
  		<input type="submit" value="결과 보기"> 
		<input type="reset" value="취소">
  		
	</form>
</body>
</html>