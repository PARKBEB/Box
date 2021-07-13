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
  ul,li{display: inline-block;}
  h1{background: #000; color: #fff; width: 100%; font-size: 35px; height: 50px; text-align: center; padding:30px;}
  nav { width: 100%;background: #bbb; color: #fff;}
  ul li{ padding-left: 20px;}
  h2{text-align: center; margin-top: 40px;}
  section{padding-top:40px; height: 330px;}
  table{margin: 0 auto;}
  th,td{border: 1px solid #000;}
  footer{background: #000; color: #fff; height: 50px; text-align: center;}
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
	<h1>(과정평가형 정보처리 산업기사)도서 관리 프로그램 ver3.0</h1>
	<nav>
		<ul>
			<li><a href = "/insert.jsp">회원등록</a></li>
			<li><a href = "/list.jsp">회원목록조회</a></li>
			<li><a href = "/lent.jsp">도서대출등록</a></li>
			<li><a href = "/book_list.jsp">도서대출현황</a></li>
			<li><a href = "/book.jsp">도서등록</a></li>
			<li><a href = "/lent_list.jsp">도서별대출현황</a></li>
			<li><a href = "/index.jsp">홈으로</a></li>
			<li><a href = "/return.jsp">도서반납</a></li>
		</ul>
	</nav>
	<h2>과정평가형 자격 CBQ</h2>
	<section>
	<form name = "frm" method="post" action = "modify_pro.jsp">
		<table>
		 <tr>
		 	<th>회원번호(자동생성)</th>
		 	<td><input type = "text" name ="userno" value = "<%= vo.getUserno() %>" readonly></td>
		 </tr>  
		 <tr>
		 	<th>회원성명</th>
		 	<td><input type = "text" name ="name" value = "<%= vo.getName() %>"></td>
		 </tr>    
		 <tr>
		 	<th>고객전화</th>
		 	<td><input type = "text" name ="phone1" value = "<%= vo.getPhone1() %>" size = "6">-
		 		<input type = "text" name ="phone2" value = "<%= vo.getPhone2() %>" size = "6">-
		 		<input type = "text" name ="phone3" value = "<%= vo.getPhone3() %>" size = "6">
		 	</td>
		 </tr>
		 <tr>
		 	<th>회원성별</th>
		 	<td><input type = "radio" name ="gender" value = "M" <%if(vo.getGender().equals("M")){out.print("checked");} %>>남자
		 		<input type = "radio" name ="gender" value = "F" <%if(vo.getGender().equals("F")){out.print("checked");} %>>여자
		 	</td>
		 </tr>   
		 <tr>
		 	<th>생년월일</th>
		 	<td><input type = "text" name ="birthday" value = "<%= vo.getBirthday() %>"></td>
		 </tr>   
		 <tr>
		 	<th>가입일자</th>
		 	<td><input type = "text" name ="regdate" value = "<%= vo.getRegdate() %>"readonly>예)20200207</td>
		 </tr>      
		 <tr>
		 	<th colspan = "2" class = "btn">
		 	<input type  = "button" value = "등록하기" onClick = "send()">
		 	<input type  = "button" value = "다시쓰기" onClick = "del()">
		 </tr>
		</table>
		</form>
	</section>
	<footer>
		HRDKOREAN Copy@2020 All right Development Korea
	</footer>
</body>
</html>