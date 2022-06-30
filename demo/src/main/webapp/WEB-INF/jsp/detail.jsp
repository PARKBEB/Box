<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../../../../../css/detail.css">
<script>
	function password(){
		var count = 0;
		var pass = prompt('please write password');
		
		while(count <= 1){
			if(pass == "${data.password}"){
				alert("delete");
				location.href="delete?no=${data.no}";
				break;
			}else count+=1
			
			var pass = prompt('no password');
		}
		if(count == 2){
			alert("delete fail");
		}
	}
	function passwordMod(){
		var count = 0;
		var pass = prompt('please write password');
		
		while(count <= 1){
			if(pass == "${data.password}"){
				alert("update");
				location.href="update?no=${data.no}";
				break;
			}else count+=1
			
			var pass = prompt('no password');
		}
		if(count == 2){
			alert("update fail");
		}
	}
</script>
<meta charset="EUC-KR">
<title>Detail</title>
</head>
<body>
<div class="detail">
<div class="wrapper">
	<h1>Detail</h1>
	<input type="button" onclick="passwordMod()" name="mod" value="modify" class="btn"></input>
	<input type="button" onclick="password()" name="del" value="delete" class="btn"></input>
	<a href= "board" class="btn">home</a>
</div>
	<table border="1">
		<tr>
			<th>id</th><td>${data.id}</td>
			<th>indate</th>
			<td><fmt:formatDate value="${data.date}" pattern="yyyy-MM-dd" /></td>
			<th>name</th><td>${data.name}</td>
			<th>rank</th><td>${data.rank}</td>	
		</tr>
		<tr>
			<th>title</th><td colspan="7">${data.title}</td>	
		</tr>
		<tr>
			<th>content</th>
			<td colspan="7">
			<textarea style="border: none" rows="9" cols="50">${data.content}</textarea>
			</td>	
		</tr>
	</table>
	<!-- Comment -->
		<h2>Leave a Comment</h2>
		<form name="commentForm" action="commentWrite" method="post" autocomplete="off" class="commentF">
			<div class="reply" style="display:none;">
				<input type="number" name="no" value="${data.no}" />
			</div>
				<textarea name="content" rows="3" cols="59"></textarea>
			<br>
			<button type="submit" class="btn" style="margin-bottom: 2%;">save</button>
		</form>
		<c:forEach items="${commentList}" var="commentList">
			<div class="dateC">${commentList.date}</div>
			<div class="conC">${commentList.content}
			<a href="deleteComment?no=${data.no}">delete</a>
			</div>
		</c:forEach>
</div>		
</body>
</html>