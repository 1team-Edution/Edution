<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	<script src="./resources/js/jquery-3.6.1.min.js"></script> 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style>
    .notion-focusable:hover{
        background: rgba(55, 53, 47, 0.08);
        font-weight: 600;
    }
</style>


</head>
<body>

		<%
		// 세션 가져오기.
		UserDTO list = (UserDTO)session.getAttribute("loginUser");
		String list_id = list.getUser_id();		
		%>

    <div style="position: relative; box-shadow: rgba(15, 15, 15, 0.05) 0px 0px 0px 1px, rgba(15, 15, 15, 0.1) 0px 5px 10px, rgba(15, 15, 15, 0.2) 0px 15px 40px; border-radius: 5px; background: white; margin-bottom: 0px; overflow: auto;">
        <div style="display: flex; height: 100%; flex-direction: row;">
            <div style="height: 100%; background: rgb(251, 251, 250); flex-grow: 0; flex-shrink: 0; max-width: 250px; overflow-y: auto;">
                <div style="display: flex; flex-direction: column; height: 100%; justify-content: space-between; padding-top: 10px;">
            <div style="overflow: auto; padding-bottom: 12px;">
                <form action = "UpdateCon.do" enctype="multipart/form-data" method="post">
                <div>
                <div style="letter-spacing: 0.03em; text-transform: uppercase; font-size: 11px; line-height: 1; margin-bottom: 1px; color: rgba(55, 53, 47, 0.65); font-weight: 500; padding: 5px 15px; text-overflow: ellipsis; overflow: hidden;"><%="\""+list.getUser_id()+"\"님의 마이페이지 입니다."%></div>
                <input type= "hidden" value="<%=list.getUser_id()%>" name="user_id">
                <div class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: flex; align-items: center; justify-content: space-between; padding: 5px 15px; ">
                    <div style="display: flex; align-items: center;">
                        <div style="width: 20px; height: 20px; margin-right: 8px; color: rgba(55, 53, 47, 0.85); fill: rgba(55, 53, 47, 0.85);"><div>
                    <div style="background: white; border-radius: 100%; box-shadow: rgba(15, 15, 15, 0.1) 0px 2px 4px;">
                <div style="border-radius: 100%; width: 20px; height: 20px; max-width: 100%; max-height: 100%; display: flex; align-items: center; justify-content: center; user-select: none; opacity: 1;">
                <div style="width: 100%; height: 100%;">
                <img src="resources/image/<%=list.getUser_photo()%>" style="display: block; object-fit: cover; border-radius: 100%; width: 100%; height: 100%;"></div></div></div></div></div>
                <div style="font-size: 14px; line-height: 20px; color: rgb(55, 53, 47); white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">내 계정</div></div></div>
                
                <div class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: flex; align-items: center; justify-content: space-between; padding: 5px 15px; ">
                    <div style="display: flex; align-items: center;">
                        <div style="width: 20px; height: 20px; margin-right: 8px; color: rgba(55, 53, 47, 0.85); fill: rgba(55, 53, 47, 0.85);"><div>
                    <div style="background: white; border-radius: 100%; box-shadow: rgba(15, 15, 15, 0.1) 0px 2px 4px;">
                <div style="border-radius: 100%; width: 20px; height: 20px; max-width: 100%; max-height: 100%; display: flex; align-items: center; justify-content: center; user-select: none; opacity: 1;">
                <div style="width: 100%; height: 100%;">
                <img src="img/home-page.webp" style="display: block; object-fit: cover; border-radius: 100%; width: 100%; height: 100%;"></div></div></div></div></div>
                <div onclick="move()" style="font-size: 14px; line-height: 20px; color: rgb(55, 53, 47); white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">메인페이지로 돌아가기</div></div></div>
                
                
                

<!-- 여백 -->
        <div style="display: flex; align-items: center; justify-content: center; pointer-events: none; width: 100%; height: 18px; flex: 0 0 auto;">
        </div>

<!-- 마이페이지 메뉴가 필요하면 여기부터 추가하기 -->
<!-- svg태그(path태그 포함)은 아이콘(톱니바퀴모양)이기 때문에 다른 모양 사용하려면 그 부분만 지우고 사용하기!-->

        <!-- <div class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: flex; align-items: center; justify-content: space-between; padding: 5px 15px;">
        <div style="display: flex; align-items: center;">
            <div style="width: 20px; height: 20px; margin-right: 8px; color: rgba(55, 53, 47, 0.85); fill: rgba(55, 53, 47, 0.85);">
        <svg viewBox="0 0 16 16" class="settings" style="width: 20px; height: 20px; display: block; fill: inherit; flex-shrink: 0; backface-visibility: hidden;">
        <path d="M7.30957 15.4814H8.69043C9.25781 15.4814 9.70215 15.1328 9.83203 14.5928L10.1123 13.3828L10.29 13.3145L11.3428 13.9639C11.8213 14.2646 12.3818 14.1895 12.7783 13.7861L13.7354 12.8291C14.1455 12.4258 14.2139 11.8652 13.9131 11.3936L13.2637 10.3477L13.3252 10.1768L14.5352 9.89648C15.0684 9.75977 15.4238 9.31543 15.4238 8.75488V7.4082C15.4238 6.84766 15.0752 6.40332 14.5352 6.2666L13.3389 5.97949L13.2705 5.80176L13.9199 4.75586C14.2207 4.28418 14.1455 3.73047 13.7422 3.31348L12.7852 2.35645C12.3887 1.95996 11.8281 1.88477 11.3564 2.17871L10.3037 2.82129L10.1123 2.74609L9.83203 1.53613C9.70215 0.996094 9.25781 0.647461 8.69043 0.647461H7.30957C6.73535 0.647461 6.29785 0.996094 6.16797 1.53613L5.8877 2.74609L5.69629 2.82129L4.64355 2.17871C4.16504 1.88477 3.60449 1.95996 3.20801 2.35645L2.25098 3.31348C1.84766 3.73047 1.77246 4.28418 2.07324 4.75586L2.72949 5.80176L2.6543 5.97949L1.46484 6.2666C0.917969 6.40332 0.576172 6.84766 0.576172 7.4082V8.75488C0.576172 9.31543 0.924805 9.75977 1.46484 9.89648L2.66797 10.1768L2.73633 10.3477L2.08008 11.3936C1.7793 11.8652 1.85449 12.4258 2.25781 12.8291L3.21484 13.7861C3.61816 14.1895 4.17871 14.2646 4.65039 13.9639L5.70312 13.3145L5.8877 13.3828L6.16797 14.5928C6.29785 15.1328 6.73535 15.4814 7.30957 15.4814ZM7.47363 14.2441C7.35742 14.2441 7.30273 14.1895 7.28223 14.0869L6.87891 12.4053C6.44141 12.3027 6.03125 12.1318 5.69629 11.9199L4.21973 12.8291C4.1377 12.8838 4.05566 12.877 3.9668 12.7949L3.24219 12.0703C3.16699 11.9951 3.16016 11.9131 3.22168 11.8242L4.13086 10.3477C3.93945 10.0264 3.75488 9.61621 3.65234 9.18555L1.96387 8.78223C1.86133 8.76172 1.81348 8.70703 1.81348 8.59082V7.56543C1.81348 7.44238 1.86133 7.39453 1.96387 7.36719L3.65234 6.9707C3.75488 6.5127 3.95312 6.08887 4.11719 5.79492L3.21484 4.3252C3.15332 4.22949 3.15332 4.14746 3.23535 4.06543L3.95996 3.34766C4.04883 3.27246 4.11719 3.25879 4.21973 3.31348L5.68945 4.20898C5.99707 4.02441 6.44824 3.83301 6.87891 3.72363L7.28223 2.04199C7.30273 1.93945 7.35742 1.88477 7.47363 1.88477H8.52637C8.64258 1.88477 8.69727 1.93262 8.71094 2.04199L9.12109 3.7373C9.56543 3.83984 9.96875 4.02441 10.3037 4.21582L11.7734 3.32031C11.876 3.26562 11.9443 3.27246 12.0264 3.35449L12.7578 4.07227C12.8398 4.14746 12.8398 4.22949 12.7783 4.3252L11.876 5.79492C12.04 6.08887 12.2451 6.5127 12.3477 6.9707L14.0293 7.36719C14.1387 7.39453 14.1865 7.44238 14.1865 7.56543V8.59082C14.1865 8.70703 14.1318 8.76172 14.0293 8.78223L12.3408 9.18555C12.2383 9.61621 12.0537 10.0264 11.8691 10.3477L12.7715 11.8242C12.8262 11.9131 12.8262 11.9951 12.751 12.0635L12.0264 12.7949C11.9375 12.877 11.8555 12.8838 11.7734 12.8291L10.2969 11.9199C9.96191 12.1318 9.57227 12.3027 9.12109 12.4053L8.71094 14.0869C8.69727 14.1963 8.64258 14.2441 8.52637 14.2441H7.47363ZM8 10.6621C9.42188 10.6621 10.5908 9.49316 10.5908 8.06445C10.5908 6.64941 9.42188 5.48047 8 5.48047C6.57812 5.48047 5.40234 6.64941 5.40234 8.06445C5.40234 9.49316 6.57129 10.6621 8 10.6621ZM8 9.49316C7.2207 9.49316 6.57812 8.85059 6.57812 8.06445C6.57812 7.29199 7.2207 6.65625 8 6.65625C8.76562 6.65625 9.40137 7.29199 9.40137 8.06445C9.40137 8.84375 8.76562 9.49316 8 9.49316Z"></path></svg>
    </div>
    <div style="font-size: 14px; line-height: 20px; color: rgb(55, 53, 47); white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">설정</div></div></div> -->
<!-- 마이페이지 메뉴가 필요하면 여기까지 추가하기 -->

</div></div></div></div>


<div style="flex-grow: 1; position: relative; z-index: 1; height: 100%;"><div style="display: flex; flex-direction: column; width: 100%; height: 100%; background-color: white;">
        <div class="notion-scroller vertical horizontal" style="flex-grow: 1; transform: translateZ(0px); padding: 36px 60px; z-index: 1; margin-right: 0px; margin-bottom: 0px;">
<div style="color: rgb(55, 53, 47); border-bottom: 1px solid rgba(55, 53, 47, 0.09); margin-bottom: 16px; padding-bottom: 12px; font-size: 16px; font-weight: 500; width: auto;">계정</div>
<div style="margin-bottom: 24px;">
<div  target="_blank" rel="noopener noreferrer" class="notion-print-ignore" style="display: block; text-decoration: none; user-select: none; cursor: pointer; color: inherit; margin-left: -6px;">
</div>
        <div style="color: rgb(55, 53, 47); border-bottom: 0px; margin-bottom: 8px; padding-bottom: 0px; font-size: 14px; font-weight: 400; width: auto;">사진</div>

<!-- form 태그는 여기서부터 ! -->
       
  <!-- 사진 입력 창 -->      
    <div class="mb-3">
        <label for="formFile" class="form-label" name="user_photo"> 
            <div style="width: 90px; height: 90px;"><div style="width: 100%; height: 100%;">
            <img src="resources/image/<%=list.getUser_photo()%>" style="display: block; object-fit: cover; border-radius: 100%; width: 90px; height: 90px;"></div></div>
        </label>
        <input class="form-control" type="file" id="formFile">
      </div>
    
    
<div style="display: flex; align-items: center; justify-content: center; pointer-events: none; width: 100%; height: 37px; flex: 0 0 auto;">
<div style="width: 100%; height: 1px; visibility: visible; border-bottom: 1px solid rgba(55, 53, 47, 0.16);"></div></div>
<div style="color: rgb(55, 53, 47); border-bottom: 0px; margin-bottom: 8px; padding-bottom: 0px; font-size: 14px; font-weight: 400; width: auto;">개인 정보</div>
<label style="display: block; margin-bottom: 4px; font-size: 12px; color: rgba(55, 53, 47, 0.65);">이메일</label>
<div>
<div class="notion-focusable-within" style="display: flex; align-items: center; width: 100%; font-size: 14px; line-height: 20px; padding: 4px 10px; position: relative; border-radius: 3px; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px inset; background: rgba(242, 241, 238, 0.6); cursor: text;">
<input id="email" name="user_email" value="<%=list.getUser_email()%>" type="text" style="font-size: inherit; line-height: inherit; border: none; background: none; width: 100%; display: block; resize: none; padding: 0px;"></div>
<div onclick = "emailCheck()" class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; white-space: nowrap; height: 20px; border-radius: 3px; font-size: 12px; line-height: 1.2; padding-left: 5px; padding-right: 5px; color: rgba(55, 53, 47, 0.65);">이메일 변경</div>
<span id="email_result" style="margin-right: 12px;">사용자 이메일 넣어주세요</span>


<!-- 닉네임 -->
<label style="display: block; margin-bottom: 4px; font-size: 12px; color: rgba(55, 53, 47, 0.65); margin-top: 14px;">선호하는 닉네임</label>
<div class="notion-focusable-within" style="display: flex; align-items: center; width: 100%; font-size: 14px; line-height: 20px; padding: 4px 10px; position: relative; border-radius: 3px; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px inset; background: rgba(242, 241, 238, 0.6); cursor: text;">
<input id="nick" name="user_nick" value="<%=list.getUser_nick()%>" type="text" style="font-size: inherit; line-height: inherit; border: none; background: none; width: 100%; display: block; resize: none; padding: 0px;"></div>
<div onclick = "nickCheck()"  class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; white-space: nowrap; height: 20px; border-radius: 3px; font-size: 12px; line-height: 1.2; padding-left: 5px; padding-right: 5px; color: rgba(55, 53, 47, 0.65);">닉네임 변경</div>
<span id="nick_result" style="margin-right: 12px;">사용자 닉네임을 넣어주세요</span>
<div style="display: flex; align-items: center; justify-content: center; pointer-events: none; width: 100%; height: 37px; flex: 0 0 auto;">
<div style="width: 100%; height: 1px; visibility: visible; border-bottom: 1px solid rgba(55, 53, 47, 0.16);"></div></div>
<div style="display: flex; flex-direction: column; align-items: flex-start; width: 100%; height: auto; padding-left: 0px; padding-right: 0px;">
<div style="color: rgb(55, 53, 47); border-bottom: 0px; margin-bottom: 2px; padding-bottom: 0px; font-size: 14px; font-weight: 400; width: auto;">비밀번호</div>
<div style="font-size: 12px; line-height: 16px; color: rgba(55, 53, 47, 0.65); margin-top: 2px; width: 80%;">비밀번호를 다시 설정할 수 있습니다.</div>
<div style="display: flex; align-items: center;"><div class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; justify-content: center; white-space: nowrap; border-radius: 3px; height: 32px; padding-left: 12px; padding-right: 12px; font-size: 14px; line-height: 1.2; border: 1px solid rgba(55, 53, 47, 0.16); margin-top: 12px; margin-bottom: 4px;">비밀번호 설정</div></div></div>
<div style="display: flex; align-items: center; justify-content: center; pointer-events: none; width: 100%; height: 37px; flex: 0 0 auto;">
<div style="width: 100%; height: 1px; visibility: visible; border-bottom: 1px solid rgba(55, 53, 47, 0.16);"></div></div><div>
    <div style="">
    <div style="display: flex; flex-direction: column; align-items: flex-start; width: 100%; height: auto; padding-left: 0px; padding-right: 0px;">
    <div style="display: flex; align-items: flex-start; margin-bottom: 12px; width: 100%;">
</div></div></div></div>

                    
                    <div style="display: flex; flex-direction: column; align-items: flex-start; width: 100%; height: auto; padding-left: 0px; padding-right: 0px;">
                        <div style="color: rgb(55, 53, 47); border-bottom: 0px; margin-bottom: 2px; padding-bottom: 0px; font-size: 14px; font-weight: 400; width: auto;">모든 기기에서 로그아웃</div>
                        <div style="font-size: 12px; line-height: 16px; color: rgba(55, 53, 47, 0.65); margin-top: 2px; width: 80%;">현재 세션을 제외한 모든 활성 세션에서 로그아웃되며 다시 로그인해야합니다.</div>
                        <div onclick = "logout()" class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; justify-content: center; white-space: nowrap; border-radius: 3px; height: 32px; padding-left: 12px; padding-right: 12px; font-size: 14px; line-height: 1.2; color: rgb(235, 87, 87); border: 1px solid rgba(235, 87, 87, 0.5); margin-top: 12px;">로그아웃</div></div>
                <div style="display: flex; align-items: center; justify-content: center; pointer-events: none; width: 100%; height: 37px; flex: 0 0 auto;">
                    <div style="width: 100%; height: 1px; visibility: visible; border-bottom: 1px solid rgba(55, 53, 47, 0.16);"></div></div>
            
                    <div onclick = "account_delete()" class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; justify-content: center; white-space: nowrap; border-radius: 3px; height: 32px; padding-left: 12px; padding-right: 12px; font-size: 14px; line-height: 1.2; color: rgb(235, 87, 87); border: 1px solid rgba(235, 87, 87, 0.5);">내 계정 삭제</div></div>

<div style="flex-grow: 0; flex-shrink: 0; padding: 16px 60px; box-shadow: rgba(55, 53, 47, 0.09) 0px -1px 0px;">
    <div style="display: flex;">
        <!-- submit 넣을 '변경' 버튼은 여기! -->
<input type= "submit" value = "변경" class="notion-focusable" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; justify-content: center; flex-shrink: 0; white-space: nowrap; height: 32px; border-radius: 3px; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px inset, rgba(15, 15, 15, 0.1) 0px 1px 2px; background: rgb(35, 131, 226); color: white; fill: white; line-height: 1.2; padding-left: 12px; padding-right: 12px; font-size: 14px; font-weight: 500;">
<div onclick = "cancel()"class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; justify-content: center; white-space: nowrap; border-radius: 3px; height: 32px; padding-left: 12px; padding-right: 12px; font-size: 14px; line-height: 1.2; border: 1px solid rgba(55, 53, 47, 0.16); margin-left: 12px;">취소</div></div></div></div></div></div></div>
</form>
<!-- 여기까지 form 태그 -->

<!-- input type= "submit" value = "변경" -->


<!-- 이메일 체크 -->

<script type="text/javascript">
     function emailCheck(){
          //jQuery에서 선택자역할
          var emailStr = $("#email").val();
          
          $.ajax({
              url : "MypageCheckemail?email="+emailStr,
              success : function(data){
                   if(data == "success"){
                        $("#email_result").text("사용가능한 이메일입니다.");
                   }else if(data == "fail"){
                        $("#email_result").text("이미 존재하는 이메일 입니다.");
                   }
              }
          });
     }
</script>




<!-- 닉네임 체크 -->

<script type="text/javascript">
     function nickCheck(){
          //jQuery에서 선택자역할
          var nickStr = $("#nick").val();
          
          $.ajax({
        	  url : "MypageChecknick?nick="+nickStr,
              success : function(data){
                   if(data == "success"){
                	   $("#nick_result").text("사용 가능한 닉네임입니다.");
                   }else if(data == "fail"){
                	   $("#nick_result").text("이 닉네임은 사용하실 수 없습니다.");
                   }
              }
          });
     }
</script>


<script type="text/javascript">
	function logout() {
		 
		    	var result1 = confirm("로그아웃 하시겠습니까?");
		    	if(result1){
		    		<%session.removeAttribute("session");%>
		       		location.href='http://localhost:8037/1stProject/index.jsp'
		    	}else{
		    	    alert("로그아웃이 취소되었습니다");
		    	}	
	}
		   
	


</script>
 


<script>
	
    function account_delete() {
    	var result = confirm("정말 계정을 삭제 하시겠습니까?");
    	if(result){
    	    alert("정상적으로 탈퇴되었습니다");
    	     
    	    var form = document.createElement('form'); // 폼객체 생성
			var objs;
			objs = document.createElement('input'); // 값이 들어있는 녀석의 형식
			//objs.setAttribute('type', 'text'); // 값이 들어있는 녀석의 type
			objs.setAttribute('name', 'list_id'); // 객체이름
			objs.setAttribute('value', '<%=list_id%>'); //객체값
			form.appendChild(objs);
			form.setAttribute('method', 'post'); //get,post 가능
			form.setAttribute('action', "http://localhost:8037/1stProject/Account_deleteCon.do"); //보내는 url  "/login/users"
			document.body.appendChild(form);
			form.submit();  
    	     
			<%-- location.href='http://localhost:8037/1stProject/Account_deleteCon.do?hot=<%=hot%>'; --%>
			
    	}else{
    	    alert("내 계정 삭제가 취소되었습니다");
    	}
    }
    
</script>


<script>
	
	function move() {
		
		location.href='http://localhost:8037/1stProject/Main.html'
	}

</script>



<script>
	
	function cancel() {
		 alert("변경이 취소되었습니다. 메인페이지로 돌아갑니다.");
		location.href='http://localhost:8037/1stProject/Main.html'
	}

</script>

<!-- 
   <script>
    function account_delete() {
   
    swal({
        title: "정말 탈퇴하시겠습니까?",
        text: "탈퇴하시면 계정을 복구 하실수 없습니다!",
        icon: "warning",
        buttons: true,
        dangerMode: true,
      })
      .then((willDelete) => {
        if (willDelete) {
            
          swal("회원탈퇴가 완료되었습니다!", {
            icon: "success",
            location.href='http://localhost:8037/1stProject/Account_deleteCon.do'
          });
          
        } else {
          swal("취소되었습니다!");
        }
      }); 
    }
    </script> 
     -->

      
   



<!-- 
		<script type="text/javascript">
     function nickCheck(){
          //jQuery에서 선택자역할
          var nickStr = $("#nick").val();
          
          $.ajax({
              url : "MypageCheckServlet?nick="+nickStr,
              success : function(data){
                   if(data != null){
                        
                    	    $("#nick_result").text("이 이메일은 사용하실 수 없습니다.");
                    	    
                        }
                    	        	   
                   
                   else(data == "null"){
                        $("#nick_result").text("이 이메일은 사용하실 수 있습니다.");
                   }
              }
          });
     }
</script> 
		 -->


 <!-- <script type="text/javascript">
     function emailCheck(){
          //jQuery에서 선택자역할
          var emailStr = $("#email").val();
          
          $.ajax({
              url : "MypageCheckServlet?email="+emailStr,
              success : function(data){
                   if(data != null){
                        
                        if(data == emailStr){ 
                        	
                    	    $("#email_result").text("이메일을 변경하실 수 있습니다.");}
                    	    else if{
                    	    $("#email_result").text("이 이메일은 사용하실 수 없습니다.");
                    	    
                        }
                    	        	   
                   }
                   else if(data == "null"){
                        $("#email_result").text("이 이메일은 사용하실 수 있습니다.");
                   }
              }
          });
     }
</script>
				 -->
		




</body>
</html>