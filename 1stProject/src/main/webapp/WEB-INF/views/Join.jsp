<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">



</head>

<body>
<div style="font-size: 15px; white-space: nowrap; top: 0px; width: 100%; background: rgb(255, 254, 252); display: flex; flex-direction: column; align-items: center; justify-content: center;">
<nav style="display: flex; align-items: center; justify-content: center; width: 100%; max-width: 1300px; padding-left: 20px; padding-right: 20px; transition: height 250ms ease 0s; height: 80px; position: relative; overflow: hidden; box-shadow: none;">
<div style="flex-shrink: 0;">

<a href="indexView.do" rel="noopener noreferrer" style="display: block; text-decoration: none; user-select: none; cursor: pointer; color: inherit;">
    <div style="display: flex; align-items: center;">
        <svg viewBox="0 0 120 126" class="edutionLogo" style="width: 30px; height: 30px; display: block; fill: inherit; flex-shrink: 0; backface-visibility: hidden; margin-right: 10px;"></svg>

        <img src="img/Edution2.png" style="width: 30px; height: 30px;">
        <div style="font-weight: 500; font-size: 16px;
        font-family:inter-var, -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, 'Apple Color Emoji', Arial, sans-serif, 'Segoe UI Emoji', 'Segoe UI Symbol';">Edution</div></div></a></div>
        <div style="flex: 1 1 0%; display: flex; justify-content: center;"></div></nav></div>
<!-- 여기까지 상단바 -->

  <div style="display: flex; flex-direction: column; align-items: center;">
    <div style="font-size: 50px; margin-top: 8vh; font-weight: 700; margin-bottom: 24px; text-align: center; line-height: 1.1;">회원가입</div>
    <div class="notion-login" style="width: 100%; display: flex; flex-direction: column; align-items: center; max-width: 320px; margin-bottom: 16vh;">
      <div style="display: flex; flex-direction: column-reverse; width: 100%;"><div>
  

        <!-- 여기서부터 sns로그인 칸 -->
        <div style="width: 100%;">
          <div class="notion-focusable" role="button" aria-disabled="false" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; justify-content: center; white-space: nowrap; height: 36px; border-radius: 4px; color: rgb(17, 17, 17); font-size: 14px; line-height: 1; padding-left: 12px; padding-right: 12px; font-weight: 500; background: white; border: 1px solid rgba(15, 15, 15, 0.15); width: 100%; box-shadow: rgba(15, 15, 15, 0.05) 0px 1px 2px; margin-bottom: 4px;">
              카카오로 계속하기</div></div>
              <div class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; justify-content: center; white-space: nowrap; height: 36px; border-radius: 4px; color: rgb(55, 53, 47); fill: rgb(55, 53, 47); background: white; font-size: 14px; line-height: 1; padding-left: 12px; padding-right: 12px; font-weight: 500; border: 1px solid rgba(15, 15, 15, 0.15); width: 100%; box-shadow: rgba(15, 15, 15, 0.05) 0px 1px 2px; margin-top: 10px;">
                페이스북으로 계속하기</div>
                <div class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; justify-content: center; white-space: nowrap; height: 36px; border-radius: 4px; color: rgb(55, 53, 47); fill: rgb(55, 53, 47); background: white; font-size: 14px; line-height: 1; padding-left: 12px; padding-right: 12px; font-weight: 500; border: 1px solid rgba(15, 15, 15, 0.15); width: 100%; box-shadow: rgba(15, 15, 15, 0.05) 0px 1px 2px; margin-top: 10px;">
                  인스타그램으로 계속하기</div></div>

                <div style="display: flex; align-items: center; justify-content: center; pointer-events: none; width: 100%; height: 42px; flex: 0 0 auto;">
                  <div style="width: 100%; height: 1px; visibility: visible; border-bottom: 1px solid rgba(55, 53, 47, 0.16);"></div></div><div>
                    
                    
                    <!-- 여기서부터 웹 페이지 로그인 부분 -->
                    <!-- 이곳에 action, submit, name 넣어주세요! -->
<<<<<<< HEAD
						<div class="mb-3">
		  <label style="display: block; margin-bottom: 4px; font-size: 12px; color: rgba(55, 53, 47, 0.65);">프로필사진</label>
		  <input class="form-control" type="file" id="formFile">
		</div>
		
		

					<!-- input 추가 필요할 경우 여기서부터 -->
=======
                    <form>
					 <div class="mb-3">
					  <label for="formFileMultiple" class="form-label">프로필 사진 등록</label>
					  <input class="form-control" type="file" id="formFileMultiple" multiple>
					</div>
				
                      <!-- input 추가 필요할 경우 여기서부터 -->
>>>>>>> branch 'master' of https://github.com/1team-Edution/Edution.git
                  
                      <label style="display: block; margin-bottom: 4px; font-size: 12px; color: rgba(55, 53, 47, 0.65);">ID/PW</label>
                      <div style="display: flex; align-items: center; width: 100%; font-size: 15px; line-height: 26px; padding: 4px 10px; position: relative; border-radius: 3px; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px inset; background: rgba(242, 241, 238, 0.6); cursor: text; margin-top: 4px; margin-bottom: 8px;">
                        <input placeholder="ID를 입력하세요." style="font-size: inherit; line-height: inherit; border: none; background: none; width: 100%; display: block; resize: none; padding: 0px;"></div>                        
                       <!-- 여기까지 복붙해서 사용하기! placeholder에 문구 입력! -->

                        <div style="display: flex; align-items: center; width: 100%; font-size: 15px; line-height: 26px; padding: 4px 10px; position: relative; border-radius: 3px; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px inset; background: rgba(242, 241, 238, 0.6); cursor: text; margin-top: 4px; margin-bottom: 8px;">
                          <input placeholder="PW를 입력하세요." type="password" style="font-size: inherit; line-height: inherit; border: none; background: none; width: 100%; display: block; resize: none; padding: 0px;"></div>  

                          <label style="display: block; margin-bottom: 4px; font-size: 12px; color: rgba(55, 53, 47, 0.65);">이메일</label>
                          <div style="display: flex; align-items: center; width: 100%; font-size: 15px; line-height: 26px; padding: 4px 10px; position: relative; border-radius: 3px; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px inset; background: rgba(242, 241, 238, 0.6); cursor: text; margin-top: 4px; margin-bottom: 8px;">
                            <input placeholder="이메일을 입력하세요." style="font-size: inherit; line-height: inherit; border: none; background: none; width: 100%; display: block; resize: none; padding: 0px;"></div>                        
 
                            <label style="display: block; margin-bottom: 4px; font-size: 12px; color: rgba(55, 53, 47, 0.65);">이름</label>
                            <div style="display: flex; align-items: center; width: 100%; font-size: 15px; line-height: 26px; padding: 4px 10px; position: relative; border-radius: 3px; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px inset; background: rgba(242, 241, 238, 0.6); cursor: text; margin-top: 4px; margin-bottom: 8px;">
                              <input placeholder="닉네임을 입력하세요." style="font-size: inherit; line-height: inherit; border: none; background: none; width: 100%; display: block; resize: none; padding: 0px;"></div>                          

                        <div class="notion-focusable" role="button" aria-disabled="false" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; justify-content: center; white-space: nowrap; height: 36px; border-radius: 4px; color: rgb(235, 87, 87); font-size: 14px; line-height: 1; padding-left: 12px; padding-right: 12px; font-weight: 500; background: rgb(253, 245, 242); box-shadow: rgba(15, 15, 15, 0.1) 0px 1px 2px, rgba(235, 87, 87, 0.3) 0px 0px 0px 1px inset; margin-top: 6px; margin-bottom: 12px; width: 100%;">가입하기</div>
                      </form>
</body>
</html>