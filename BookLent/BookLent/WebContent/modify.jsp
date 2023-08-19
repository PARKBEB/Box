<%@page import="model.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*,model.*" %>
<% 

	DAO dao = DAO.getInstance();
	int userno = Integer.parseInt(request.getParameter("userno"));
	VO vo = dao.modify(userno);


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
  td{font-size:40px; padding-left:15px;}
  input{height: 60px; font-size:20px; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;}
</style>
<script>
function send(){
	if(frm.name.value == ""){
		alert("회원성명을 입력해주세요");
		frm.name.focus();
		return;
	}    
	if(frm.phone1.value == ""){
		alert("전화번호를 입력해주세요");
		frm.phone1.focus();
		return;
	}
	if(frm.phone2.value == ""){
		alert("전화번호를 입력해주세요");
		frm.phone2.focus();
		return;
	}
	if(frm.phone3.value == ""){
		alert("전화번호를 입력해주세요");
		frm.phone3.focus();
		return;
	}
	for(i = 0,flag = 0; i< frm.gender.length; i++){
		if(frm.gender[i].checked){
			flag = 1;
			break;
		}
	}
	if(!flag){
		alert("성별을 선택해주세요");
		frm.gender.focus();
		return;
	}
	if(frm.birthday.value == ""){
		alert("생년월일을 입력해주세요");
		frm.birthday.focus();
		return;
	}
	if(frm.regdate.value == ""){
		alert("가입일자를 입력해주세요");
		frm.regdate.focus();
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
	<form name = "frm" method="post" action = "modify_pro.jsp">
		<table>
		 <tr>
		 	<th>회원번호(자동생성)</th>
		 	<td><input type = "text" style = "font-size:40px;" name ="userno" value = "<%= vo.getUserno() %>" readonly></td>
		 </tr>  
		 <tr>
		 	<th>회원성명</th>
		 	<td><input type = "text" style = "font-size:30px;" name ="name" value = "<%= vo.getName() %>"></td>
		 </tr>    
		 <tr>
		 	<th>고객전화</th>
		 	<td><input type = "text" style = "font-size:25px;" name ="phone1" value = "<%= vo.getPhone1() %>" size = "6">-
		 		<input type = "text" style = "font-size:25px;" name ="phone2" value = "<%= vo.getPhone2() %>" size = "6">-
		 		<input type = "text" style = "font-size:25px;" name ="phone3" value = "<%= vo.getPhone3() %>" size = "6">
		 	</td>
		 </tr>
		 <tr>
		 	<th>회원성별</th>
		 	<td><input type = "radio" style="width:25px;height:25px;border:1px;" name ="gender" value = "M" <%if(vo.getGender().equals("M")){out.print("checked");} %>>남자
		 		<input type = "radio" style="width:25px;height:25px;border:1px;" name ="gender" value = "F" <%if(vo.getGender().equals("F")){out.print("checked");} %>>여자
		 	</td>
		 </tr>   
		 <tr>
		 	<th>생년월일</th>
		 	<td><input type = "text" style = "font-size:30px;" name ="birthday" value = "<%= vo.getBirthday() %>"></td>
		 </tr>   
		 <tr>
		 	<th>가입일자</th>
		 	<td><input type = "text" style = "font-size:35px;" name ="regdate" value = "<%= vo.getRegdate() %>"readonly>예)20200207</td>
		 </tr>      
		 <tr>
		 	<th colspan = "2" class = "btn" style = "height: 90px;">
		 	<input type  = "button" style = "font-size:30px; border: 1px solid #000;" value = "등록하기" onClick = "send()">
		 	<input type  = "button" style = "font-size:30px; border: 1px solid #000;" value = "다시쓰기" onClick = "reset()">
		 </tr>
		</table>
		</form>
	</section>
</body>
</html>
