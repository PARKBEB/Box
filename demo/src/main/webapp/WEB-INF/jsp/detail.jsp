<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<script>
	function password(){
		var count = 0;
		var pass = prompt('please write password');
		
		while(count <= 1){
			if(pass == "${data.password}"){
				alert("성공");
				location.href="delete?no=${data.no}";
				break;
			}else count+=1
			
			var pass = prompt('no password');
		}
		if(count == 2){
			alert("실패");
		}
	}
</script>
<meta charset="EUC-KR">
<title>Detail</title>
</head>
<body>
	<h2>Detail</h2>
	<table border="1">
		<th>Title</th>
		<th>Data</th>
		<tr>
			<td>indate</td>
			<td><fmt:formatDate value="${data.date}" pattern="yyyy-MM-dd" /></td>
		</tr>
		<tr>
			<td>number</td><td>${data.no}</td>
		</tr>
		<tr>
			<td>name</td><td>${data.name}</td>
		</tr>
		<tr>
			<td>rank</td><td>${data.rank}</td>	
		</tr>
		<tr>
			<td>id</td><td>${data.id}</td>
		</tr>
	</table>
		<a href="update?no=${data.no}" role="button" class="btn btn-outline-info">modify</a>
		<!--<a href="delete?no=${data.no}" role="button" class="btn btn-outline-info">delete</a>
		-->
		<input type="button" onclick="password()" name="del" value="삭제"></input>
		<a href= "board">home</a>
	<!-- Comment -->
		<h2>Leave a Comment</h2>
		<form name="commentForm" action="commentWrite" method="post" autocomplete="off">
			<div class="reply" style="display:none;">
				<input type="number" name="no" value="${data.no}" />
			</div>
				<textarea name="content" rows="3"></textarea>
			<button type="submit">save</button>
		</form>
		<c:forEach items="${commentList}" var="commentList">
			<div>${commentList.no}</div>
			<div>${commentList.writer}</div>
			<div>${commentList.date}</div>
			<div>${commentList.content}</div>
		</c:forEach>
		
</body>
</html>