<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>calendar</title> 
	<link href="resources/css/calendar.css" rel="stylesheet">
	<script src="resources/js/calendar.js"></script>
	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/c
	ss/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
</head>
<body>
<div class="backImg">
	<div id="kCalendar"></div>
	<script>
		window.onload = function () {
			kCalendar('kCalendar');
			}
	</script>
</div> 

	<img src="resources/img/one-lineDiary.png" style="width:35%;">
	<div class="modifyBox">
		<i id="modify" class="fas fa-check-circle"></i><i id="del" class="fas fa-trash"></i>
	</div>
</body>
</html>