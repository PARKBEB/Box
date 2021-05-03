<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="resources/join.css">
<div class="top">
   <h1>facebook</h1>
   <input type="button" class="top-btn" value="기존 계정으로 로그인">
</div>
<body>
   <div class="back">
      <section>
         <span>새 계정 만들기</span>
         <p>빠르고 쉽습니다.</p>
         <table>
            <tr>
               <td><input type="text" placeholder="성(娍)"></td>
               <td><input type="text" placeholder="이름(성은 제외)"></td>
            </tr>
            <tr>
               <td colspan="2"><input type="text" placeholder="휴대폰 번호 또는 이메일"></td>
            </tr>
            <tr>
               <td colspan="2"><input type="text" placeholder="새 비밀번호"></td>
            </tr>
         </table>
         <p style = "color: #363b3f">생일</p>
         <select name="birth">
            <option value="">2021</option>
         </select> 
         <select name="month">
            <option value="">5월</option>
         </select> 
         <select name="day">
            <option value="">3</option>
         </select>
         <p style = "color: #363b3f">성별</p>
         <div class="gender">
            <input type="radio">여성 
            <input type="radio">남성 
            <input type="radio">직접지정
         </div>
         <p style = "font-size: 15px">
            가입하기 버튼을 클릭하면 Facebook의 약관, 데이터 정책 및 쿠키 정책에 동의하게 됩니다.
            Facebook으로부터 SMS 알림을 받을 수 있으며 알림은 언제든지 옵트 아웃할 수 있습니다.
         </p>
         <div class="join">
            <input type="button" class = "btn" value="가입하기">
         </div>
      </section>
   </div>
</body>
<footer>
   <p>한국어 영어 베트남어 인도어 불어 스페인어 중구어 일본어 포루투칼어 독일어</p>
   <hr width="980px" align="center"></hr>
   <p>
      가입하기 로그인 Messenger FacebookLite Watch 사람 페이지 페이지카테고리 장소 게임 위치
      Marketplce FacebookPay 그룹 채용정보 Oculus Portal Instagram 지역 기부캠페인 서비스 투표
      정보 센터 회사소개 광고 만들기 페이지 만들기 개발자 채용 정보 개인정보처리방침 쿠키 AdChoices 이용 약관 고객 센터<br>
      <br>
      Facebook(주)2021
   </p>
</footer>
</html>