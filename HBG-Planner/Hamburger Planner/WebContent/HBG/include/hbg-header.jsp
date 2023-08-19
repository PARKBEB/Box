<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%! HttpSession session = null; %>
<% 
	session = request.getSession(); 
	
	if (session.getAttribute("user") == null || session.getAttribute("user").equals("")) {
		session.setAttribute("user", "");
	}
	
%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		  $(".header-user-name").click(function(){
		    $("#panel").slideToggle("slow");
		  });
		});
</script>
<style>
#header .content #panel {
	padding: 50px;
  	display: none;
  	padding: 5px;
  text-align: center;
  
}
#header .content #panel ul li{
	display: block;
}

#header .logo {
	display: flex;
	align-items: center;
}

#header .img {
	display: inline-block;
	width: 50px;
	height: 50px;
	background-image: url('/HBG/styles/images/hamgurger.png');
	margin-right: 20px;
}
</style>
	 
	<c:if test="${user==''}">
	
	<div id="header">
	    <div class="content">
	        <a class="logo" href="/"><img src="/HBG/styles/images/hamgurger5.png" width="80px" height="80px"> &nbsp; HAMBURGER PLANNER</a>
	    </div>
	    <div class="content">
	        <form>
	            <input type="text" placeholder="Search...">
	            <input type="button">
	        </form>
	    </div>
	    <div class="content">
	        <a href="/hbg?command=login.go" class="text">로그인</a>
	        <a href="/hbg?command=register.go" class="text">회원가입</a>
	        <div class="header-boundary"></div>
	        <a href="" class="header-lang"><span class="header-lang-icon"></span>KOR<span class="header-lang-arrow"></span></a>
	    </div>
	</div>

	</c:if>
	 
	<c:if test="${user!=''}">
	 
	<div id="header">
	    <div class="content">
	    	<a class="logo" href="/hbg?command=service.go"><img src="/HBG/styles/images/hamgurger5.png" width="80px" height="80px"> &nbsp; HAMBURGER PLANNER</a>
	    </div>
	    <div class="content">
	        <form>
	            <input type="text" placeholder="Search...">
	            <input type="button">
	        </form>
	    </div>
	    <div class="content">
	        <a class="header-alarm" href="javascript:toggleAlarm()"><span></span></a>
	        <div class="header-user-name"><span class="header-user-icon"></span>Lee</div>
	        <div id="panel">
	        	<ul style="list-style-type:none;">
				<li><a href="/hbg?command=mypage.go">마이 페이지</a></li>
                <li><a href="/hbg?command=logout.do">로그아웃</a></li>
                </ul></div>
	        <div class="header-boundary"></div>
	        <a href="" class="header-lang"><span class="header-lang-icon"></span>KOR<span class="header-lang-arrow"></span></a>
	        
	    </div>
	</div>
	 
	</c:if>
	 