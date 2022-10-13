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

	  
      <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
          <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
          <link rel="stylesheet" href="resources/css/style.css">
          <script src="./resources/js/jquery-3.6.1.min.js"></script>

</head>
<body>

		<%
		// 세션 가져오기.
		request.setCharacterEncoding("UTF-8");
		UserDTO list = (UserDTO)session.getAttribute("loginUser");
		String list_id = list.getUser_id();
		
		%>


    <div style="background-color: #1D1919; display: flex; justify-content: space-between; align-items: center; overflow: hidden; height: 45px; padding-left: 12px; padding-right: 10px;">
        <div style="display: flex; align-items: center; line-height: 1.2; font-size: 14px; height: 100%; flex-grow: 0; margin-right: 8px; min-width: 0px;">
        <div  role="button" tabindex="0" style="user-select: none;  cursor: pointer; display: inline-flex; align-items: center; flex-shrink: 1; white-space: nowrap; height: 24px; border-radius: 3px; font-size: 14px; line-height: 1.2; min-width: 0px; padding-left: 6px; padding-right: 6px; color: rgb(55, 53, 47);">
    <div style="display: flex; align-items: center; justify-content: center; height: 20px; width: 20px; border-radius: 0.25em; flex-shrink: 0; margin-right: 6px;">
        
        <div>
        <div style="width: 100%; height: 100%;">
    <img src="img/Edution2.png" referrerpolicy="same-origin" style="display: block; object-fit: cover; border-radius: 3px; width: 20px; height: 20px; transition: opacity 100ms ease-out 0s;"></div></div></div>
    <div href="#" onClick="top.location='javascript:location.reload()'" class="notranslate" style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 240px; color: white;">Edution User</div></div></div>
    <a href="Main.do" style="color:white; user-select: none; cursor: pointer; display: inline-flex; align-items: center; flex-shrink: 0; white-space: nowrap; height: 28px; border-radius: 3px; font-size: 14px; line-height: 1.2; min-width: 0px; padding-left: 8px; padding-right: 8px;">
    
        <img src="img/Edution2.png"  style="width: 20px; height: 20px; margin-right: 10px; border-radius: 3px; ">
        Edution으로 돌아가기</a>

</div>
<!-- 여기까지 상단바 부분 -->


    <div class="wrapper d-flex align-items-stretch">
        <nav id="sidebar">

            <div class="p-4 pt-5">
                <!-- 아이디의 프로필 사진이 보여지게 해주세요 -->

                <img id="preview" src="resources/image/<%=list.getUser_photo()%>">
<!--               <a id="preview" class="img logo rounded-circle mb-5" style="background-image: url(resources/image/<%=list.getUser_photo()%>);"></a> -->

        
              <a id="preview" href="#" class="img logo rounded-circle mb-5" style="background-image: url(resources/image/<%=list.getUser_photo()%>);"></a>
              <%-- <img src="resources/image/<%=list.getUser_photo()%>" id="preview2" style="border-radius: 100%; width: 70px; height: 70px;"> --%>

              <p style="color: #f8b739; margin-left: 80px;">My Page</p>
     		  <p style="margin-left: 80px;"><%=list.getUser_id()%>님의 페이지</p>
        <ul class="list-unstyled components mb-5">
          <li>
            <a href="#" data-toggle="collapse" aria-expanded="false" id="lihome" onclick="closeText(lihome);">My account</a>
          </li>
          <li>
              <a href="#" id="liuser" onclick="closeText(liuser);">Delete my account</a>
          </li>
            <li>
                <a href="#" id="licommunity1" onclick="closeText(licommunity1);">Logout</a>
            </li>
        </ul>


      </div>
    </nav>

  
		

    <!-- Page Content  -->
  <div id="content" class="p-4 p-md-5">

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">

        <button type="button" id="sidebarCollapse" class="btn btn-primary">
          <i class="fa fa-bars"></i>
          <span class="sr-only">Toggle Menu</span>
        </button>
        <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fa fa-bars"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="nav navbar-nav ml-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#" onclick="closeText(lihome)">My account</a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="#" onclick="closeText(liuser)" >Delete my account</a>
            </li>

            <li class="nav-item" >
                <a class="nav-link" href="#" onclick="closeText(licommunity1)">Logout</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    
    
  <form action = "UpdateCon.do" name= "MyPageform" enctype="multipart/form-data" method="post" accept-charset="utf-8"> 
        <input type= "hidden" value="<%=list.getUser_id()%>" name="user_id">   
    <div id="test1" style="display: none;" class="adminTest">
        <h2 class="mb-4" style="margin-top:15px">#Account</h2>
   	         <img src="resources/image/<%=list.getUser_photo()%>" id="preview2" style="border-radius: 100%; width: 120px; height: 120px;">

        <div class="filebox">
            <input class="upload-name" placeholder="User Profile...">
            <label for="file">파일찾기</label> 
            <input type="file" id="file" name= "user_photo" onchange="readURL(this);" multiple id="photo_upload">
        </div>     
   
        
        <div class="join-main-emailform">
            <input id="email" name="user_email" value="<%=list.getUser_email()%>" type="text" class="join-main-emailform-input" placeholder="User E-mail">
            <input id="email_result" type="email" class="join-main-emailform-input" style="display:none;" placeholder="확인" disabled>
            <button onclick="emailCheck()" type="button" class="btn btn-secondary btn-sm" style="margin-left:50px">확인</button>
        </div>
        
        <div class="join-main-nickform">
            <input  id="nick" name="user_nick" value= "<%=list.getUser_nick()%>" type="text" class="join-main-nickform-input" placeholder="Nickname">
            <input  id="nick_result" type="text" class="join-main-nickform-input" placeholder="Nickname" style="display: none;" disabled>
            <button onclick="nickCheck()" type="button" class="btn btn-secondary btn-sm" style="margin-left:50px">확인</button>
        </div>

        <div class="login-main-pwform">
            <input autocomplete="false" onchange="check_pw()" id="key" name="user_pw" type="password" type="password" class="login-main-pwform-input" placeholder="New Password">
        </div>
        <input type= "button" onclick= "MyPageform_check();"class="btn btn-dark" style="margin-right:5px" value="변경">
        <button onclick = "cancel()" type="button" class="btn btn-secondary">취소</button>
        
    </div>
</form>

    <div id="test2" style="display: none; " class="adminTest">
        <h2 class="mb-4">Delete my account</h2>

	<button onclick="account_delete()" type="button" class="btn btn-outline-danger">Delete account</button>
<br>
        <!-- <input type="submit" class="btn btn-dark" style="margin-right:5px" value="변경">
        <button onclick = "cancel()" type="button" class="btn btn-secondary">취소</button> -->
    </div>
    
        
    
    
    

    <div id="test4" style="display: none;" class="adminTest">
        <h2 class="mb-4">#Logout</h2>
        
        <button onclick="logout()" type="button" class="btn btn-outline-danger">Logout</button><br><br>

        
    </div>

  
    
</div>
</div>

 

<script>
function readURL(input) {
   if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function(e) {
         document.getElementById('preview').src = e.target.result;
         document.getElementById('preview2').src = e.target.result;
      };
      reader.readAsDataURL(input.files[0]);
   } else {
      document.getElementById('preview').src = "";
      document.getElementById('preview2').src = "";
   }
}
</script>


    <script>

       

        var test1=document.getElementById("test1")
        var test2=document.getElementById("test2")
        var test3=document.getElementById("test3")
        var test4=document.getElementById("test4")
        var test5=document.getElementById("test5")
        var test6=document.getElementById("test6")
        var lihome=document.getElementById("lihome")
        var liuser=document.getElementById("liuser")
        var licommunity=document.getElementById("licommunity")
        var licommunity1=document.getElementById("licommunity1")
        var licommunity2=document.getElementById("licommunity2")
        var litotal=document.getElementById("litotal")

        
        function closeText(data){
            
            if(data == lihome){
                $(".adminTest").css('display','none');
                    test1.style="display:block;"     
                                 
                }
                else if(data == liuser){
                    $(".adminTest").css('display','none');
                    test2.style="display:block;"
                    
                }else if(data == licommunity){
                    
                }else if(data == licommunity1){
                    $(".adminTest").css('display','none');
                    test4.style="display:block;"
                      
                }else if(data == licommunity2){
                    $(".adminTest").css('display','none');
                    test5.style="display:block;"
                       
                }
            
        }
            


        function emailCheck(){
          //jQuery에서 선택자역할
          var emailStr = $("#email").val();
          var real_email = <%=list.getUser_email()%>;
          
          $.ajax({
              url : "MypageCheckemail?email="+emailStr,
              success : function(data){
            	  if(data == real_email){
            		  $("#email").attr("placeholder", "SAME.");
            		  $("#email_result").attr("placeholder", "SAME.");
                 	}else if(data == "success"){
                        
                    $("#email_result").attr("placeholder", "사용 가능한 이메일입니다.");
                    $("#email_result").css("display", "inline");
                    $("#email").css("display","none");

                   }else if(data != null){
                    $("#email").val('');
                    $("#email").attr("placeholder", "이미 사용 중인 이메일입니다.");	

                   }
              }
          });
     }


     function nickCheck(){
          //jQuery에서 선택자역할
          var nickStr = $("#nick").val();
          var real_nick = <%=list.getUser_nick()%>;
          
          $.ajax({
        	  url : "MypageChecknick?nick="+nickStr,
              success : function(data){
            	  
            	  if(data == real_nick){
            		  $("#nick").attr("placeholder", "SAME.");
            		  $("#nick_result").attr("placeholder", "SAME.");
                 	}else if(data == "success"){
                	   
                    $("#nick_result").attr("placeholder", "사용 가능한 닉네임입니다.");
                    $("#nick_result").css("display", "inline");
                    $("#nick").css("display","none");

                   }else if(data != null){
                       $("#nick").val('');
                       $("#nick").attr("placeholder", "이미 사용 중인 닉네임입니다.");
                   }
              }
          });
     }

     function logout() {
		 
         var result1 = confirm("로그아웃 하시겠습니까?");
         if(result1){
             <%session.removeAttribute("session");%>
                location.href='http://localhost:8037/1stProject/index.jsp'
         }else{
             alert("로그아웃이 취소되었습니다");
         }	
}

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




	
	function cancel() {
		 alert("변경이 취소되었습니다. 메인페이지로 돌아갑니다.");
		location.href='http://localhost:8037/1stProject/Main.do'
	}

</script>
        
         
<!-- 비밀번호 로직 -->
<script>
        function check_pw(){
 
            var pw = document.getElementById('key').value;
           
 
            if(pw.length < 4 || pw.length>16){
                window.alert('비밀번호는 4글자 이상, 16글자 이하만 이용 가능합니다.');
                document.getElementById('key').value='';
                document.getElementById('key').focus();
            }
                      
            
        }
    </script>         
         
         
<!-- 값을 넣지 않을경우 서버쪽에 db를 넘기지 않는 조건문 -->
<script>
	function MyPageform_check(){

	     var pw = document.getElementById("key");
	     var email = document.getElementById("email");
	     var nick = document.getElementById("nick");
	     
	     
	      if(email.value == ""){
	          alert("이메일을 입력해주세요.");
	          email.focus();
	          return false;
	       }
	       if(nick.value == ""){
	          alert("닉네임을 입력해주세요.")
	          return false;
	       }
	       if(pw.value == ""){
		          alert("비밀번호를 제대로 입력 해주세요.")
		          pw.focus();
		          return false;
		       }
	      
	     
	       document.MyPageform.submit();
	    
	
	}
	     
	    

	</script>         
         
         
         



<script src="resources/js/popper.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/main_qna_mypage.js"></script>

</body>
</html>