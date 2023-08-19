<%@ page language="java" contentType="text/html; charset=UTF-8;" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>question</title>
</head>
<link rel="stylesheet" href="resources/css/question.css">
<link 
	href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap" 
	rel="stylesheet">
<body>
	<div class="backImg">
		<a href="/calendar.jsp"><div class="smallTitleImg"></div></a>
		<div class="question"> 
			<p>1. 상처받았나요?</p>
			<input type="radio" class="answer" name="ans1" value="y">예&emsp;&emsp;&emsp;
			<input type="radio" class="answer" name="ans1" value="n">아니오
			<p>2. 먼저 욕을 했나요?</p>
			<input type="radio" class="answer" name="ans2" value="y">예&emsp;&emsp;&emsp;
			<input type="radio" class="answer" name="ans2" value="n">아니오
			<p>3. 사건의 발단은 상대에게 있나요?</p>
			<input type="radio" class="answer" name="ans3" value="y">예&emsp;&emsp;&emsp; 
			<input type="radio" class="answer" name="ans3" value="n">아니오
			<p>4. 당신의 행동이 지나쳤다고 생각하나요?</p>
			<input type="radio" class="answer" name="ans4" value="y">예&emsp;&emsp;&emsp;
			<input type="radio" class="answer" name="ans4" value="n">아니오
			<p>5. 그럼에도 다시 화해하고 싶나요?</p>
			<input type="radio" class="answer" name="ans5" value="y">예&emsp;&emsp;&emsp;
			<input type="radio" class="answer" name="ans5" value="n">아니오
		</div>
		<div class="result">
			<p>싸움의 한 줄 일기를 남겨주세요.</p>
			<input type="text" class="wLine" name="wrt">
			<hr></hr>
		</div>
			<input type="button" class="btn" value="저장">
		</div>

</body>
</html>