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
    #keyShow {
  position: absolute;
  display: none;
  margin-left: -50px;
  margin-top: 24px;
  font-size: 9px;
  cursor: pointer;
  color: grey;
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
                
                <div>
                <div style="letter-spacing: 0.03em; text-transform: uppercase; font-size: 11px; line-height: 1; margin-bottom: 1px; color: rgba(55, 53, 47, 0.65); font-weight: 500; padding: 5px 15px; text-overflow: ellipsis; overflow: hidden;"><%="\""+list.getUser_id()+"\"님의 마이페이지 입니다."%></div>
                
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
        <form id="ajaxform" enctype = "multipart/form-data">
        <input class="form-control" type="file" multiple id="photo_upload">
        <output id="list"></output>
			<input type="button" value="적용" id="files_send">
        </form>
        
      </div>
        
        
        
              
<!-- 37번에 108번으로 이동함 -->    
<form action = "UpdateCon.do" enctype="multipart/form-data" method="post">   
             <input type= "hidden" value="<%=list.getUser_id()%>" name="user_id">    
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
<div style="color: rgb(55, 53, 47); border-bottom: 0px; margin-bottom: 2px; padding-bottom: 0px; font-size: 14px; font-weight: 400; width: auto;">비밀번호변경</div>



<!-- 비밀번호 변경 -->
<label style="display: block; margin-bottom: 4px; font-size: 12px; color: rgba(55, 53, 47, 0.65); margin-top: 14px;">원하시는 비밀번호를 입력해주세요</label>
<div class="notion-focusable-within" style="display: flex; align-items: center; width: 100%; font-size: 14px; line-height: 20px; padding: 4px 10px; position: relative; border-radius: 3px; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px inset; background: rgba(242, 241, 238, 0.6); cursor: text;">
<input autocomplete="false"  id="key" name="user_pw" type="password" value="<%=list.getUser_pw()%>"style="font-size: inherit; line-height: inherit; border: none; background: none; width: 100%; display: block; resize: none; padding: 0px;"></div></div>
<div></div>



&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div id="keyShow" class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; white-space: nowrap; height: 20px; border-radius: 3px; font-size: 12px; line-height: 1.2; padding-left: 5px; padding-right: 5px; color: rgba(55, 53, 47, 0.65);">비밀번호 보이기</div>
<!-- <span id="keyShow" class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; white-space: nowrap; height: 20px; border-radius: 3px; font-size: 12px; line-height: 1.2; padding-left: 5px; padding-right: 5px; color: rgba(55, 53, 47, 0.65);">원하시는 비밀번호를 입력해주세요</span> -->


</div></div>
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

<script type="text/javascript">

       	$("#files_send").click(function(){
       		var formData = new FormData();
       		var temp = $("#photo_upload")[0].files[0];
       		console.log(temp);
       		
       		  for(var i=0; i<$('#photo_upload')[0].files.length; i++){
       			  formData.append('uploadFile', $('#photo_upload')[0].files[i]);
       		  }
       		  for (var key of formData.keys()) {
       			  console.log(key);

       			}
       		  
       			$.ajax({
       				type : "POST",
       				url : "MyPageImgServlet?list_id="+<%=list_id%>,
       		        processData: false,
       		        contentType: false,
       				data : formData,
       						
       				success : function(data) {
       					//alert('업로드 성공')
						window.location.reload(true)
       				},
       				error : function(xhr, status, error) {
       					alert('이미지를 제대로 선택해주세요');
       				}
       			});
       		
       	});

       </script>



<script>

$("#key").on("keyup", function(event) {
	  if (event.keyCode === 13) {
	    event.preventDefault();
	    $("#checkKey").triggerHandler("click");
	  } else {
	    if (this.value) {
	      $("#keyShow").css("display", "inline-block");
	    } else {
	      $("#keyShow").hide();
	    }
	  }
	}).focus();

	$("#keyShow").on("click", function() {
	  if ($("#key").attr("type") == "password") {
	    $("#key").attr("type", "text");
	    $($(this)).text("비밀번호 감추기");
	  } else {
	    $("#key").attr("type", "password");
	    $($(this)).text("비밀번호 보이기");
	  }
	});


</script>


</body>
</html>