<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edution(에듀션) - 비밀번호 찾기</title>
	<script src="./resources/js/jquery-3.6.1.min.js"></script>	


    <style>
        html{
            font-family: "Lato",Arial,sans-serif;
                padding: 60px;
                width: 1261px;
                height: 969px;
            }
        
        body{
            
            font-family: inter-var, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, "Apple Color Emoji", Arial, sans-serif, "Segoe UI Emoji", "Segoe UI Symbol";
            font-size: 17px;
            line-height: 1.5;
            overflow: hidden;
        
        }
        header {
            width: 100%;
            height: 50px; /* footer의 높이 */
            position: absolute; 
            align-items: center;
            top: 1vh;
            left: -16vh;
        }
        
        
        
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

.find-id-maintitle{

    width: 500px;
    height: 450px;
    background-color: rgba(0,0,0,0.03);
    position: absolute; 
    left:95vh;
    top:25vh;
}

h1{
    font-weight: 700;
    font-size: 3.3125rem;
    padding-left: 80px;
}

h2{
    font-size: 1.125rem;
    color: rgba(0, 0, 0, 0.6);
    font-weight: 500;
    font-variation-settings: "wght" 529;
    padding-left: 30px;

}

.find-id-formlabel{

    padding-left: 70px;
    color: rgba(0,0,0,0.6);
}

        
.find-id-nickform{
            position: absolute; 
            top: 20vh;
            left: 6vh;
            width: 400px;
            height: 53px;
            background-color: rgba(0,0,0,0.1);
            border-radius: 50px;
        
        }

.find-id-nickform-input{
        
        position: absolute; 
        top: 20.5vh;
        left: 8.5vh;
        width: 250px;
        height: 40px;
        border-color: rgba(0,0,0,0);
        outline: none;
        background-color: rgba(0,0,0,0);
}

input::placeholder{
    font-size: 16px;
}

.find-pw-label{
    font-size:14px;
    padding-left: 130px;
    color: rgba(0,0,0,0.6);
}

.find-id-emailform{
            position: absolute; 
            top: 27vh;
            left: 6vh;
            width: 400px;
            height: 53px;
            background-color: rgba(0,0,0,0.1);
            border-radius: 50px;
        
        }

.find-id-emailform-input{
        
        position: absolute; 
        top: 27.5vh;
        left: 8.5vh;
        width: 250px;
        height: 40px;
        border-color: rgba(0,0,0,0);
        outline: none;
        background-color: rgba(0,0,0,0);
}

.find-id-submit{
    width: 400px;
    height: 53px;
    background-color: rgb(225, 98, 89,0.6);
    padding-top: 4px;
    border: none;
    border-radius: 50px;
    font-size:1rem;
    position:absolute;
    top: 35vh;
    left: 6vh;

        }





.find-id-submit:focus,
.find-id-submit:hover{
    background-color: rgb(225, 98, 89);

}

.find-id-image{

    
    position: absolute; 
    left:39vh;
    top:18vh;

}

#id_result{

    display:none;
    width: 400px;
    height: 250px;
    background-color: rgba(0,0,0,0.1);
    border-radius: 50px;
    position: absolute; 
    top: 15vh;
    left: 5vh;

}

#id_result > span {

    font-size: 20px;
    color: rgba(0, 0, 0, 0.6);
    position: absolute; 
    top: 10vh;
    left: 8vh;
}

.find-pw-label{
    font-size:14px;
    padding-left: 120px;
    color: rgba(0,0,0,0.6);
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
                        <li style="float: left; margin-left: 15px; margin-right: 15px; font-weight: 500; cursor: default;"><a href="indexView.do" style="text-decoration: none; color:inherit;">Home</a></li>
                        <li style="float: left; margin-left: 15px; margin-right: 15px; cursor: default;"><a href="GoBoard.do" style="text-decoration: none; color:inherit;">Community</a></li>
                        <li style="float: left; margin-left: 15px; margin-right: 15px; cursor: default;"><a href="GoQnA.do" style="text-decoration: none; color:inherit; ">Q&A</a></li>
                        <li style="float: left; ">
                            <div style="position: absolute; left:1700px; padding: auto;">
                                <a href="LoginPage.do" style="text-decoration: none; color:inherit ">로그인</a>
                                
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

    <div class="find-id-image">
        <img src="img/find-idpw.png" width="450px">
        <h2>Edution에 가입한 비밀번호가 기억나지 않으세요?</h2>
    </div>

    <div class="find-id-maintitle">
        <h1>비밀번호 찾기</h1>
        
     <form id="find-id">
        <label class="find-pw-label">등록된 ID와 E-maill을 입력해주세요</label>
            <div class="find-id-nickform"></div>
            <input id ="id" name="id" type="text" class="find-id-nickform-input" placeholder="User ID">
            <div class="find-id-emailform"></div>
            <input id ="email" name="email" type="text" class="find-id-emailform-input" placeholder="User E-mail">
            <button onclick="pwCheck()" class="find-id-submit" style="color: #fff;" type="button">비밀번호 찾기</button>
        </form>
        
            <div id="id_result">
    
                <span>결과를 보여주는 창 입니다.</span>
    
            </div>
    
        
    </div>
        
    </main>



    <script type="text/javascript">
        function pwCheck(){
             //jQuery에서 선택자역할
                       
             if($("#id").val()==""){
                   alert("아이디를 입력해주세요.");
                   $("#id").focus();
                   /* document.getElementById('id').focus(); */
                   return false; 
               }else if($("#email").val()==""){
                   alert("이메일을 입력해주세요.");
                   $("#email").focus();
                   /* document.getElementById('id').focus(); */
                   return false; 
               }
             
             var idStr = $("#id").val();
             var emailStr = $("#email").val();
             
             $.ajax({
                 url : "Login_pwSearch",
                 data : {id : idStr,
                             email : emailStr},
                 success : function(data){
                     if(data == "fail"){
                         $("#id_result > span").text("비밀번호를 찾을 수 없습니다.");
                         document.getElementById('find-id').style.display="none";
                         document.getElementById('id_result').style.display="block";
                    }
                     else if(data != null){
                           $("#id_result > span").text("회원님의 비밀번호는 \" "+data+" \" 입니다.");
                           document.getElementById('find-id').style.display="none";
                           /* document.getElementById('id_result').innerHTML='비밀번호가 일치합니다.' */
                           document.getElementById('id_result').style.display="block";
                      }
                 }
             });
        }
   </script>



</body>
</html>