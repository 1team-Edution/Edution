<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
   
       <style>
html{
    font-family: "Lato",Arial,sans-serif;
        padding: 60px;
        
    }

body{
    height:969px;
    width:1261px;
    
    font-family: inter-var, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, "Apple Color Emoji", Arial, sans-serif, "Segoe UI Emoji", "Segoe UI Symbol";
    font-size: 17px;
    line-height: 1.5;
    overflow: hidden;

}
header {
    width: 100%;
    height: 50px; 
    position: absolute; 
    align-items: center;
    top: 1vh;
    left: -16vh;
}


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="./resources/js/jquery-3.6.1.min.js"></script>



    .index-sub-joinbtn{
    width: 65px;
    height: 23px;
    background-color: rgb(225, 98, 89);
    border-radius: 5px;
    padding: 0.375rem 0.875rem 0.4375rem 0.875rem;
    position: absolute; 
    left:183vh;
    top:1vh;
}

.index-sub-joinbtn > a {
  
  font-size: 1rem;
  font-weight: 570;
  color: #fff;
  text-decoration: none; 
  color: white;

}

.login-main-title{
    position: absolute; 
    top: 2vh;
    left: 7vh;

}


.login-main-idform{
    position: absolute; 
    top: 23.5vh;
    left: 6vh;
    width: 400px;
    height: 53px;
    background-color: rgba(0,0,0,0.1);
    border-radius: 50px;

}

.login-main-pwform{
    position: absolute; 
    top: 30vh;
    left: 6vh;
    width: 400px;
    height: 53px;
    background-color: rgba(0,0,0,0.1);
    border-radius: 50px;

}

.join-main-emailform{
    position: absolute; 
    top: 36.5vh;
    left: 6vh;
    width: 400px;
    height: 53px;
    background-color: rgba(0,0,0,0.1);
    border-radius: 50px;
}

.join-main-nickform{

    position: absolute; 
    top: 43vh;
    left: 6vh;
    width: 400px;
    height: 53px;
    background-color: rgba(0,0,0,0.1);
    border-radius: 50px;

}

.join-main-nickform-input{
    position: absolute; 
top: 43.5vh;
left: 8.5vh;
width: 250px;
height: 40px;
border-color: rgba(0,0,0,0);
outline: none;
background-color: rgba(0,0,0,0)
}


.filebox .upload-name {
    position: absolute; 
    top: 17vh;
    left: 7vh;
    display: inline-block;
    height: 40px;
    padding: 0 10px;
    vertical-align: middle;
    border: 1px solid #dddddd;
    border-radius: 10px;
    width: 250px;
    color: #999999;
}

.filebox label {
    position: absolute; 
    top: 17vh;
    left: 35vh;
    display: inline-block;
    padding-top: 7px;
    padding-left: 14px;
    padding-right: 14px;
    color: #fff;
    vertical-align: middle;
    border-radius: 10px;
    background-color: #999999;
    cursor: pointer;
    height: 38px;
    margin-left: 10px;
    text-align: center;
    
}

.filebox input[type="file"] {
    position: absolute;
    width: 0;
    height: 0;
    padding: 0;
    overflow: hidden;
    border: 0;
}




.join-main-emailform-input{

position: absolute; 
top: 37vh;
left: 8.5vh;
width: 250px;
height: 40px;
border-color: rgba(0,0,0,0);
outline: none;
background-color: rgba(0,0,0,0);
}


.login-main-idform-input{

    position: absolute; 
    top: 24vh;
    left: 8.5vh;
    width: 250px;
    height: 40px;
    border-color: rgba(0,0,0,0);
    outline: none;
    background-color: rgba(0,0,0,0);
}

.login-main-pwform-input{

position: absolute; 
top: 30.5vh;
left: 8.5vh;
width: 250px;
height: 40px;
border-color: rgba(0,0,0,0);
outline: none;
background-color: rgba(0,0,0,0);
}



.login-main-submit{
    position: absolute; 
    top: 50vh;
    left: 6vh;
    width: 400px;
    height: 53px;
    background-color: rgb(225, 98, 89, 0.6);
    border: none;
    border-radius: 50px;
    font-size:16px;
    

}

.submit-text{

    position: absolute; 
    top: 55vh;
    left: 7vh;

    font-size: 14px;
    color: rgba(0,0,0,0.5);
}

.login-main-submit:focus,
.login-main-submit:hover
{
    background-color: rgb(225, 98, 89);
    cursor: pointer;

}



.login-main-submit > a{

position: absolute; 
top: 50;
left: 50;
color: fff;

}

input::placeholder{
    font-size: 16px;
}


#join-main-right{
    position: absolute; 
    top: 20vh;
    left: 100vh;
    width: 500px;
    height: 700px;
    background-color: rgb(225, 98, 89);
    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
}

#join-main-left{

    position: absolute; 
    top: 20vh;
    left: 48.5vh;
    box-shadow: rgba(0, 0, 0, 0.35) 0px 0px 15px;
    width: 500px;
    height: 700px;
    
}




.login-sub-title{
    position: absolute; 
    top: 25vh;
    left: 9vh;

}

.login-main-rightbtn{
    width: 92px;
    height: 45px;
    background-color: rgb(225, 98, 89);
    border: solid 1px #fff;
    border-radius: 50px;
    color: #fff;
    position: absolute; 
    top: 42vh;
    left: 22vh;
}

.login-main-rightbtn:hover,
login-main-rightbtn:focus{

    background-color: #fff;
    color: black;
    cursor: pointer;
}



    </style>

   

</head>
<body>    
    <header>
        <div style="font-size: 15px; white-space: nowrap; top: 0px; width: 100%; display: flex; flex-direction: column; align-items: center;">
            <nav style="display: flex; align-items: center; width: 100%; max-width: 1300px;  height: px; overflow: hidden;">
            <div style="flex-shrink: 0;">
                <div style="display: flex; align-items: center">                   
                    <img src="img/Edution2.png" style="width: 30px; height: 30px; padding-top: 15px;">
                    <div role="button" style="font-weight: 500; font-size: 17px; cursor: default; padding-top: 15px;
                    font-family:inter-var, -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, 'Apple Color Emoji', Arial, sans-serif, 'Segoe UI Emoji', 'Segoe UI Symbol';">Edution
                    </div>
                <div >
                    <ul style="list-style: none;">
                        <li style="float: left; margin-left: 15px; margin-right: 15px; font-weight: 500; cursor: default;"><a href="" style="text-decoration: none; color:inherit;">Home</a></li>
                        <li style="float: left; margin-left: 15px; margin-right: 15px; cursor: default;"><a href="" style="text-decoration: none; color:inherit;">Community</a></li>
                        <li style="float: left; margin-left: 15px; margin-right: 15px; cursor: default;"><a href="#" style="text-decoration: none; color:inherit; ">Q&A</a></li>
                        <li style="float: left; ">
                            <div style="position: absolute; left:88%;">
                                <a href="#" style="text-decoration: none; color:inherit ">로그인</a>
                            </div>
                        </li>
                        <li>
                            <div class="index-sub-joinbtn">
                                <a href="#">회원가입</a>
                            </div>
                                  
                        </li>
                    </ul>
                </div>
                </div>
            </div>
        </nav>
        </div>
    </header>
    

    <main>



        
<div style="box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;">
    <div id="join-main-left">
        <div class="login-main-title" >
            <h1 style="font-size: 50px;">Sign Up</h1>
        </div>


<<<<<<< HEAD
<form>
        <div class="login-main-idform"></div>
            <input class="login-main-idform-input" placeholder="User ID">
        
        <div class="login-main-pwform"></div>
        <input type="password" class="login-main-pwform-input" placeholder="Password">
=======
		
<form action ="Join.do" enctype = "multipart/form-data" method="post">
   <!-- 사진 입력 창 -->      
    <div class="mb-3">
    <label for="formFile" class="form-label" name="#"> 
    <div style="width: 120px; height: 120px;"><div style="width: 100%; height: 100%;">
    <img src="img/home-page.webp" id="preview" style="display: block; object-fit: cover; border-radius: 100%; width: 120px; height: 120px;"></div></div>
        	
        </label>
      
        <input name= "user_photo" class="form-control" onchange="readURL(this);" type="file" multiple id="photo_upload"> 
>>>>>>> branch 'master' of https://github.com/1team-Edution/Edution.git

<<<<<<< HEAD
        <div class="join-main-emailform"></div>
        <input type="email" class="join-main-emailform-input" placeholder="User E-mail">
=======
        
        
      </div>
				
                      <!-- input 추가 필요할 경우 여기서부터 -->

                  
                      <label style="display: block; margin-bottom: 4px; font-size: 16px; color: rgba(55, 53, 47, 0.65);"><br>ID/PW</label>
                      <div style="display: flex; align-items: center; width: 100%; font-size: 15px; line-height: 26px; padding: 4px 10px; position: relative; border-radius: 3px; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px inset; background: rgba(242, 241, 238, 0.6); cursor: text; margin-top: 4px; margin-bottom: 8px;">
                        <input id="user_id" name="user_id" placeholder="ID를 입력하세요." style="font-size: inherit; line-height: inherit; border: none; background: none; width: 100%; display: block; resize: none; padding: 0px;"></div>                        
                       <div onclick = "idCheck()" class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; white-space: nowrap; height: 20px; border-radius: 3px; font-size: 12px; line-height: 1.2; padding-left: 5px; padding-right: 5px; color: rgba(55, 53, 47, 0.65);">아이디 중복체크<br></div>
						<span id="id_result" style="margin-right: 12px;">사용자 아이디를 입력해주세요</span>
                       
                       <!-- 여기까지 복붙해서 사용하기! placeholder에 문구 입력! -->
>>>>>>> branch 'master' of https://github.com/1team-Edution/Edution.git

<<<<<<< HEAD
        <div class="join-main-nickform"></div>
        <input type="text" class="join-main-nickform-input" placeholder="Nickname">

=======
                        <div style="display: flex; align-items: center; width: 100%; font-size: 15px; line-height: 26px; padding: 4px 10px; position: relative; border-radius: 3px; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px inset; background: rgba(242, 241, 238, 0.6); cursor: text; margin-top: 4px; margin-bottom: 8px;">
                          <input id="pw" name = "user_pw" onchange="check_pw()" placeholder="PW를 입력하세요." type="password" style="font-size: inherit; line-height: inherit; border: none; background: none; width: 100%; display: block; resize: none; padding: 0px;"></div>
                          <div style="display: flex; align-items: center; width: 100%; font-size: 15px; line-height: 26px; padding: 4px 10px; position: relative; border-radius: 3px; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px inset; background: rgba(242, 241, 238, 0.6); cursor: text; margin-top: 4px; margin-bottom: 8px;">
                          <input id="pw2" onchange="check_pw()" placeholder="PW를 한 번 더 입력하세요." type="password" style="font-size: inherit; line-height: inherit; border: none; background: none; width: 100%; display: block; resize: none; padding: 0px;"></div>
                        	<span id="check" style="margin-right: 12px;"></span><br><br>
                          
                          <!-- <div onclick = "pwCheck()" class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; white-space: nowrap; height: 20px; border-radius: 3px; font-size: 12px; line-height: 1.2; padding-left: 5px; padding-right: 5px; color: rgba(55, 53, 47, 0.65);">비밀번호 중복체크<br></div> -->
						  <div style="width: 100%; height: 1px; visibility: visible; border-bottom: 1px solid rgba(55, 53, 47, 0.16);"></div>
>>>>>>> branch 'master' of https://github.com/1team-Edution/Edution.git

<<<<<<< HEAD
        <div class="filebox">
            <input class="upload-name" placeholder="User Profile...">
            <label for="file">파일찾기</label> 
            <input type="file" id="file">
        </div>

        <input type="submit" class="login-main-submit" value="Sign Up" style="color: white;">
        <p class="submit-text">*프로필 사진을 제외한 모든 항목은 필수항목입니다.</p>
    </div>

</form>

    <div id="join-main-right">



        <div class="login-sub-title"><h1 style="color: #fff;">Welcome to Edution!</h1>
        <blockquote style="color: #fff; padding-left: 30px; font-size: 16px;">이미 Edution 회원이신가요?</blockquote>
    </div>
    
    <button class="login-main-rightbtn" onclick = "location.href='#'">Sign In</button>
    

    </div>
        
</div>        

    </main>
    
    
    
    

=======


						<!-- 이름  -->
						
						<label style="display: block; margin-bottom: 4px; font-size: 16px; color: rgba(55, 53, 47, 0.65);"><br>이름/이메일/닉네임</label>
                          
                          <div style="display: flex; align-items: center; width: 100%; font-size: 15px; line-height: 26px; padding: 4px 10px; position: relative; border-radius: 3px; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px inset; background: rgba(242, 241, 238, 0.6); cursor: text; margin-top: 4px; margin-bottom: 8px;">
                            <input id="name" name="user_name" placeholder="이름을 입력하세요." style="font-size: inherit; line-height: inherit; border: none; background: none; width: 100%; display: block; resize: none; padding: 0px;"></div>                        
 							 <!-- <div class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; white-space: nowrap; height: 20px; border-radius: 3px; font-size: 12px; line-height: 1.2; padding-left: 5px; padding-right: 5px; color: rgba(55, 53, 47, 0.65);">이름을 꼭 입력해주세요<br></div> --> 
						<!-- <span id="email_result" style="margin-right: 12px;">사용자 이메일을 입력해주세요</span> -->
                          
                          
                          <!-- 이메일  -->                          
                          <div style="display: flex; align-items: center; width: 100%; font-size: 15px; line-height: 26px; padding: 4px 10px; position: relative; border-radius: 3px; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px inset; background: rgba(242, 241, 238, 0.6); cursor: text; margin-top: 4px; margin-bottom: 8px;">
                            <input id="email" name="user_email" placeholder="이메일을 입력하세요." style="font-size: inherit; line-height: inherit; border: none; background: none; width: 100%; display: block; resize: none; padding: 0px;"></div>                        
 							<div onclick = "emailCheck()" class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; white-space: nowrap; height: 20px; border-radius: 3px; font-size: 12px; line-height: 1.2; padding-left: 5px; padding-right: 5px; color: rgba(55, 53, 47, 0.65);">이메일 중복체크<br></div>
						<span id="email_result" style="margin-right: 12px;">사용자 이메일을 입력해주세요</span>
 
 
 
 					<!-- 닉네임 -->
                            <label style="display: block; margin-bottom: 4px; font-size: 12px; color: rgba(55, 53, 47, 0.65);"></label>
                            <div style="display: flex; align-items: center; width: 100%; font-size: 15px; line-height: 26px; padding: 4px 10px; position: relative; border-radius: 3px; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px inset; background: rgba(242, 241, 238, 0.6); cursor: text; margin-top: 4px; margin-bottom: 8px;">
                              <input id="nick" name="user_nick" placeholder="닉네임을 입력하세요." style="font-size: inherit; line-height: inherit; border: none; background: none; width: 100%; display: block; resize: none; padding: 0px;"></div>
                              <div onclick = "nickCheck()" class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; white-space: nowrap; height: 20px; border-radius: 3px; font-size: 12px; line-height: 1.2; padding-left: 5px; padding-right: 5px; color: rgba(55, 53, 47, 0.65);">닉네임 중복체크<br></div>
						<span id="nick_result" style="margin-right: 12px;">사용자 닉네임을 입력해주세요</span>                          

                        <input type = "submit" value="가입하기" class="notion-focusable" role="button" aria-disabled="false" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; justify-content: center; white-space: nowrap; height: 36px; border-radius: 4px; color: rgb(235, 87, 87); font-size: 14px; line-height: 1; padding-left: 12px; padding-right: 12px; font-weight: 500; background: rgb(253, 245, 242); box-shadow: rgba(15, 15, 15, 0.1) 0px 1px 2px, rgba(235, 87, 87, 0.3) 0px 0px 0px 1px inset; margin-top: 6px; margin-bottom: 12px; width: 100%;"></div>
                      </form>
>>>>>>> branch 'master' of https://github.com/1team-Edution/Edution.git
</body>


<!-- 사진 기능 -->
<script>
function readURL(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader();
		reader.onload = function(e) {
			document.getElementById('preview').src = e.target.result;
		};
		reader.readAsDataURL(input.files[0]);
	} else {
		document.getElementById('preview').src = "";
	}
}
</script>



<script type="text/javascript">
     function idCheck(){
          //jQuery에서 선택자역할
                    
          if($("#user_id").val()==""){
				alert("아이디를 입력해주세요.");
				$("#id").focus();
				/* document.getElementById('id').focus(); */
				return false; 
			}
          
          var idStr = $("#user_id").val();
          
          $.ajax({
              url : "JoinidCheck",
              data : {id : idStr},
              success : function(data){
                   if(data == "success"){
                        $("#id_result").text("사용가능한 아이디입니다.");
                   }else if(data == "fail"){
                        $("#id_result").text("이 아이디는 사용하실 수 없습니다.");
                   }
              }
          });
     }
</script>

 <script>
        function check_pw(){
 
            var pw = document.getElementById('pw').value;
            var SC = ["!","@","#","$","%"];
            var check_SC = 0;
 
            if(pw.length < 6 || pw.length>16){
                window.alert('비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.');
                document.getElementById('pw').value='';
                document.getElementById('pw').focus();
            }
            for(var i=0;i<SC.length;i++){
                if(pw.indexOf(SC[i]) != -1){
                    check_SC = 1;
                }
            }
            if(check_SC == 0){
                window.alert('!,@,#,$,% 의 특수문자가 들어가 있지 않습니다.')
                document.getElementById('pw').value='';
                document.getElementById('pw').focus();
            }
            if(document.getElementById('pw').value !='' && document.getElementById('pw2').value!=''){
                if(document.getElementById('pw').value==document.getElementById('pw2').value){
                    document.getElementById('check').innerHTML='비밀번호가 일치합니다.'
                    document.getElementById('check').style.color='blue';
                }
                else{
                    document.getElementById('check').innerHTML='비밀번호가 일치하지 않습니다.';
                    document.getElementById('check').style.color='red';
                }
            }
        }
    </script>
    
    
    
<script type="text/javascript">
     function emailCheck(){
          //jQuery에서 선택자역할
                    
          if($("#email").val()==""){
				alert("이메일을 입력해주세요.");
				$("#email").focus();
				/* document.getElementById('id').focus(); */
				return false; 
			}
          
          var emailStr = $("#email").val();
          
          $.ajax({
              url : "JoinemailCheck",
              data : {email : emailStr},
              success : function(data){
                   if(data == "success"){
                        $("#email_result").text("사용가능한 이메일입니다.");
                        
                   }else if(data == "fail"){
                        $("#email_result").text("이 이메일은 사용하실 수 없습니다.");
                        
                   }
              }
          });
     }
</script>



<script type="text/javascript">
     function nickCheck(){
          //jQuery에서 선택자역할
                    
          if($("#nick").val()==""){
				alert("닉네임을 입력해주세요.");
				$("#nick").focus();
				/* document.getElementById('id').focus(); */
				return false; 
			}
          
          var nickStr = $("#nick").val();
          
          $.ajax({
              url : "JoinnickCheck",
              data : {nick : nickStr},
              success : function(data){
                   if(data == "success"){
                        $("#nick_result").text("사용가능한 닉네임입니다.");
                        
                   }else if(data == "fail"){
                        $("#nick_result").text("이 닉네임은 사용하실 수 없습니다.");
                        
                   }
              }
          });
     }
</script>





<!-- <script type="text/javascript">
     function pwCheck(){
          //jQuery에서 선택자역할
                    
          if($("#user_pw").val()==""){
				alert("아이디를 입력해주세요.");
				$("#pw").focus();
				return false;
			}else if(){
				
				
			}
          
          var idStr = $("#user_pw").val();
          
          $.ajax({
              url : "JoinpwCheck",
              data : {pw : pwStr},
              success : function(data){
                   if(data == "success"){
                        $("#pw_result").text("사용가능한 아이디입니다.");
                   }else if(data == "fail"){
                        $("#pw_result").text("이 아이디는 사용하실 수 없습니다.");
                   }
              }
          });
     }
</script> -->

</html>