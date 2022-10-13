<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edution(에듀션) - 회원가입</title>
    
   
       <style>
   html{

width: 100%;
height: 100%;
padding: 60px;

}

body{

width: 100%;
height: 100%;
font-family: inter-var, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, "Apple Color Emoji", Arial, sans-serif, "Segoe UI Emoji", "Segoe UI Symbol";
font-size: 17px;
line-height: 1.5;
overflow: auto;

}
header {
width: 100%;
height: 50px; /* footer의 높이 */
position: absolute; 
align-items: center;
top: 1vh;
left: -16vh;
}

main{

width: 100%; 
height: 100%;

}

.index-sub-joinbtn{
width: 65px;
height: 23px;
background-color: rgb(225, 98, 89);
border-radius: 5px;
padding: 0.375rem 0.875rem 0.4375rem 0.875rem;
position: absolute; 
left:1775px;
top:10px;
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
    left: 150px;

}

.login-main-idform{
    position: absolute; 
    top: 303px;
    left: 60px;
    width: 400px;
    height: 53px;
    background-color: rgba(0,0,0,0.1);
    border-radius: 50px;

}

.login-main-pwform{
    position: absolute; 
    top: 391px;
    left: 60px;
    width: 400px;
    height: 53px;
    background-color: rgba(0,0,0,0.1);
    border-radius: 50px;

}

.join-main-pwform2{

    position: absolute; 
    top: 451px;
    left: 60px;
    width: 400px;
    height: 53px;
    background-color: rgba(0,0,0,0.1);
    border-radius: 50px;


}

.join-main-pwform2-input{
    position: absolute; 
top: 456px;
left: 80px;
width: 250px;
height: 40px;
border-color: rgba(0,0,0,0);
outline: none;
background-color: rgba(0,0,0,0)


}

.join-main-emailform{
    position: absolute; 
    top: 539px;
    left: 60px;
    width: 400px;
    height: 53px;
    background-color: rgba(0,0,0,0.1);
    border-radius: 50px;
}

.join-main-nickform{

    position: absolute; 
    top: 687px;
    left: 60px;
    width: 400px;
    height: 53px;
    background-color: rgba(0,0,0,0.1);
    border-radius: 50px;

}


.join-main-nickform-input{
    position: absolute; 
top: 692px;
left: 80px;
width: 250px;
height: 40px;
border-color: rgba(0,0,0,0);
outline: none;
background-color: rgba(0,0,0,0)
}

.join-main-userphoto{

    position: absolute; 
    top: 108px;
    left: 190px;

}



.filebox .upload-name {
    position: absolute; 
    top: 248px;
    left: 70px;
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
    top: 248px;
    left: 340px;
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
top: 542px;
left: 80px;
width: 250px;
height: 40px;
border-color: rgba(0,0,0,0);
outline: none;
background-color: rgba(0,0,0,0);
}


.login-main-idform-input{

    position: absolute; 
    top: 308px;
    left: 80px;
    width: 250px;
    height: 40px;
    border-color: rgba(0,0,0,0);
    outline: none;
    background-color: rgba(0,0,0,0);
}

.login-main-pwform-input{

position: absolute; 
top: 396px;
left: 80px;
width: 250px;
height: 40px;
border-color: rgba(0,0,0,0);
outline: none;
background-color: rgba(0,0,0,0);
}

.join-main-nameform{

    position: absolute; 
    top: 627px;
    left: 60px;
    width: 400px;
    height: 53px;
    background-color: rgba(0,0,0,0.1);
    border-radius: 50px;

}

.join-main-nameform-input{

position: absolute; 
top: 632px;
left: 80px;
width: 250px;
height: 40px;
border-color: rgba(0,0,0,0);
outline: none;
background-color: rgba(0,0,0,0);

}



.login-main-submit{
    position: absolute; 
    top: 775px;
    left: 60px;
    width: 400px;
    height: 53px;
    background-color: rgb(225, 98, 89, 0.6);
    border: none;
    border-radius: 50px;
    font-size:16px;
    

}

.submit-text{

    position: absolute; 
    top: 835px;
    left: 70px;

    font-size: 14px;
    color: rgba(0,0,0,0.5);
}

.login-main-submit:focus,
.login-main-submit:hover
{
    background-color: rgb(225, 98, 89);
    cursor: pointer;

}



input::placeholder{
    font-size: 16px;
}


#join-main-right{
    position: absolute; 
    top: 120px;
    left: 970px;
    width: 500px;
    height: 900px;
    background-color: rgb(225, 98, 89);
    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
}

#join-main-left{

    position: absolute; 
    top: 120px;
    left: 485px;
    box-shadow: rgba(0, 0, 0, 0.35) 0px 0px 15px;
    width: 500px;
    height: 900px;
    
}




.login-sub-title{
    position: absolute; 
    top: 350px;
    left: 90px;

}

.login-main-rightbtn{
    width: 92px;
    height: 45px;
    background-color: rgb(225, 98, 89);
    border: solid 1px #fff;
    border-radius: 50px;
    color: #fff;
    position: absolute; 
    top: 510px;
    left: 200px;
}

.login-main-rightbtn:hover,
login-main-rightbtn:focus{

    background-color: #fff;
    color: black;
    cursor: pointer;
}

         
.joinpage-image{
            position: absolute; 
            top: 500px;
            left:260px;
        }



    </style>

   <script src="./resources/js/jquery-3.6.1.min.js"></script>

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
                        <li style="float: left; margin-left: 15px; margin-right: 15px; font-weight: 500; cursor: default;"><a href="indexView.do" style="text-decoration: none; color:inherit;">Home</a></li>
                        <li style="float: left; margin-left: 15px; margin-right: 15px; cursor: default;"><a href="GoBoard.do" style="text-decoration: none; color:inherit;">Community</a></li>
                        <li style="float: left; margin-left: 15px; margin-right: 15px; cursor: default;"><a href="GoQnA.do" style="text-decoration: none; color:inherit; ">Q&A</a></li>
                        <li style="float: left; ">
                            <div style="position: absolute; left:1700px;">
                                <a href="LoginPage.do" style="text-decoration: none; color:inherit ">로그인</a>
                            </div>
                        </li>
                        <li>
                            <div class="index-sub-joinbtn">
                                <a href="GoJoin.do">회원가입</a>
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

    <div class="joinpage-image">
        <img src="img/joinpageimage.avif" width="200px">
    </div>

        
<div style="box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;">
    <div id="join-main-left">
        <div class="login-main-title" >
            <h1 style="font-size: 50px;">Sign Up</h1>
        </div>



<form id = "joinform" name = "joinform" action ="Join.do" enctype = "multipart/form-data" method="post">
        <div class="login-main-idform" >

        </div>
        <input onchange="idCheck()" id="user_id" name="user_id" class="login-main-idform-input" placeholder="User ID">
        <input id="id_result" class="login-main-idform-input" placeholder="확인"  style="display: none;" disabled>
        
        
      <!-- 비밀번호 -->   
             
        <div class="login-main-pwform">
        </div>

        <input onchange="check_pw()" type="password" id="pw" name = "user_pw"  class="login-main-pwform-input" placeholder="Password">
      
        <div class="join-main-pwform2">            

        </div>
        <input onchange="check_pw()" type="password" id="pw2" class="join-main-pwform2-input" placeholder="Confirm Password">
        <input type="password" id="check" class="join-main-pwform2-input" placeholder="확인" style="display: none;" disabled>
      
      
      
      <!-- 이메일 -->
        <div class="join-main-emailform">
        </div>
        <input onchange="emailCheck()" type="email" id="email" name="user_email" class="join-main-emailform-input" placeholder="User E-mail">
        <input type="email" id="email_result" name="user_email" class="join-main-emailform-input" style="display: none;" placeholder="확인" disabled>

      <!-- 닉네임 -->
        <div class="join-main-nickform">        

        </div>
        <input onchange="nickCheck()" id="nick" name="user_nick" type="text" class="join-main-nickform-input" placeholder="Nickname">
        <input id="nick_result" type="text" class="join-main-nickform-input" placeholder="확인" style="display: none;" disabled>
      
        
        <!-- 이름 -->
        <div class="join-main-nameform"></div>
        <input id="name" name="user_name" type="text" class="join-main-nameform-input" placeholder="User Name">





   <!-- 사진 이미지 -->
        <div class="filebox">
            <input class="upload-name" placeholder="User Profile...">
            <label for="file">파일찾기</label> 
            <input type="file" id="file" name= "user_photo" onchange="readURL(this);" multiple id="photo_upload">
        </div>

        <div class="join-main-userphoto">
            <img src="img/home-page.webp" id="preview" style="border-radius: 100%; width: 120px; height: 120px;">
        </div>






        <input type="button" onclick= "joinform_check();" class="login-main-submit" value="Sign Up" style="color: white;">
       </form>
        <p class="submit-text">*프로필 사진을 제외한 모든 항목은 필수항목입니다.</p>
    </div>



    <div id="join-main-right">



        <div class="login-sub-title"><h1 style="color: #fff;">Welcome to Edution!</h1>
        <blockquote style="color: #fff; padding-left: 30px; font-size: 16px;">이미 Edution 회원이신가요?</blockquote>
    </div>
    
    <button class="login-main-rightbtn" onclick = "location.href='LoginPage.do'">Sign In</button>
    </div>
        
</div>        

    </main>
    
    

</body>

<script src="js/jquery.min.js"></script> 

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
       var id = document.getElementById('user_id').value;
        
       
        if(pw.length < 4 || pw.length>16){
            window.alert('비밀번호는 4글자 이상, 16글자 이하만 이용 가능합니다.');
            document.getElementById('key').value='';
            document.getElementById('key').focus();
        }
                   
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
                	  window.alert('사용 가능한 아이디입니다.');
                       $("#user_id").css("display", "none");
                       $("#id_result").css("display", "block");
                       $("#id_result").attr("placeholder", id);

                  }else if(data == "fail"){
                   $("#user_id").val('');
                   $("#user_id").attr("placeholder", "사용 불가한 아이디입니다.");

                  }
             }
         });
    }
</script>



 <script>
        function check_pw(){
 
            var pw = document.getElementById('pw').value;
            
 
            if(pw.length < 4 || pw.length>16){
                window.alert('비밀번호는 4글자 이상, 16글자 이하만 이용 가능합니다.');
                document.getElementById('pw').value='';
                document.getElementById('pw').focus();
            }
            
            
            if(document.getElementById('pw').value !='' && document.getElementById('pw2').value!=''){
                if(document.getElementById('pw').value==document.getElementById('pw2').value){
                    document.getElementById('pw').style.display="none";
                    document.getElementById('pw2').style.display="none";
                    document.getElementById('check').style.display="block";
                    document.getElementById('check').placeholder="비밀번호가 일치합니다.";
                }
                else{
                	document.getElementById('pw').value='';
                	document.getElementById('pw2').value='';
                    document.getElementById('pw2').placeholder="비밀번호가 서로 다릅니다."

                    
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
                	   window.alert('사용 가능한 이메일입니다.');
                       $("#email").css("display", "none");
                       $("#email_result").css("display", "block");
                       $("#email_result").attr("placeholder", emailStr);

                                                
                   }else if(data == "fail"){
						
                	   $("#email").val('');
                       $("#email").attr("placeholder", "중복된 이메일입니다.");
                    
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
                	   window.alert('사용 가능한 닉네임입니다.');
                       $("#nick").css("display", "none");
                       $("#nick_result").css("display", "block");
                       $("#nick_result").attr("placeholder", nickStr);
                        
                   }else if(data == "fail"){
                	   
                	   $("#nick").val('');
                       $("#nick").attr("placeholder", "이미 사용 중인 닉네임입니다.");
                        
                   }
              }
          });
     }
</script>


<script>
   function joinform_check(){

       var id = document.getElementById("user_id");
        var pw = document.getElementById("pw");
        var pw2 = document.getElementById("pw2");
        var name = document.getElementById("name");  
        var email = document.getElementById("email");
        var nick = document.getElementById("nick");
        
        if(id.value == ""){
             alert("아이디를 입력해주세요.")
             id.focus();
             return false;
          }
          if(pw.value == ""){
             alert("비밀번호를 제대로 입력 해주세요.")
             pw.focus();
             return false;
          }
          if(name.value == ""){
             alert("비밀번호를 제대로 입력 해주세요.")
             name.focus();
             return false;
          }
          if(email.value == ""){
             alert("이메일을 입력해주세요.");
             email.focus();
             return false;
          }
          if(nick.value == ""){
             alert("닉네임을 입력해주세요.")
             return false;
          }
          if(pw.value != pw2.value){
	          alert("비밀번호가 일치하지 않습니다.")
	          pw.focus();
	          return false;
	       }
        
          document.joinform.submit();
       
   
   }
        
       

   </script>




</html>