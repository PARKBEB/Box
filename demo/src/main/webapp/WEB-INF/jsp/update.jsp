<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../../../../../css/detail.css">
<meta charset="EUC-KR">
<title>UPDATE</title>
</head>
<body>
<div class="detail">
<div class="wrapper">
	<h1>Update</h1>
</div>
	<form name="update" method="POST" action="${path}/update?no=${data.no}">
	<table border="1" style="margin-bottom:1%;">
		<tr>
			<th>id</th>
			<td><input name="id" value="${data.id}" type="text" size=4 /></td>
			<th>indate</th>
			<td><fmt:formatDate value="${data.date}" pattern="yyyy-MM-dd"/></td>
			<th>name</th>
			<td><input name="name" value="${data.name}" type="text" size=10  /></td>
			<th>rank</th>
			<td><input name="rank" value="${data.rank}" type="text" size=10  /></td>
		</tr>
		<tr>
			<th>title</th>
			<td colspan="7"><input name="title" value="${data.title}" type="text" size=71 /></td>
		</tr>
		<tr>
			<th>content</th>
			<td colspan="7">
				<textarea name="content" style="border: none" rows="15" cols="71">${data.content}</textarea>
			</td>
		</tr>	
	</table>
	<div class="wrapper">
		<input type="submit" class="btn" value="save" />
		<input type="reset" class="btn" value="reset" />
	</div>
	</form>
</div>
</body>
</html>