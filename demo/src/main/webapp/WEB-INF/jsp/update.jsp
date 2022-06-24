<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<meta charset="EUC-KR">
<title>UPDATE</title>
</head>
<body>
	<h2>Update</h2>
	<form name="update" method="POST" action="${path}/update?no=${data.no}">
		<div>no : ${data.no}</div>
		<div>name :  </div>
		<div><input name="name" value="${data.name}" type="text" /></div>
		<div>id :  </div>
		<div><input name="id" value="${data.id}" type="text" /></div>
		<div>rank</div>
		<div><input name="rank" value="${data.rank}" type="text" /></div>
		<div>indate</div>
		<div><fmt:formatDate value="${data.date}" pattern="yyyy-MM-dd" /></div>
		<div>intime :  </div>
		<div><fmt:formatDate value="${data.time}" pattern="HH:mm:ss" /></div>
		
		<div>
			<input type="submit" class="btn btn-outline-info" value="save" />
			<input type="reset" class="btn btn-outline-info" value="reset" />
		</div>
	</form>
</body>
</html>