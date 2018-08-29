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
                <hr class="hr_bold"><br>
                <img src="image/m10.jpg"> 
            </div>
            <div class="movie_content">
                <h2>스트롱 월드</h2>
                <hr class="hr_slim">
                <h4>감독 : 시미즈 아츠지</h4>
                <h4>장르 : 애니메이션, 액션</h4>
                <h4>상영시간 : 113분</h4>
                <p>임펠다운을 탈옥한 악명높은 전설의 해적 '금사자 시키'가 나타나 
                나미를 납치하고 그들을 이상한 섬으로 보내버린다. 
                끝이 없는 무성한 정글, 괴상한 동물들의 전투가 끊이지 않는 수상한 하늘 섬에서
                그들은 나미를 구하고 무사히 살아나갈 수 있을까? </p>
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