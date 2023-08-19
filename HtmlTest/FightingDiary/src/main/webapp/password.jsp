<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>password</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<script src="resources/js/password.js"></script>
</head>
<link rel="stylesheet" href="resources/css/password.css">
<link
	href="https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/GyeonggiBatang.woff"
	rel="stylesheet">
<link 
	href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap" 
	rel="stylesheet">
<body>
	<div class="backImg">
		<div class="smallTitleImg"></div>
	<div class="passIn">
		<p>비밀번호 설정</p>
		<div>
			<i class="fas fa-circle" id="c1"></i>
			<i class="fas fa-circle"></i>
			<i class="fas fa-circle"></i>
			<i class="fas fa-circle"></i>
			<i class="fas fa-circle"></i>
			<i class="fas fa-circle"></i>
		</div>
	</div>	
	<div class="password_Hint">
		<a href="/hint.jsp">비밀번호를 잊으셨나요?</a>
	</div>
	<div class="pass_btn">
		<button type="button" class="btn btn-warning">1</button>
		<button type="button" class="btn btn-warning">2</button>
		<button type="button" class="btn btn-warning">3</button><br>
		<button type="button" class="btn btn-warning">4</button>
		<button type="button" class="btn btn-warning">5</button>
		<button type="button" class="btn btn-warning">6</button><br>
		<button type="button" class="btn btn-warning">7</button>
		<button type="button" class="btn btn-warning">8</button>
		<button type="button" class="btn btn-warning">9</button><br>
		<button type="button" id="btn_reset" class="btn btn-warning" style="padding: 50px 9.6%;">reset</button>
		<button type="button" class="btn btn-warning">0</button>
		<button type="button" class="btn btn-warning" style="padding: 50px 13%;"><div class="fas fa-long-arrow-alt-left" style="color: #000; font-size: 75px;"></div></button>
	</div>
	</div>
	<script>
	// 버튼 색변경
		let btn= document.querySelector(".btn");
		function handleClick(){
			c1.style.color='blue';
		}
		btn.addEventListener("click",handleClick); 	
    // 리셋
		let reset= document.querySelector("#btn_reset");
		function handleClick(){
			c1.style.color='rgb(355,215,0)';
		}
		reset.addEventListener("click",handleClick); 	
	</script>
</body>
</html>