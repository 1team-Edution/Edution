<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head lang="en">
    <head lang="en"><meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>    
    <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1,maximum-scale=1,user-scalable=no,viewport-fit=cover">
    <title>Edution- 로그인</title>
    <meta name="description" content="A new tool that blends your everyday work apps into one. It's the all-in-one workspace for you and your team">
    <script type="text/javascript" async="" src="https://widget.intercom.io/widget/gpfdrxfd"></script>
    <link href="/app-aff2fcd08e2ef484f02e.css" rel="stylesheet">
    <script src="./resources/js/jquery-3.6.1.min.js"></script>

</head>
<body>
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v15.0" nonce="6oiJXLyj"></script>

<div style="font-size: 15px; white-space: nowrap; top: 0px; width: 100%; background: rgb(255, 254, 252); display: flex; flex-direction: column; align-items: center; justify-content: center;">
<nav style="display: flex; align-items: center; justify-content: center; width: 100%; max-width: 1300px; padding-left: 20px; padding-right: 20px; transition: height 250ms ease 0s; height: 80px; position: relative; overflow: hidden; box-shadow: none;">
<div style="flex-shrink: 0;">
    <!-- indexview로 돌아가기 -->
<a href="indexView.do" rel="noopener noreferrer" style="display: block; text-decoration: none; user-select: none; cursor: pointer; color: inherit;">
    <div style="display: flex; align-items: center;">
        <svg viewBox="0 0 120 126" class="edutionLogo" style="width: 30px; height: 30px; display: block; fill: inherit; flex-shrink: 0; backface-visibility: hidden; margin-right: 10px;"></svg>
        <!-- 로고 이미지 넣기 -->
        <img src="img/Edution2.png" style="width: 30px; height: 30px;">
        <div style="font-weight: 500; font-size: 16px;
        font-family:inter-var, -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, 'Apple Color Emoji', Arial, sans-serif, 'Segoe UI Emoji', 'Segoe UI Symbol';">Edution</div></div></a></div>
        <div style="flex: 1 1 0%; display: flex; justify-content: center;"></div></nav></div>
        <!-- 여기까지만 상단 부분  -->


    <div style="display: flex; flex-direction: column; align-items: center;">
        <div style="font-size: 50px; margin-top: 10vh; font-weight: 700; margin-bottom: 24px; text-align: center; line-height: 1.1;">아이디 찾기</div>
        <div class="notion-login" style="width: 100%; display: flex; flex-direction: column; align-items: center; max-width: 320px; margin-bottom: 16vh;">
    <div style="display: flex; flex-direction: column; width: 100%;">

                
<!-- form 태그는 여기서부터 -->
                <form>
                <label for="notion-email-input-3" style="display: block; margin-bottom: 4px; font-size: 12px; color: rgba(55, 53, 47, 0.65);">이름</label>
                <div class="notion-focusable-within" style="display: flex; align-items: center; width: 100%; font-size: 15px; line-height: 26px; padding: 4px 10px; position: relative; border-radius: 3px; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px inset; background: rgba(242, 241, 238, 0.6); cursor: text; margin-top: 4px; margin-bottom: 8px;">
                <input id ="name" name="name" placeholder="등록된 이름을 입력하세요." id="notion-email-input-3"  style="font-size: inherit; line-height: inherit; border: none; background: none; width: 100%; display: block; resize: none; padding: 0px;"></div>
                
                <label for="notion-email-input-3" style="display: block; margin-bottom: 4px; font-size: 12px; color: rgba(55, 53, 47, 0.65);">이메일</label>
                <div class="notion-focusable-within" style="display: flex; align-items: center; width: 100%; font-size: 15px; line-height: 26px; padding: 4px 10px; position: relative; border-radius: 3px; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px inset; background: rgba(242, 241, 238, 0.6); cursor: text; margin-top: 4px; margin-bottom: 8px;">
                <input id ="email" name="email" placeholder="등록된 이메일을 입력하세요."  id="notion-email-input-3" aria-label="PW를 입력하세요." style="font-size: inherit; line-height: inherit; border: none; background: none; width: 100%; display: block; resize: none; padding: 0px;"></div>


                <div class="notion-focusable-within" style="display: flex; align-items: center; width: 100%; font-size: 14px; line-height: 20px; padding: 0px; position: relative; border-radius: 3px; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px inset; background: rgba(242, 241, 238, 0.6); cursor: text; opacity: 0; height: 0px; pointer-events: none;">
                <input type="password" autocomplete="current-password" tabindex="-1" aria-hidden="true" style="font-size: inherit; line-height: inherit; border: none; background: none; width: 100%; display: block; resize: none; padding: 0px;"></div>
                <div onclick="idCheck()" class="notion-focusable" role="button" aria-disabled="false" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; justify-content: center; white-space: nowrap; height: 36px; border-radius: 4px; color: rgb(235, 87, 87); font-size: 14px; line-height: 1; padding-left: 12px; padding-right: 12px; font-weight: 500; background: rgb(253, 245, 242); box-shadow: rgba(15, 15, 15, 0.1) 0px 1px 2px, rgba(235, 87, 87, 0.3) 0px 0px 0px 1px inset; margin-top: 6px; margin-bottom: 12px; width: 100%;">아이디 찾기</div></form>
                <span id="id_result" style="margin-right: 12px;">결과를 보여주는 창 입니다.</span>
                <div style="font-size: 14px; color: rgb(235, 87, 87); text-align: center; display: none; width: 100%;"></div>
                        <div style="color: rgba(55, 53, 47, 0.65); font-size: 14px; line-height: 1.6; margin-top: 8px; margin-bottom: 8px; text-align: center;">
                            <a onfocus=blur() href="javascript:void(window.open('password.html','win0','width=1024,height=768,left=500, top=40,status=no,toolbar=no,scrollbars=no'))" class="notion-link" style="display: inline; text-decoration: underline; user-select: none; cursor: pointer; color: inherit;">비밀번호 찾기</a>
                        </div>
                                <div style="width: 100%; margin-top: 64px; margin-bottom: 0px; font-size: 12px; color: rgba(55, 53, 47, 0.5); text-align: left;">
                <p style="margin-bottom: 0px;">Edution에 등록된 아이디 찾기만 가능하며, SNS를 이용한 아이디 찾기는 불가합니다.</p></div></div></div>
</body>


<script type="text/javascript">
     function idCheck(){
          //jQuery에서 선택자역할
                    
          if($("#name").val()==""){
				alert("이름을 입력해주세요.");
				$("#name").focus();
				/* document.getElementById('id').focus(); */
				return false; 
			}else if($("#email").val()==""){
				alert("이메일을 입력해주세요.");
				$("#email").focus();
				/* document.getElementById('id').focus(); */
				return false; 
			}
          
          var nameStr = $("#name").val();
          var emailStr = $("#email").val();
          
          $.ajax({
              url : "LoginidSearch",
              data : {name : nameStr,
            	  		email : emailStr},
              success : function(data){
            	  if(data == "fail"){
                      $("#id_result").text("아이디를 찾을 수 없습니다.");
                      document.getElementById('id_result').style.color='red';
                      document.getElementById("id_result").style.fontSize = "15px";
                      document.getElementById("id_result").style.fontWeight = "bold";
                 }
            	  else if(data != null){
                        $("#id_result").text("당신의 아이디는 \""+data+" \" 입니다.");
                        /* document.getElementById('id_result').innerHTML='비밀번호가 일치합니다.' */
                         document.getElementById('id_result').style.color='blue';
                         document.getElementById("id_result").style.fontSize = "15px";
                         document.getElementById("id_result").style.fontWeight = "bold";
                   }
              }
          });
     }
</script>



</html>