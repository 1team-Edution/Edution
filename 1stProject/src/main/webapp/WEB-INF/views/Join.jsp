<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	
			<ul class="actions vertical">
							<li><h5>회원가입</h5></li>
								<form action = "Join.do">
									<li><input name = "user_id" type="text" placeholder="ID를 입력하세요"></li>
									<li><input name = "user_pw" type="password" placeholder="PW를 입력하세요"></li>
									<li><input name = "user_name" type="text" placeholder="이름을 입력하세요"></li>
									<li><input name = "user_email" type="text" placeholder="E-mail을 입력하세요"></li>
									<li><input name = "user_nick" type="text" placeholder="닉네임을 입력하세요"></li>
									<li><input name = "user_photo" type = "file"></li>
									<li><input name = "user_type" type="text" placeholder="사용자 유형을 입력하세요"></li>
									<li><input name = "user_sns" type="text" placeholder="사용자sns를 입력하세요"></li>
									<li><input name = "user_templet" type="text" placeholder="템블렛을 입력하세요"></li>
									<li><input type = "submit" value="JoinUs" class="button fit"></li>
								</form>
						</ul>




</body>
</html>