<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<meta charset="euc-kr">
<!--한국어 지원-->
<title>One-piece</title>
<link rel="stylesheet" href="style2.css">
</head>
<body>
	<header> 
		<img src="image/title.png" id="titleimg">
	</header>

	<nav>
		<ul class="menu">
			<li></li>
			<li><a href="character.html">캐릭터 소개</a></li>
			<li><a href="movie.html">극장판 추천</a></li>
			<li><a href="activity.html">사건 모아보기</a></li>
			<li><a href="place.html">장소별 보기</a></li>
		</ul>
	</nav>

	<section>
	<div class="movie_img">
		<h1>영화 상세</h1>
		<hr class="hr_bold">
		<br> <img src="image/m2.jpg">
	</div>
	<div class="movie_content">
		<h2>네지마키섬의 모험</h2>
		<hr class="hr_slim">
		<h4>감독 : 시미즈 아츠지</h4>
		<h4>장르 : 애니메이션, 액션</h4>
		<h4>상영시간 : 55분</h4>
		<p>애지중지하던 고잉메리호를 도둑맞은 루피 일행 고잉메리호와 함께 납치당한 나미를 구하기 위해 테엽섬을 향해 떠난다.
			나미는 적의 대장인 베어킹에 의해 강제로 결혼을 당할 상황에 빠지게 되고, 트럼프 군단의 공격에 의해 상디, 우솝, 조로마저
			잡혀 버리고 만다. 그들의 음모에 루피가 폭발하고, 두목 베어킹과의 일대일 전투가 벌어진다.</p>
	</div>
	</section>

	<section>
	<div class="movie_review">
		<h1>평점 및 리뷰</h1>
		<hr class="hr_bold">
		<br>
	</div>
	<div class="movie_review_form">
		<form action="m1Proc.jsp" method="post">
			<table border=0 class="formcs">
				<tbody>
					<tr>
						<th width="70" align="center">이름
						</td>
						<td><input type="text" name="name" placeholder="이름 입력"></td>
						<th width="70" align="center">평점
						</td>
						<td><input type="text" name="star" size="10">
						<td rowspan="2"><button type="submit" class="btn">
								<img src="image/sub.PNG" class="btn">
							</button></td>
					</tr>
					<tr>
						<th width="70" align="center">내용
						</td>
						<td colspan="3"><input type="text" name="com"
							style="text-align: center; width: 800px; height: 50px; letter-spacing: -5px"></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	<DIV>
		<table class="comcs">
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>평점</th>
					<th>내용</th>
				</tr>
			</thead>
			<%
	request.setCharacterEncoding("utf-8"); 
	int cnt=0;
	String sql;
	ResultSet rs;
	try {
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/onepeice";
	Connection con = DriverManager.getConnection(url, "admin", "1234");
	Statement stat = con.createStatement();
	Statement st = con.createStatement();
 	
  	sql = "SELECT * FROM command order by cnt"; 
	stat.execute(sql);
	rs = stat.getResultSet();
	  
	while (rs.next()) {
		cnt++;
		out.println("<tr><td>#"+cnt +"</td> <td>"+rs.getString(1) + "</td><td>"+ rs.getString(2) + "</td><td>"+ rs.getString(3)+"</td></tr>"); //결과 출력
	}

	rs.close();

	} catch (Exception e) {
		out.println(e);
	}
%>
		</table>
	</DIV>
	</section>
</body>
</html>