<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="com.Servlet.XML_parsing"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="./style.css">

<div id="user_bar">
	<a href="#">로그인</a> <a href="#">회원 가입</a>
	<%
	String[] elements = { "rank", "movieNm", "openDt", "audiAcc", "salesAcc", "movieCd" };
	String URl = "https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.xml?key=5908a328c6d57d18ca20a32bb9f14108&targetDt=";
	String item = "dailyBoxOffice";
	XML_parsing xmp = new XML_parsing(URl, item, elements);
	XML_parsing xmp2 = new XML_parsing(URl, item, elements);
	List<Map> pubList = xmp.XML_p(true);
	List<Map> pubList2 = xmp2.XML_p(false);
	int i = 0;
	%>
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
	</nav>
	<div id="main_poster">
		<h3>일간 인기영화</h3>
		<table>
			<thead>
				<tr>
					<th scope="col">순위</th>
					<th scope="col">영화명</th>
					<th scope="col">오픈일</th>
					<th scope="col">누적관객수</th>
					<th scope="col">누적매출액</th>
					<th scope="col">영화대표코드</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (Map pub : pubList) {
				%>
				<tr>
					<td class="noBorder"><%=pub.get("rank")%></td>
					<td class="noBorder"><%=pub.get("movieNm")%></td>
					<td class="noBorder"><%=pub.get("openDt")%></td>
					<td class="noBorder"><%=pub.get("audiAcc")%>명</td>
					<td class="noBorder"><%=pub.get("salesAcc")%></td>
					<td class="noBorder"><%=pub.get("movieCd")%></td>
				</tr>
				<%
				}
				%>
			
			<tbody>
		</table>
	</div>
	<div id="main_poster1">
		<h3>주간 인기영화</h3>
		<table>
			<thead>
				<tr>
					<th scope="col">순위</th>
					<th scope="col">영화명</th>
					<th scope="col">오픈일</th>
					<th scope="col">누적관객수</th>
					<th scope="col">누적매출액</th>
					<th scope="col">영화대표코드</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (Map pub : pubList2) {
				%>
				<tr>
					<td class="noBorder"><%=pub.get("rank")%></td>
					<td class="noBorder"><%=pub.get("movieNm")%></td>
					<td class="noBorder"><%=pub.get("openDt")%></td>
					<td class="noBorder"><%=pub.get("audiAcc")%>명</td>
					<td class="noBorder"><%=pub.get("salesAcc")%></td>
					<td class="noBorder"><%=pub.get("movieCd")%></td>
				</tr>
				<%
				}
				%>
			
			<tbody>
		</table>
	</div>
</body>
</html>