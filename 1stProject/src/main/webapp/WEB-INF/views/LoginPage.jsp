<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
     <script type="text/javascript" async="" src="https://widget.intercom.io/widget/gpfdrxfd"></script>
    <link href="/app-aff2fcd08e2ef484f02e.css" rel="stylesheet">
	<!-- �α��� ���� ���� ��ũ��Ʈ �ҷ����� -->
	<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v10.0&appId=1588150011384568" nonce="SiOBIhLG"></script>
    
    

    <style>
html{
    font-family: "Lato",Arial,sans-serif;
        padding: 60px;
        min-width: 1020px;
    }

body{
    
    font-family: inter-var, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, "Apple Color Emoji", Arial, sans-serif, "Segoe UI Emoji", "Segoe UI Symbol";
    font-size: 17px;
    line-height: 1.5;
    overflow: hidden;

}
header {
    width: 100%;
    height: 50px; /* footer�� ���� */
    position: absolute; 
    align-items: center;
    top: 10px;
    left: -150px;
}



    .index-sub-joinbtn{
    width: 65px;
    height: 23px;
    background-color: rgb(225, 98, 89);
    border-radius: 5px;
    padding: 0.375rem 0.875rem 0.4375rem 0.875rem;
    position: absolute; 
    left:92%;
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
    top: 5%;
    left: 15%;

}

.login-main-naver{
    position: absolute; 
    top: 16%;
    left: 66.4%;

}


.login-main-kakao{
    position: absolute; 
    top: 16%;
    left: 74.5%;
}

.login-main-kakao:hover,
.login-main-facebook:hover{
cursor: pointer;}

.login-main-facebook{
    position: absolute; 
    top: 16%;
    left: 83%;

}

.login-main-idform{
    position: absolute; 
    top: 35%;
    left: 12%;
    width: 400px;
    height: 53px;
    background-color: rgba(0,0,0,0.1);
    border-radius: 50px;

}

.login-main-pwform{
    position: absolute; 
    top: 48%;
    left: 12%;
    width: 400px;
    height: 53px;
    background-color: rgba(0,0,0,0.1);
    border-radius: 50px;

}

.login-main-idform-input{

    position: absolute; 
    top: 36%;
    left: 17%;
    width: 250px;
    height: 40px;
    border-color: rgba(0,0,0,0);
    outline: none;
    background-color: rgba(0,0,0,0);
}

.login-main-pwform-input{

position: absolute; 
top: 48.6%;
left: 17%;
width: 250px;
height: 40px;
border-color: rgba(0,0,0,0);
outline: none;
background-color: rgba(0,0,0,0);
}

.login-main-submit{
    position: absolute; 
    top: 62%;
    left: 12%;
    width: 400px;
    height: 53px;
    background-color: rgb(225, 98, 89, 0.6);
    border: none;
    border-radius: 50px;
    font-size:16px;
    

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


#login-main-right{
    position: absolute; 
    top: 25%;
    left: 50%;
    width: 500px;
    height: 500px;
    background-color: rgb(225, 98, 89);
    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
}

#login-main-left{

    position: absolute; 
    top: 25%;
    left: 24.5%;
    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
    width: 500px;
    height: 500px;
    
}




.login-sub-title{
    position: absolute; 
    top: 25%;
    left: 17%;

}

.login-main-rightbtn{
    width: 92px;
    height: 45px;
    background-color: rgb(225, 98, 89);
    border: solid 1px #fff;
    border-radius: 50px;
    color: #fff;
    position: absolute; 
    top: 60%;
    left: 40%;
}

.login-main-rightbtn:hover,
login-main-rightbtn:focus{

    background-color: #fff;
    color: black;
    cursor: pointer;
}

.login-sitting-img{
    position: absolute; 
    top: 60%;
    left:16%;
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
                        <!-- <li style="float: left; ">
                            <div style="position: absolute; left:88%;">
                                <a href="#" style="text-decoration: none; color:inherit ">�α���</a>
                            </div>
                        </li>
                        <li> -->
                            <div class="index-sub-joinbtn">
                                <a href="#">ȸ������</a>
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
<div class="login-sitting-img">
    <img src="img/sitting-character.avif" style="width: 300px;">
</div>


<<<<<<< HEAD
        
<div style="box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;">
    <div id="login-main-left">
        <div class="login-main-title" >
            <h1 style="font-size: 50px;">Sign In</h1>
        </div>

		<div class="login-main-naver">
		<a id="naverIdLogin"></a>
		</div>

        <div class="login-main-kakao">
            <div onclick="kakaoLogin()" style="background-color: #FEE500; height: 35px; width: 34px; border-radius: 3px; cursor:pointer; 
            padding-left: 3px; padding-top: 3px;"><img src="img/kakao_logo_symbol.png" style="height: 31px; width: 31px;"></div>
        </div>
        <div class="login-main-facebook">
            <div onclick="fnFbCustomLogin()" style="background-color: rgba(24, 119, 242); height: 31px; width: 32px; border-radius: 3px; padding-left: 5px; padding-top: 6px; padding-bottom: 1px;">
            <img src="img/facebooksymbol.PNG" style="height: 27px; width: 28px;"></div>
        </div>

<form method="post" action="Login.do">
        <div class="login-main-idform"></div>
            <input name="user_id" class="login-main-idform-input" placeholder="User ID">
        
        <div class="login-main-pwform"></div>
        <input name = "user_pw" type="password" class="login-main-pwform-input" placeholder="Password">

        <input type="submit" class="login-main-submit" value="Sign In" style="color: white;">
    </div>

</form>

    <div id="login-main-right">

        <div class="login-sub-title"><h1 style="color: #fff;">Welcome to Edution!</h1>
        <blockquote style="color: #fff; padding-left: 30px; font-size: 16px;">Edution�� ó�� ���̳���?</blockquote>
    </div>
    
    <button class="login-main-rightbtn" onclick = "location.href='GoJoin.do'">Sign Up</button>

    </div>
        
</div>        

    </main>
    
    
    	<!-- ���̹� �α��� �������� -->
=======
                <div class="notion-focusable-within" style="display: flex; align-items: center; width: 100%; font-size: 14px; line-height: 20px; padding: 0px; position: relative; border-radius: 3px; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px inset; background: rgba(242, 241, 238, 0.6); cursor: text; opacity: 0; height: 0px; pointer-events: none;">
                <input type="password" autocomplete="current-password" tabindex="-1" aria-hidden="true" style="font-size: inherit; line-height: inherit; border: none; background: none; width: 100%; display: block; resize: none; padding: 0px;"></div>
                <input value = "�α���" class="notion-focusable" type="submit" aria-disabled="false" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; justify-content: center; white-space: nowrap; height: 36px; border-radius: 4px; color: rgb(235, 87, 87); font-size: 14px; line-height: 1; padding-left: 12px; padding-right: 12px; font-weight: 500; background: rgb(253, 245, 242); box-shadow: rgba(15, 15, 15, 0.1) 0px 1px 2px, rgba(235, 87, 87, 0.3) 0px 0px 0px 1px inset; margin-top: 6px; margin-bottom: 12px; width: 100%;">�α��� ����ϱ�</div>
                </form>
                <div style="font-size: 14px; color: rgb(235, 87, 87); text-align: center; display: none; width: 100%;"></div>
                        <div style="color: rgba(55, 53, 47, 0.65); font-size: 14px; line-height: 1.6; margin-top: 8px; margin-bottom: 8px; text-align: center;">
                            <a rel="noopener noreferrer" class="notion-link" style="display: inline; text-decoration: underline; user-select: none; cursor: pointer; color: inherit;">���̵� ã��</a>
                            <a rel="noopener noreferrer" class="notion-link" style="display: inline; text-decoration: underline; user-select: none; cursor: pointer; color: inherit;">��й�ȣ ã��</a>
                        </div>
                                <div style="width: 100%; margin-top: 64px; margin-bottom: 0px; font-size: 12px; color: rgba(55, 53, 47, 0.5); text-align: left;">
                <p style="margin-bottom: 0px;">���� ��kakao/facebook/instargram/�α����� Ŭ���ϸ� Edution�� 
                                        <a href="#" rel="noopener noreferrer" class="notion-link" style="display: inline; text-decoration: underline; user-select: none; cursor: pointer; color: inherit;">�̿���</a> 
                                        �� <a href="#" rel="noopener noreferrer" class="notion-link" style="display: inline; text-decoration: underline; user-select: none; cursor: pointer; color: inherit;">�������� ��ȣ��å</a>
                                        �� �а� ���������� �׿� �����ϴ� ������ ���ֵ˴ϴ�.</p></div></div></div>
	
	
	
	<!-- ���̹� �α��� �������� -->
>>>>>>> branch 'master' of https://github.com/1team-Edution/Edution.git
	
	<script type="text/javascript">
	var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "gHew1L2rBs2uyMgz103W",
			callbackUrl: "http://localhost:8037/1stProject/Naver_callback.do",
			isPopup: false, /* �˾��� ���� ����ó�� ���� */
			loginButton: {color: "green", type: 1, height: 37} /* �α��� ��ư�� Ÿ���� ���� */
		}
	);
	
	/* ���������� �ʱ�ȭ�ϰ� ������ �غ� */
	naverLogin.init();
	
	</script>
	
	
	<!-- īī�� �α��� �������� -->
	<script>
	
     window.Kakao.init('1a0d4c352b4d7ba448b06a7a71fa5fdc');

   function kakaoLogin() {
       window.Kakao.Auth.login({
           scope: 'account_email', //�����׸� �������� �ִ� �������� ��ȣ ���̺��� Ȱ��ȭ�� ID���� �ֽ��ϴ�.
           success: function(response) {
               console.log(response) // �α��� �����ϸ� �޾ƿ��� ������
               window.Kakao.API.request({ // ����� ���� �������� 
                   url: '/v2/user/me',
                   success: (res) => {
                       const kakao_account = res.kakao_account;
                       console.log(kakao_account)
                       
                       //form �±׸� ����
                       //post �����������
                       
                       var form = document.createElement('form'); // ����ü ����
							var objs;
							objs = document.createElement('input'); // ���� ����ִ� �༮�� ����
							//objs.setAttribute('type', 'text'); // ���� ����ִ� �༮�� type
							objs.setAttribute('name', 'email'); // ��ü�̸�
							objs.setAttribute('value', kakao_account.email); //��ü��
							form.appendChild(objs);
							form.setAttribute('method', 'post'); //get,post ����
							form.setAttribute('action', "http://localhost:8037/1stProject/NaverloginCon.do"); //������ url  "/login/users"
							document.body.appendChild(form);
							form.submit();
				  
                       // window.location.href='http://localhost:8037/1stProject/NaverloginCon.do?email='+kakao_account.email;
                    
                   }
               });
               
           },
           fail: function(error) {
               console.log(error);
           }
       });
   }       
   
   </script>
   
   <!-- ���̽��� �α��� �������� -->
	
	<script>
       
       //���� �α��� ���¸� �������� ���� Facebook�� ���� ȣ��
       function statusChangeCallback(res){
           statusChangeCallback(response);
       }
       
       function fnFbCustomLogin(){
           FB.login(function(response) {
               if (response.status === 'connected') {
                   FB.api('/me', 'get', {fields: 'name,email'}, function(r) {
                       console.log(r.email);
                       
                     
                       var form = document.createElement('form'); // ����ü ����
						var objs;
						objs = document.createElement('input'); // ���� ����ִ� �༮�� ����
						//objs.setAttribute('type', 'text'); // ���� ����ִ� �༮�� type
						objs.setAttribute('name', 'email'); // ��ü�̸�
						objs.setAttribute('value', r.email); //��ü��
						form.appendChild(objs);
						form.setAttribute('method', 'post'); //get,post ����
						form.setAttribute('action', "http://localhost:8037/1stProject/NaverloginCon.do"); //������ url  "/login/users"
						document.body.appendChild(form);
						form.submit();
                       
                       
                   })
               } else if (response.status === 'not_authorized') {
                   // ����� Facebook�� �α��������� �ۿ��� �α������� �ʾҽ��ϴ�.
                  // alert('���� �α����ؾ� �̿밡���� ����Դϴ�.');
               } else {
                   // �� ����� Facebook�� �α������� �ʾ����Ƿ��� �ۿ� �α����ߴ��� ���δ� Ȯ������ �ʽ��ϴ�.
                  // alert('���̽��Ͽ� �α����ؾ� �̿밡���� ����Դϴ�.');
               }
           }, {scope: 'public_profile,email'});
       }
       
       window.fbAsyncInit = function() {
           FB.init({
               appId      : '1459647184504088', // �� �� ID�� �Է��Ѵ�.
               cookie     : true,
               xfbml      : true,
               version    : 'v10.0'
           });
           FB.AppEvents.logPageView();   
       };
       
       
       
       // window.location.href='http://localhost:8037/1stProject/NaverloginCon.do?email='+r.email;
       
       </script>
       
       <!--�ݵ�� �߰��� ������ �۾��̵� �Է��ϼž� �մϴ�.-->
       <script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v10.0&appId=1588150011384568" nonce="SiOBIhLG"></script>
    
    

</body>
</html>