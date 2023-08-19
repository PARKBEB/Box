<%@page import="model.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*,model.*" %>
<% 

	DAO dao = DAO.getInstance();
	List<VO> list = dao.list();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 *{margin: 0; padding: 0;}
  ul,li{display: inline-block; margin-top:20px;}
  a{text-decoration:none; color: #000;}
  nav { width: 100%;color: #000; font-size:30px;}
  ul li{ padding-left: 20px;}
  span{margin-left:50%;}
  span a{ font-size: 45px; font-weight: bolder; color: gold; }
  hr{background-color: #d3d3d3;}
  section{padding-top:30px; height: 330px;}
  table{margin: 0 auto;}
  th,td{border: 1px solid #000; font-size: 50px;}
  th{background-color: gold;}
  img{width:28%;margin: 0 0 -6% 37%;}
</style>
</head>
<body>
	<nav>
		<ul>
			<li><a href = "/list.jsp">전체 회원 조회</a></li>
			<li><a href = "/insert.jsp">회원등록</a></li>
			<li><a href = "/book.jsp">도서신청</a></li>
			<li><a href = "/lent.jsp">도서대출</a></li>
			<li><a href = "/return.jsp">도서반납</a></li>
			<li><a href = "/book_list.jsp">도서대출현황</a></li>
			<li><a href = "/lent_list.jsp">회원별 도서내역</a></li>
		</ul>
		<span><a href = "/index.jsp">HOME</a></span>
	</nav>
	<br>
	<hr>
	<section>
		<img src = "img/002.png">
		<table>
			<tr>
				<th>회원번호</th>
				<th>고객성명</th>
				<th>전화번호</th>
				<th>성별</th>
				<th>생년월일</th>
				<th>가입일자</th>
			</tr>
<%  
	
		for(int x = 0; x < list.size(); x++){
		String gd = list.get(x).getGender();
		if(gd.equals("M")){
			gd = "남자";
		}else if(gd.equals("F")){
			gd = "여자";
		}
		
		String day = list.get(x).getRegdate();
		String y = day.substring(0,4);
		String m = day.substring(4,6);
		String d = day.substring(6,8);

%>
			<tr>
				<td><a href = "modify.jsp?userno=<%= list.get(x).getUserno() %>"><%= list.get(x).getUserno() %></a></td>
				<td><%= list.get(x).getName() %></td>
				<td><%= list.get(x).getPhone1() + "-" + list.get(x).getPhone2() + "-" +list.get(x).getPhone3()  %></td>
				<td><%= gd %></td>
				<td><%= list.get(x).getBirthday() %></td>
				<td><%= y + "년" + m + "월" + d + "일" %></td>
			</tr>
<%
		}
%>
		</table>
	</section>
</body>
</html>