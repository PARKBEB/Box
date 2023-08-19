<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<head>

<!-- META -->

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="Author" content="사이트 저작자">
<meta name="Keywords" content="검색 엔진을 위한 키워드">
<meta name="Description" content="사이트에 대한 설명">

<!-- RESPONSIVE -->

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">

<!-- SCRIPT -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!--<script src="경로" type="text/javascript"></script>-->

<!-- STYLESHEET -->

<link href="HBG/styles/base.css" type="text/css" rel="stylesheet">
<link href="HBG/styles/layout.css" type="text/css" rel="stylesheet">
<link href="HBG/styles/module.css" type="text/css" rel="stylesheet">
<link href="HBG/styles/states.css" type="text/css" rel="stylesheet">
<link href="HBG/styles/theme.css" type="text/css" rel="stylesheet">

<!-- TITLE -->

<title>TITLE</title>
<style>
    
</style>
</head>
<body>
  
    <div class="layout-wrap">
        <div class="layout-inner">

            <%@ include file="HBG/include/hbg-header.jsp" %>
            
            <div id="hbg-index">
                <div class="content-1">
                    <div class="content1-1">
                      <video width="320" height="240" autoplay class="preview" muted
                      loop="loop">

            <source src="HBG/styles/images/Day.mp4" type="video/mp4">

            </video>
                        <div class="index-title">
                            <h4>쉽고 간편한 스케줄러 시스템</h4>
                            <br><br><br>
                            <h5>LET'S PLANNING SCHEDULE</h5>
                        </div>
                    </div>
                    <a href="hbg?command=login.go" class="text">시작하기</a>
                </div>
                <div class="mountain">
                    <img>
                    <p><span class="txt1">WEB・MOBILE&nbsp;동시지원</span><br><br><br>
                    <span class="txt1-1">내&nbsp;취향대로,<br><br><br>쌓아쓰는&nbsp;플래너.</span><br><br><br>
	                   <span class="txt2"> 무료 서비스 제공.<br><br>캘린더・메모・체크리스트를&nbsp;&nbsp;한번에&nbsp;&nbsp;이용할&nbsp;&nbsp;수&nbsp;&nbsp;있는&nbsp;&nbsp;종합&nbsp;&nbsp;플래너&nbsp;&nbsp;프로그램.<br><br>
                        공유기능으로&nbsp;&nbsp;당신의&nbsp;&nbsp;플래너를&nbsp;&nbsp;공유할&nbsp;&nbsp;수&nbsp;&nbsp;있습니다.</span></p>
                </div>
              
                <div class="content-3">
                    <div class="content-3-1">
                        <img src="HBG/styles/images/global.png">
                    </div>
                    <div class="content-3-2">
                        <h1>Share a schedule</h1>
                        <span>상단에&nbsp;&nbsp;공유버튼만&nbsp;&nbsp;누르면&nbsp;&nbsp;세계&nbsp;&nbsp;어디든 공유가능.<br>회사일정・여행일정을&nbsp;&nbsp;버튼하나로&nbsp;&nbsp;간편하게&nbsp;&nbsp;공유하세요.</span>
                    </div>
                </div>
                <div class="content-4">
                    <div class="content-4-1">
                       <h1>Change of your style</h1>
                       <span>슬라이드&nbsp;&nbsp;기능을&nbsp;&nbsp;이용한&nbsp;&nbsp;플래너&nbsp;&nbsp;위치&nbsp;&nbsp;편집.<br>하나의&nbsp;&nbsp;페이지에서&nbsp;&nbsp;플래너의&nbsp;&nbsp;구성&nbsp;&nbsp;및&nbsp;&nbsp;추가,삭제를<br>하실&nbsp;&nbsp;수&nbsp;&nbsp;있습니다.</span>
                    </div>
                    <div class="content-4-2">
                        <img src="HBG/styles/images/webck.png">
                    </div>
                </div>
                <div class="content-5">
                    <div class="content-5-1">
                           <img src="HBG/styles/images/alarm2.png">
    
                        
                    </div>
                    <div class="content-5-2">
                        <h1>Search and Alarm</h1>
                        <span>키워드로&nbsp;&nbsp;플래너의&nbsp;&nbsp;모든&nbsp;&nbsp;서비스&nbsp;&nbsp;페이지&nbsp;&nbsp;검색&nbsp;&nbsp;가능.<br> 플래너와의&nbsp;&nbsp;연동으로&nbsp;&nbsp;작성글&nbsp;&nbsp;추가, 삭제, 수정 시&nbsp;&nbsp;알림창이<br>올라갑니다.&nbsp;&nbsp;공유기능을&nbsp;&nbsp;활용하면&nbsp;&nbsp;서로의&nbsp;&nbsp;수정사항을&nbsp;<br>빠르게&nbsp;&nbsp;보실&nbsp;&nbsp;수&nbsp;&nbsp;있습니다. </span>
                    </div>
                </div>               
               <!--<div class="content-6">
                    <div class="content-6-1">
                        <a>일정 관리를 무료로 <br>사용하는 <br>방법</a>
                    </div>
                    <div class="content-6-2">
                        <h2>쉽고 간편한 스케줄러를 작성하는 방법!</h2>
                            <ul>
                                <li><i class="material-icons">done</i>서비스 페이지에 들어간다</li>
                                <li><i class="material-icons">done</i>캘린더 / 메모 / 체크리스트 중 서비스 기능을 선택한다</li>
                                <li><i class="material-icons">done</i>원하는 날짜에 내용을 입력하면 자동저장</li>
                            </ul>
                    </div>
                </div>-->
                <div class="content-7">
                    <h4>CONTACT</h4>
                    <h5>service@hamburgerplanner.com</h5>
                    <h5>02-123-4567</h5>
                    <h5>대전 중구 용두동 123-12</h5>
                </div>
              
            </div><!-- END INDEX -->
            
            <%@ include file="HBG/include/hbg-footer.jsp" %>
            
            <div class="btn-top" style="cursor:pointer;" onclick="javascript: indexTop()">TOP</div>
		    <script>
		        function indexTop() {
		            $('html, body').animate({
		               scrollTop: 0 
		            }, 2000);
		        }
		    </script>
        </div>
    </div><!-- END WRAP END -->

</body>
</html>