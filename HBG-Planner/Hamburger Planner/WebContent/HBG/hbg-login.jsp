<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${row==0 }">
	<script>
		alert("비밀번호가 틀렸습니다");
	</script> 
</c:if>
<c:if test="${row==-1 }">
	<script>
		alert("없는 아이디입니다");
	</script>
</c:if>
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

<link href="styles/base.css" type="text/css" rel="stylesheet">
<link href="styles/layout.css" type="text/css" rel="stylesheet">
<link href="styles/module.css" type="text/css" rel="stylesheet">
<link href="styles/states.css" type="text/css" rel="stylesheet">
<link href="styles/theme.css" type="text/css" rel="stylesheet">

<!-- TITLE -->

<title>TITLE</title>
<style>
    
</style>
</head>
<body>
  
    <div class="layout-wrap">
        <div class="layout-inner">
        
            <%@ include file="include/hbg-header.jsp" %>

            <div id="hbg-login">
                <div class="login-inner">
                    <form method="post" action="/hbg?command=login.do">
                    
                        <div class="title">로그인</div>
                        
                        <div class="login_image"></div>
                        
                        <input name="user_email" id="user_email" class="user_email" type="text"  placeholder="아이디 (이메일)" autocomplete="off">
                        
                        <div class="msg msg-1"></div>
                        
                        <input name="user_pass" class="user_pass" type="password" placeholder="비밀번호" autocomplete="off">
                        
                        <div class="msg msg-2"></div>
                        
                        <div class="content">
                            <div>
                                <input id="is-subscription" type="checkbox">
                                <label for="is-subscription">아이디 입력 유지</label>    
                            </div>
                            <a>비밀번호 찾기</a>
                        </div>
                        
                        <input type="submit" class="next" value="로 그 인">
                        
                    </form>
                </div>
            </div>
            
            <%@ include file="include/hbg-footer.jsp" %>
            
        </div>
    </div><!-- END WRAP END -->

</body>
</html>