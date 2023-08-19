<%@page import="model.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*,model.*,java.time.*" %>
<% 
	//LocalDate date = LocalDate.now();
	//String[] d = date.toString().split("-");
	DAO dao = DAO.getInstance();
	List<VO> list = dao.lentlist();

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
		<img src = "img/006.png">
		<table>
			<tr>
				<th>대출번호</th>
				<th>회원번호</th>
				<th>회원성명</th>
				<th>도서명</th>
				<th>대출일자</th>
				<th>반납일자</th>
			</tr>
<%  
	
		for(int x = 0; x < list.size(); x++){
	
		

%>
			<tr>
				<td><%= list.get(x).getLentno() %></td>
				<td><%= list.get(x).getUserno() %></td>
				<td><%= list.get(x).getName()  %></td>
				<td><%= list.get(x).getBookname() %></td>
				<td><%= list.get(x).getOutdate() %></td>
				<td><%= list.get(x).getIndate() %></td>
			</tr>
<%
		}
%>
		</table>
	</section>
</body>
</html>