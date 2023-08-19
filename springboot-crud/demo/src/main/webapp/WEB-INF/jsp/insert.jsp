<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../../../../../css/insert.css">
<meta charset="EUC-KR">
<title>Insert</title>
</head>
<body>
	<form class="center" method="post">
		<h2>Insert</h2>
		<div class="form-row">
			<div class="col-md-4">
				<label>ID</label>
				<input type="text" class="form-control" name="id" placeholder="Please write ID">
			</div>	
			<div class="col-md-4">
				<label>NAME</label>
				<input type="text" class="form-control" name="name" placeholder="Please write NAME">
			</div>	
			<div class="col-md-4">
				<label>RANK</label>
				<input type="text" class="form-control" name="rank" placeholder="Please write RANK">
			</div>
			<div class="col-md-12">
				<label>TITLE</label>
				<input type="text" class="form-control" name="title" placeholder="Please write TITLE">
			</div>
			<div class="col-md-12">
				<label>CONTENT</label>
				<textarea class="form-control" name="content" placeholder="Please write CONTENT" style="padding-bottom:50px;"></textarea>
			</div>
			<div class="col-md-4">
				<label>PASSWORD</label>
				<input type="text" class="form-control" name="password" placeholder="Please write PASSWORD">
			</div>
		</div>
		<br>
		<button type="submit" class="btn btn-outline-info">save</button>
		<button type="button" class="btn btn-outline-info"><a href="board">back</a></button>	
	</form>
</body>
</html>