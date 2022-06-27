<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
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
		<a href="delete?no=${data.no}" role="button" class="btn btn-outline-info">delete</a>
		<a href= "board">home</a>
</body>
</html>