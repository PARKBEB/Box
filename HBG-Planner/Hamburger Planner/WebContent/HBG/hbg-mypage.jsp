<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${modi==0 }">
	<script>
		alert("수정에 실패하였습니다 비밀번호를 확인해주세요");
	</script> 
</c:if>
<c:if test="${row==0 }">
	<script>
		alert("삭제에 실패하였습니다 비밀번호를 확인해주세요");
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

<script>
	
    function info1() {
        $('#hbg-mypage .content-2-2-2').stop().fadeOut(1000, function () {
            $('#hbg-mypage .content-2-2-1').fadeIn();
        });
    }
    
    function info2() {
        $('#hbg-mypage .content-2-2-1').stop().fadeOut(1000, function () {
            $('#hbg-mypage .content-2-2-2').fadeIn();
        });
    }
    function Modify(){
    	if(confirm("수정하시겠습니까?")==true){
			modi.submit();
		}else{
			return;
		}
}
    
    function Delete(){
    	if(confirm("정말 삭제하시겠습니까?")==true){
			del.submit();
		}else{
			return;
		}
 
}
</script>
</head>
<body>
    <div class="layout-wrap">
        <div class="layout-inner">
           
            <%@ include file="include/hbg-header.jsp" %>
            
            <div id="hbg-mypage">
                <div class="content-1">
                    <div class="content-1-1">MY PAGE</div>
                    <ul>
                        <li onclick="info1()">회원정보 수정</li>
                        <li onclick="info2()">회원탈퇴</li>
                    </ul>
                </div>

                <div class="content-2">
                    <div class="content-2-1">
                        <a>홈 > 마이 페이지 > 회원정보 수정</a>
                    </div>

                    <div class="content-2-2">
                        
                        <div class="content-2-2-1">
                            <form name="modi" method="post" action="hbg?command=modify.do" enctype="multipart/form-data">
                                <div class="title">회원정보 수정</div>
                                
                                <div class="user_image">
                                <label for="user_image_file">
                                <a class="user_image_plus"></a>
                                </label>
                                </div>
                                <input type="file" class="inp-img" name="user_image" id="user_image_file" style="display: none;" >
                                <input class="user_name" name="user_name" type="text" placeholder="NAME" autocomplete="off" value="${user.user_name}" readonly>

                                <div class="msg msg-1"></div>

                                <input class="user_email" id=user_email name="useremail" type="text"  placeholder="아이디 (이메일)" autocomplete="off" value="${user.user_email }" readonly>

                                <div class="msg msg-2"></div>

                                <input class="user_pass" name="user_pass" type="password" placeholder="비밀번호" autocomplete="off">
                                <div class="msg msg-3"></div>
                                <input class="user_passok" name="user_passok" type="password" placeholder="비밀번호 확인" autocomplete="off">
                                <div class="msg msg-4"></div>

                                <input type="button" class="next" value="수정" onClick="javascript:Modify()">
                            </form>
                            
                        </div>
                        
                        <div class="content-2-2-2">
                            <form name="del" method="post" action="hbg?command=delete.do">
                                <div class="title">회원탈퇴</div>
                                
                                <input class="user_pass" name="user_pass" type="password" placeholder="비밀번호" autocomplete="off">
                                <div class="msg msg-3"></div>
                                <input class="user_passok" name="user_passok" type="password" placeholder="비밀번호 확인" autocomplete="off">
                                <div class="msg msg-4"></div>
							<input type="button" class="next" value="삭제" onClick="javascript:Delete()">
                            </form>                            
                        </div>
                        
                    </div>

                </div>
                <script type="text/javascript">
$(document).ready(function () {
 
	 var progress = 0,
     
     progressPass = 0,
     progressPassok = 0;
	 
 var getName= RegExp(  /^[가-힣a-zA-Z]{2,40}$/);
 var getCheck= RegExp(/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/);
    
    $('.user_pass')
      .on("propertychange change keyup paste input", function () {
		if (!getCheck.test($(".user_pass").val()) && $(this).val().length > 0) {        
            /* 유효성 검사 */
	    $('.msg-3').text('영어,숫자,특수문자를 포함해서 8자 이상으로 작성해 주세요');
		
        $(this).css({
                'border-bottom': '2px solid #db041a'
            });
            progressPass = 0;     
		}if($(".user_pass").val() != $(".user_passok").val() && $(".user_passok").val().length > 0 ){
			$('.msg-4').text('다시 입력해주세요');
            $(".user_passok").css({
                'border-bottom': '2px solid #db041a'
            });
			 progressPassok = 0;
		}if (getCheck.test($(".user_pass").val())) {
			$('.msg-3').text('');
            $(this).css({
                'border-bottom': '2px solid #1230E3'
            });
            progressPass = 25;
        }else if($(this).val().length == 0){
			$('.msg').text('');
            $(this).css({
                'border-bottom': '2px solid #bbb'
            });
			progressPass = 0;    
			}
         progressAnim();
		
    })

    .on("focus", function () {
        if ($(this).val().length > 0) {
			$('.msg-3').text('');
            $(this).css({
                'border-bottom': '2px solid #000'
            });
        } else {
			$('.msg-3').text('');
            $(this).css({
                'border-bottom': '2px solid #000'
            });
        }
    });
    
    $('.user_passok')
    .on("propertychange change keyup paste input", function () {
        if ( $(".user_pass").val() != ($(".user_passok").val()) && $(this).val().length > 0) {

			$('.msg-4').text('비밀번호가 일치하지 않습니다');
            $(this).css({
                'border-bottom': '2px solid #db041a'
            });
            progressPassok = 0;
		   }else if ($(".user_pass").val() == ($(".user_passok").val()) && $(this).val().length > 0) {
			$('.msg-4').text('');
            $(this).css({
                'border-bottom': '2px solid #1230E3'
            });
            progressPassok = 25;
        }else if($(this).val().length == 0 ){
			$('.msg-4').text('');
            $(this).css({
                'border-bottom': '2px solid #bbb'
            });
			progressPassok = 0;
			}
         progressAnim();
    })

   .on("focus", function () {
        if ($(this).val().length > 0) {
			$('.msg-4').text('');
            $(this).css({
                'border-bottom': '2px solid #000'
            });
        } else {
			$('.msg-4').text('');
            $(this).css({
                'border-bottom': '2px solid #000'
            });
        }
    });
    
    function progressAnim() {
        progress = progressPass + progressPassok;
        $('#wf-register .layout-1 .progress').animate({
            'width': progress + '%'
        });
    }
    $('.next').on('click', function () {
    	if (progress == 100) {
    		frm.submit();
    	}
    	else {
    		$(".msg-4").text("정보를 모두 입력해주세요.");
			$(".msg-4").css("color", "red");
    	}
    });
    function readInputFile(input) {
        if(input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
            	$('.user_image').css({
            		'background-image': 'url(' + e.target.result + ')'
            	})
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
    $(".inp-img").on('change', function(){
        readInputFile(this);
    });
});


</script>
            </div><!-- END MYPAGE END -->
            
          	<%@ include file="include/hbg-footer.jsp" %>
          	
        </div>
    </div><!-- END WRAP END -->

</body>
</html>