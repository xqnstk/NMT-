<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta charset="euc-kr"> <!--한국어 지원-->
        <title>One-piece</title>
        <link rel="stylesheet" href="style2.css">
    </head>
    <body> 
        <header>
	    	<a href="character.html"><img src="image/title.png" id="titleimg"></a>
        </header>
        
        <nav>
            <ul class="menu">
            	<li></li>
              <li><a href="character.html">캐릭터 소개</a></li>
              <li><a href="movie.html">극장판</a></li>
              <li><a href="activity.html">세력 정리</a></li>
              <li><a href="place.html">사건 보기</a></li>
            </ul>
        </nav>

        <section>
            <div class="movie_img">
                <h1>영화 상세</h1>
                <hr class="hr_bold"><br>
                <img src="image/m11.jpg"> 
            </div>
            <div class="movie_content">
                <h2>제트</h2>
                <hr class="hr_bold">
                <h4>감독 : 시미즈 아츠지</h4>
                <h4>장르 : 애니메이션, 액션</h4>
                <h4>상영시간 : 107분</h4>
                <p>모든 해적 말살이 정의라고 믿는 전 해군대장 ‘제트’
                혈투 끝에 정신을 잃고 표류하던 제트를 발견하고 구해준다. 
                하지만 의식이 돌아온 제트는 루피 일행이 해적이란 것을 알게 되고
                어마어마한 공격을 퍼붓기 시작하는데...
                <p> 해적왕을 꿈꾸는 루피와 최강의 상대 제트와의 거대한 대결이 마침내 시작된다!</p>
            </div>
        </section>

        <section>
            <div class="movie_review">
                <h1>평점 및 리뷰</h1>
                <hr class="hr_bold"><br>
            </div>
            <div class="movie_review_form">
	            <form action="m1Proc.jsp" method="post" >
	                    <table border=0 class="formcs">
	                    <tbody>
	                            <tr>
	                                <th width="70" align="center">이름</td>
	                                <td><input type="text" name="name" placeholder="이름 입력"></td>
	                                <th width="70" align="center">평점</td >
	                                <td><input type="text" name="star" size="10"> 
	                                <td rowspan="2"><button type="submit" class="btn"><img src="image/sub.PNG" class="btn"></button></td>
	                            </tr>
	                            <tr> 
	                                <th width="70" align="center">내용</td>
	                                <td colspan="3"><input type="text" name="com" style="text-align:center; width:800px; height:50px; letter-spacing: -5px"></td>
	                            </tr>
	                    </tbody>
	                    </table>
	              </form>
              </div>
              <DIV >
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