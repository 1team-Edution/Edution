<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
    <head lang="en"><meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>    
    <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1,maximum-scale=1,user-scalable=no,viewport-fit=cover">
    <title>Edution- 로그인</title>
    <meta name="description" content="A new tool that blends your everyday work apps into one. It's the all-in-one workspace for you and your team">
    <script type="text/javascript" async="" src="https://widget.intercom.io/widget/gpfdrxfd"></script>
    <link href="/app-aff2fcd08e2ef484f02e.css" rel="stylesheet">
	<!-- 로그인 연동 관련 스크립트 불러오기 -->
	<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v10.0&appId=1588150011384568" nonce="SiOBIhLG"></script>
</head>
<body>


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
        <div style="font-size: 34px; margin-top: 10vh; font-weight: 700; margin-bottom: 24px; text-align: center; line-height: 1.1;">로그인</div>
        <div class="notion-login" style="width: 100%; display: flex; flex-direction: column; align-items: center; max-width: 320px; margin-bottom: 16vh;">
    <div style="display: flex; flex-direction: column; width: 100%;">
        
        <div>
        <div style="width: 100%;">
       
       
       
        <!-- 카카오로 로그인하기 버튼 부분 -->
        <div onclick="kakaoLogin()" class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; justify-content: center; white-space: nowrap; height: 36px; border-radius: 4px; color: rgb(55, 53, 47); fill: rgb(55, 53, 47); background: white; font-size: 14px; line-height: 1; padding-left: 12px; padding-right: 12px; font-weight: 500; border: 1px solid rgba(15, 15, 15, 0.15); width: 100%; box-shadow: rgba(15, 15, 15, 0.05) 0px 1px 2px; margin-top: 10px;">
            카카오로 계속하기(추가예정)</div></div>
        
    
         
        <!-- 네이버로 계속하기 버튼 부분 -->
        
         <div id="naverIdLogin" class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; justify-content: center; white-space: nowrap; height: 36px; border-radius: 4px; color: rgb(55, 53, 47); fill: rgb(55, 53, 47); background: white; font-size: 14px; line-height: 1; padding-left: 12px; padding-right: 12px; font-weight: 500; border: 1px solid rgba(15, 15, 15, 0.15); width: 100%; box-shadow: rgba(15, 15, 15, 0.05) 0px 1px 2px; margin-top: 10px;"></div>
  



        <!-- 페이스북으로 계속하기 버튼 부분 -->
      
        
        <div onclick="fnFbCustomLogin()" class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; justify-content: center; white-space: nowrap; height: 36px; border-radius: 4px; color: rgb(55, 53, 47); fill: rgb(55, 53, 47); background: white; font-size: 14px; line-height: 1; padding-left: 12px; padding-right: 12px; font-weight: 500; border: 1px solid rgba(15, 15, 15, 0.15); width: 100%; box-shadow: rgba(15, 15, 15, 0.05) 0px 1px 2px; margin-top: 10px;">
            페이스북으로 계속하기(추가예정)</div></div>
        
        <div style="display: flex; align-items: center; justify-content: center; pointer-events: none; width: 100%; height: 42px; flex: 0 0 auto;">
            <div style="width: 100%; height: 1px; visibility: visible; border-bottom: 1px solid rgba(55, 53, 47, 0.16);"></div></div>
        </div>
                
                <!-- 웹사이트 로그인버튼 여기서부터 -->
                <!-- lavel, div 태그는 스타일 부분으로 수정X input태그만 수정할것! -->

                <form method="post" action="Login.do">
                <label for="notion-email-input-3" style="display: block; margin-bottom: 4px; font-size: 12px; color: rgba(55, 53, 47, 0.65);">ID</label>
                <div class="notion-focusable-within" style="display: flex; align-items: center; width: 100%; font-size: 15px; line-height: 26px; padding: 4px 10px; position: relative; border-radius: 3px; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px inset; background: rgba(242, 241, 238, 0.6); cursor: text; margin-top: 4px; margin-bottom: 8px;">
                <input name="user_id" placeholder="아이디를 입력하세요." id="user_id" aria-label="ID를 입력하세요." style="font-size: inherit; line-height: inherit; border: none; background: none; width: 100%; display: block; resize: none; padding: 0px;"></div>
                <label for="notion-email-input-3" style="display: block; margin-bottom: 4px; font-size: 12px; color: rgba(55, 53, 47, 0.65);">PW</label>
                <div class="notion-focusable-within" style="display: flex; align-items: center; width: 100%; font-size: 15px; line-height: 26px; padding: 4px 10px; position: relative; border-radius: 3px; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px inset; background: rgba(242, 241, 238, 0.6); cursor: text; margin-top: 4px; margin-bottom: 8px;">
                <input name = "user_pw"  placeholder="비밀번호를 입력하세요."  id="user_pw" aria-label="PW를 입력하세요." style="font-size: inherit; line-height: inherit; border: none; background: none; width: 100%; display: block; resize: none; padding: 0px;"></div>


                <div class="notion-focusable-within" style="display: flex; align-items: center; width: 100%; font-size: 14px; line-height: 20px; padding: 0px; position: relative; border-radius: 3px; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px inset; background: rgba(242, 241, 238, 0.6); cursor: text; opacity: 0; height: 0px; pointer-events: none;">
                <input type="password" autocomplete="current-password" tabindex="-1" aria-hidden="true" style="font-size: inherit; line-height: inherit; border: none; background: none; width: 100%; display: block; resize: none; padding: 0px;"></div>
                <input value = "로그인" class="notion-focusable" type="submit" aria-disabled="false" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; justify-content: center; white-space: nowrap; height: 36px; border-radius: 4px; color: rgb(235, 87, 87); font-size: 14px; line-height: 1; padding-left: 12px; padding-right: 12px; font-weight: 500; background: rgb(253, 245, 242); box-shadow: rgba(15, 15, 15, 0.1) 0px 1px 2px, rgba(235, 87, 87, 0.3) 0px 0px 0px 1px inset; margin-top: 6px; margin-bottom: 12px; width: 100%;">로그인 계속하기</div>
                </form>
                <div style="font-size: 14px; color: rgb(235, 87, 87); text-align: center; display: none; width: 100%;"></div>
                        <div style="color: rgba(55, 53, 47, 0.65); font-size: 14px; line-height: 1.6; margin-top: 8px; margin-bottom: 8px; text-align: center;">
                            <a rel="noopener noreferrer" class="notion-link" style="display: inline; text-decoration: underline; user-select: none; cursor: pointer; color: inherit;">아이디 찾기</a>
                            <a rel="noopener noreferrer" class="notion-link" style="display: inline; text-decoration: underline; user-select: none; cursor: pointer; color: inherit;">비밀번호 찾기</a>
                        </div>
                                <div style="width: 100%; margin-top: 64px; margin-bottom: 0px; font-size: 12px; color: rgba(55, 53, 47, 0.5); text-align: left;">
                <p style="margin-bottom: 0px;">위의 “kakao/facebook/instargram/로그인을 클릭하면 Edution의 
                                        <a href="#" rel="noopener noreferrer" class="notion-link" style="display: inline; text-decoration: underline; user-select: none; cursor: pointer; color: inherit;">이용약관</a> 
                                        및 <a href="#" rel="noopener noreferrer" class="notion-link" style="display: inline; text-decoration: underline; user-select: none; cursor: pointer; color: inherit;">개인정보 보호정책</a>
                                        을 읽고 이해했으며 그에 동의하는 것으로 간주됩니다.</p></div></div></div>
	
	
	
	<!-- 네이버 로그인 연동구문 -->
	
	<script type="text/javascript">
	var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "gHew1L2rBs2uyMgz103W",
			callbackUrl: "http://localhost:8037/1stProject/Naver_callback.do",
			isPopup: false, /* 팝업을 통한 연동처리 여부 */
			loginButton: {color: "green", type: 3, height: 60} /* 로그인 버튼의 타입을 지정 */
		}
	);
	
	/* 설정정보를 초기화하고 연동을 준비 */
	naverLogin.init();
	
	</script>
	
	
	<!-- 카카오 로그인 연동구문 -->
	<script>
	
     window.Kakao.init('1a0d4c352b4d7ba448b06a7a71fa5fdc');

   function kakaoLogin() {
       window.Kakao.Auth.login({
           scope: 'account_email', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
           success: function(response) {
               console.log(response) // 로그인 성공하면 받아오는 데이터
               window.Kakao.API.request({ // 사용자 정보 가져오기 
                   url: '/v2/user/me',
                   success: (res) => {
                       const kakao_account = res.kakao_account;
                       console.log(kakao_account)
                       
                       //form 태그를 만들어서
                       //post 방식으로전송
                       
                       var form = document.createElement('form'); // 폼객체 생성
							var objs;
							objs = document.createElement('input'); // 값이 들어있는 녀석의 형식
							//objs.setAttribute('type', 'text'); // 값이 들어있는 녀석의 type
							objs.setAttribute('name', 'email'); // 객체이름
							objs.setAttribute('value', kakao_account.email); //객체값
							form.appendChild(objs);
							form.setAttribute('method', 'post'); //get,post 가능
							form.setAttribute('action', "http://localhost:8037/1stProject/NaverloginCon.do"); //보내는 url  "/login/users"
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
   
   <!-- 페이스북 로그인 연동구문 -->
	
	<script>
       
       //기존 로그인 상태를 가져오기 위해 Facebook에 대한 호출
       function statusChangeCallback(res){
           statusChangeCallback(response);
       }
       
       function fnFbCustomLogin(){
           FB.login(function(response) {
               if (response.status === 'connected') {
                   FB.api('/me', 'get', {fields: 'name,email'}, function(r) {
                       console.log(r.email);
                       
                     
                       var form = document.createElement('form'); // 폼객체 생성
						var objs;
						objs = document.createElement('input'); // 값이 들어있는 녀석의 형식
						//objs.setAttribute('type', 'text'); // 값이 들어있는 녀석의 type
						objs.setAttribute('name', 'email'); // 객체이름
						objs.setAttribute('value', r.email); //객체값
						form.appendChild(objs);
						form.setAttribute('method', 'post'); //get,post 가능
						form.setAttribute('action', "http://localhost:8037/1stProject/NaverloginCon.do"); //보내는 url  "/login/users"
						document.body.appendChild(form);
						form.submit();
                       
                       
                   })
               } else if (response.status === 'not_authorized') {
                   // 사람은 Facebook에 로그인했지만 앱에는 로그인하지 않았습니다.
                  // alert('웹에 로그인해야 이용가능한 기능입니다.');
               } else {
                   // 그 사람은 Facebook에 로그인하지 않았으므로이 앱에 로그인했는지 여부는 확실하지 않습니다.
                  // alert('페이스북에 로그인해야 이용가능한 기능입니다.');
               }
           }, {scope: 'public_profile,email'});
       }
       
       window.fbAsyncInit = function() {
           FB.init({
               appId      : '1459647184504088', // 내 앱 ID를 입력한다.
               cookie     : true,
               xfbml      : true,
               version    : 'v10.0'
           });
           FB.AppEvents.logPageView();   
       };
       
       
       
       // window.location.href='http://localhost:8037/1stProject/NaverloginCon.do?email='+r.email;
       
       </script>
       
       <!--반드시 중간에 본인의 앱아이디를 입력하셔야 합니다.-->
       <script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v10.0&appId=1588150011384568" nonce="SiOBIhLG"></script>
   
				


</body>
</html>
    