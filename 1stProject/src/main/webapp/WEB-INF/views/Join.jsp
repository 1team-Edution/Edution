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
  left:1800px;
  top:15px;
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

.login-main-naver{
    position: absolute; 
    top: 8vh;
    left: 33.5vh;

}

.login-main-kakao{
    position: absolute; 
    top: 8vh;
    left: 38vh;
}

.login-main-facebook{
    position: absolute; 
    top: 8vh;
    left: 42.5vh;

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


<form>
        <div class="login-main-idform"></div>
            <input class="login-main-idform-input" placeholder="User ID">
        
        <div class="login-main-pwform"></div>
        <input type="password" class="login-main-pwform-input" placeholder="Password">

        <div class="join-main-emailform"></div>
        <input type="email" class="join-main-emailform-input" placeholder="User E-mail">

        <div class="join-main-nickform"></div>
        <input type="text" class="join-main-nickform-input" placeholder="Nickname">


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
    
    

    
    

</body>
</html>