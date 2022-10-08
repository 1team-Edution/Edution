<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="./js/jquery-3.6.1.min.js"></script> 
	<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<title>NaverLoginSDK</title>
</head>

<body>
<script type="text/javascript">
  var naver_id_login = new naver_id_login("gHew1L2rBs2uyMgz103W", "http://localhost:8037/1stProject/Naver_callback.do");
  // 접근 토큰 값 출력
  //$('body').append('<h4>접속토큰:'+naver_id_login.oauthParams.access_token+'</h4>');
  // 네이버 사용자 프로필 조회
  naver_id_login.get_naver_userprofile("naverSignInCallback()");
  // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
  function naverSignInCallback() {
    const email = naver_id_login.getProfileData('email');
    const name = naver_id_login.getProfileData('name');
    const nickname = naver_id_login.getProfileData('nickname');
    const age = naver_id_login.getProfileData('age');
    const gender = naver_id_login.getProfileData('gender');
    const birthday = naver_id_login.getProfileData('birthday');
    const mobile = naver_id_login.getProfileData('mobile');
    
    var form = document.createElement('form'); // 폼객체 생성
	var objs;
	objs = document.createElement('input'); // 값이 들어있는 녀석의 형식
	//objs.setAttribute('type', 'text'); // 값이 들어있는 녀석의 type
	objs.setAttribute('name', 'email'); // 객체이름
	objs.setAttribute('value', email); //객체값
	form.appendChild(objs);
	form.setAttribute('method', 'post'); //get,post 가능
	form.setAttribute('action', "http://localhost:8037/1stProject/NaverloginCon.do"); //보내는 url  "/login/users"
	document.body.appendChild(form);
	form.submit();

   
  }
</script>
</body>
</html>