<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<div id="user_bar">
	<a href="#">로그인</a> <a href="#">회원 가입</a>
</div>
</head>
<body>
	<nav id="topMenu">
		<ul>
			<li><a class="menuLink" href="./main.jsp">영화 정보</a></li>
			<li><a class="menuLink" href="./Movie_Information.jsp">영화 정보 검색</a></li>
			<li><a class="menuLink" href="#">영화 상세 정보</a></li>
			<li><a class="menuLink" href="#">영화배우 정보</a></li>
			<li><a class="menuLink" href="#">게시판</a></li>
		</ul>
		<div id="main_poster3">
			<form action="./com.servlet/jsonP.java" method="get">
				<input type="text" >
				<select>
					<option>1990</option>
					<option>1991</option>
					<option>1992</option>
					<option>1993</option>
					<option>1994</option>
					<option>1995</option>
					<option>1995</option>
					<option>1997</option>
					<option>1998</option>
					<option>1999</option>
					<option>2000</option>
					<option>2001</option>
					<option>2002</option>
					<option>2003</option>
					<option>2004</option>
					<option>2005</option>
					<option>2006</option>
					<option>2007</option>
					<option>2008</option>
					<option>2009</option>
					<option>2010</option>
					<option>2011</option>
					<option>2012</option>
					<option>2013</option>
					<option>2014</option>
					<option>2015</option>
					<option>2016</option>
					<option>2017</option>
					<option>2018</option>
					<option>2019</option>
					<option>2020</option>
					<option>2021</option>
					<option>2022</option>
					<option>2023</option>
					<option>2024</option>
				</select>
				<input type="submit" value="검색">
			</form>
		</div>
	</nav>
</body>
</html>