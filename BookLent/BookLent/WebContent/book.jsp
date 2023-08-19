<%@page import="java.time.LocalDate"%>
<%@page import="model.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*,model.*" %>

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
  td{font-size: 30px;  padding-left:15px;}
  input{height: 60px; font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;}
  img{width:28%;margin: 0 0 -6% 37%;}
</style>
<script>
function send(){
	if(frm.bookno.value==""){
		alert("도서코드를 입력해주세요");
		frm.bookno.focus();
		return;
	}
	if(frm.bookname.value==""){
		alert("도서이름를 입력해주세요");
		frm.bookname.focus();
		return;
	}
	if(frm.amount.value==""){
		alert("수량을 입력해주세요");
		frm.amount.focus();
		return;
	}
	frm.submit();
}
</script>
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
	<form name = "frm" method="post" action = "book_pro.jsp">
		<img src="img/005.png">
		<table>
			<tr>
				<th>도서코드</th>
				<td><input type = "text" name = "bookno" value = "">정수 3자리(101)</td>
			</tr>
			<tr>
				<th>도서이름</th>
				<td><input type = "text" name = "bookname" value = ""></td>
			</tr>
			<tr>
				<th>수량</th>
				<td><input type = "text" name = "amount" value = ""></td>
			</tr>
		 <tr>
		 	<th colspan = "2" class = "btn" style = "height: 90px;">
		 	<input type  = "button" style = "font-size:30px; border: 1px solid #000;" value = "등록하기" onClick = "send()">
		 	<input type  = "button" style = "font-size:30px; border: 1px solid #000;" value = "다시쓰기" onClick = "del()">
		 </tr>
		</table>
		</form>
	</section>
</body>
</html>