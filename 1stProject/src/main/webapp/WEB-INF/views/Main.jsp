<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

html, body {    margin: 0;    height: 100%;    overflow: hidden;}


    span >div > .user-menuselect:hover{
        background: rgba(55, 53, 47, 0.08);
    }

    .header.jsx-2604928324{position:fixed;
width:100%;
display:-webkit-box;
display:-webkit-flex;
display:-ms-flexbox;
display:flex;
-webkit-flex-direction:column-reverse;
-ms-flex-direction:column-reverse;
flex-direction:column-reverse;
background:#FFFEFC;
z-index:100}

.inner.jsx-2604928324{display:-webkit-box;
display:-webkit-flex;
display:-ms-flexbox;
display:flex;
-webkit-align-items:center;
-webkit-box-align:center;
-ms-flex-align:center;
align-items:center;
-webkit-box-pack:justify;
-webkit-justify-content:space-between;
justify-content:space-between;
width:100%;
padding:0 24px;
max-width:1392px;
margin:0 auto;
height:60px;
-webkit-transition:250ms height;
transition:250ms height

}

</style>

</head>
<body>



    <header class="jsx-2604928324 header">
        <div class="jsx-2604928324 inner">
            <div class="jsx-2604928324 desktop-actions">
                <a href="#" rel="noopener noreferrer" style="display: block; text-decoration: none; user-select: none; cursor: pointer; color: inherit;">
					<div style="display: flex; align-items: center;">
						<img src="img/Edution2.png" style="width: 30px; height: 30px;">
						<div style="font-weight: 500; font-size: 16px;
                        font-family:inter-var, -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, 'Apple Color Emoji', Arial, sans-serif, 'Segoe UI Emoji', 'Segoe UI Symbol';">Edution</div></div></a></div></div></header>
    <!-- 여기까지 상단바 -->
    
<!-- 여기부터 사용자 공간 -->
 <!-- 사용자의 프로필사진, 아이디, 닉네임이 보이게 여기서 설정 해주세요! -->
 <!-- 프로필 사진은 보기 쉽게 넣어놨어요 이미지 src부분 꼭 수정해주세요! -->
    <div style="overflow: auto; hight:100%; width:30%; overflow:hidden; float:left; position: fixed; background-color: white;">
   
    <div style="flex-grow: 0; flex-shrink: 0; padding-top: 90px; padding-bottom: 8px; padding-left: 140px; width: 240px;">
        <div class="notion-focusable" style="margin-left: 20px; margin-right: 0px; margin-top:10px; width: calc(100% - 0px);">
            <img src="img/home-page.webp" width="140px" height="140px" style= "border-radius: 70%; object-fit: cover; align-items: center;" ></div></div>
            
            
            <div class="notion-focusable" role="button" tabindex="0" style="padding-left: 140px; user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; border-radius: 3px; margin-left: 35px; margin-right: 0px; width: calc(100% - 8px);">
            <div style="display: flex; align-items: center; width: 100%; font-size: 14px; min-height: 27px; padding: 2px 10px; margin-top: 1px; margin-bottom: 0px; background: none;">
            <div style=" border-radius: 3px; color: rgba(55, 53, 47, 0.65); width: 22px; height: 22px; display: flex; align-items: center; justify-content: center; margin-right: 0px;">
            <div style="color: inherit;"></div>
            </div>
            <div style="flex: 1 1 auto; white-space: nowrap; min-width: 0px; overflow: hidden; text-overflow: clip;
            font-family: ui-sans-serif, -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, 'Apple Color Emoji', Arial, sans-serif, 'Segoe UI Emoji', 'Segoe UI Symbol'; -webkit-font-smoothing: auto;">
            <h3>닉네임</h3></div>
            </div></div>
            
            <div class="notion-focusable" role="button" tabindex="0" style=" padding-left: 140px; user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; border-radius: 3px; margin-left: 35px; margin-right: 4px; width: calc(100% - 8px);">
                <div style="display: flex; align-items: center; width: 100%; font-size: 14px; min-height: 27px;  margin-top: 0px; margin-bottom: 1px; background: none;">
                <div style=" border-radius: 3px; color: rgba(55, 53, 47, 0.65);  height: 22px; display: flex; align-items: center; justify-content: center; margin-right: 0px;">
                <div style="color: inherit;">
            </div></div>
                <div style="flex: 1 1 auto; white-space: nowrap; min-width: 0px; overflow: hidden; text-overflow: clip;">이메일넣어주세요</div>
                </div></div>
    
                <div style="margin-top: 18px;"></div>
          <!-- 여기까지 사용자 공간 -->
                
        <!-- 여기가 메뉴바 -->
        <span>
            <div class="notion-focusable" role="button" tabindex="0" style=" padding-left: 140px; user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; border-radius: 3px; margin-left: 4px; margin-right: 4px; width: calc(100% - 8px);">
                <div class="user-menuselect" style="display: flex; align-items: center; width: 100%; font-size: 14px; min-height: 27px; padding: 2px 10px; margin-top: 1px; margin-bottom: 1px;">
                    
                    <div class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; position: relative; display: flex; align-items: center; justify-content: center; width: 20px; height: 20px; border-radius: 3px;">
                    <svg viewBox="0 0 12 12" class="chevronDownRoundedThick" style="width: 12px; height: 12px; display: block; fill: rgba(55, 53, 47, 0.35); flex-shrink: 0; backface-visibility: hidden; transition: transform 200ms ease-out 0s; transform: rotateZ(-90deg); opacity: 1;">
                    <path d="M6.02734 8.80274C6.27148 8.80274 6.47168 8.71484 6.66211 8.51465L10.2803 4.82324C10.4268 4.67676 10.5 4.49609 10.5 4.28125C10.5 3.85156 10.1484 3.5 9.72363 3.5C9.50879 3.5 9.30859 3.58789 9.15234 3.74902L6.03223 6.9668L2.90722 3.74902C2.74609 3.58789 2.55078 3.5 2.33105 3.5C1.90137 3.5 1.55469 3.85156 1.55469 4.28125C1.55469 4.49609 1.62793 4.67676 1.77441 4.82324L5.39258 8.51465C5.58789 8.71973 5.78808 8.80274 6.02734 8.80274Z"></path></svg></div>
                    <div style="flex: 1 1 auto; white-space: nowrap; min-width: 0px; overflow: hidden; text-overflow: ellipsis;"  >
                        <!-- span태그 안에 이모지 유니코드 넣으면 변경됨 -->               
                        &#10004; 시작하기</div></div></div>
        </span>

        <!-- 메뉴 추가는 여기 span태그 시작부터 -->
        <span>
            <div class="notion-focusable" role="button" tabindex="0" style=" padding-left: 140px; user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; border-radius: 3px; margin-left: 4px; margin-right: 4px; width: calc(100% - 8px);">
                <div class="user-menuselect" style="display: flex; align-items: center; width: 100%; font-size: 14px; min-height: 27px; padding: 2px 10px; margin-top: 1px; margin-bottom: 1px;">
                    
                    <div class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; position: relative; display: flex; align-items: center; justify-content: center; width: 20px; height: 20px; border-radius: 3px;">
                    <svg viewBox="0 0 12 12" class="chevronDownRoundedThick" style="width: 12px; height: 12px; display: block; fill: rgba(55, 53, 47, 0.35); flex-shrink: 0; backface-visibility: hidden; transition: transform 200ms ease-out 0s; transform: rotateZ(-90deg); opacity: 1;">
                    <path d="M6.02734 8.80274C6.27148 8.80274 6.47168 8.71484 6.66211 8.51465L10.2803 4.82324C10.4268 4.67676 10.5 4.49609 10.5 4.28125C10.5 3.85156 10.1484 3.5 9.72363 3.5C9.50879 3.5 9.30859 3.58789 9.15234 3.74902L6.03223 6.9668L2.90722 3.74902C2.74609 3.58789 2.55078 3.5 2.33105 3.5C1.90137 3.5 1.55469 3.85156 1.55469 4.28125C1.55469 4.49609 1.62793 4.67676 1.77441 4.82324L5.39258 8.51465C5.58789 8.71973 5.78808 8.80274 6.02734 8.80274Z"></path></svg></div>
                    <div style="flex: 1 1 auto; white-space: nowrap; min-width: 0px; overflow: hidden; text-overflow: ellipsis;"  >
                        <!-- span태그 안에 이모지 유니코드 넣으면 변경됨 -->               
                        &#10004; 강의노트</div></div></div>
        </span>
        <!-- 여기 닫는 스판태그까지 복사해서 넣기 -->
        
    
        <div style="margin-top: 18px;"></div>
    
        <!-- 템플릿, 가져오기, 휴지통 시작하는 부분 -->
            <div class="notion-focusable" role="button" tabindex="0" style=" padding-left: 140px; user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; border-radius: 3px; margin-left: 4px; margin-right: 4px; width: calc(100% - 8px);">
            <div style="display: flex; align-items: center; width: 100%; font-size: 14px; min-height: 27px; padding: 2px 10px; margin-top: 1px; margin-bottom: 1px;">
                <!-- 아이콘 부분 -->
                <div style="flex-shrink: 0; flex-grow: 0; border-radius: 3px; color: rgba(55, 53, 47, 0.65); width: 22px; height: 22px; display: flex; align-items: center; justify-content: center; margin-right: 8px;">
                    <svg viewBox="0 0 14 14" class="sidebarTemplates" style="width: 100%; height: 15px; display: block; fill: rgba(55, 53, 47, 0.45); flex-shrink: 0; backface-visibility: hidden;">
                    <path fill-rule="evenodd" clip-rule="evenodd" d="M7.237 1l7.84 1.237-1.201 7.61L11.5 6.15 9.424 9.38 6 8.84 7.237 1zM5.545 5.31a4 4 0 1 0 2.29 4.832l-2.979-.47.689-4.363zM7 15l4.5-7 4.5 7H7z"></path></svg></div>
    
        <div style="flex: 1 1 auto; white-space: nowrap; min-width: 0px; overflow: hidden; text-overflow: ellipsis;">템플릿</div></div></div>
    
        <div class="notion-focusable" role="button" tabindex="0" style=" padding-left: 140px; user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; border-radius: 3px; margin-left: 4px; margin-right: 4px; width: calc(100% - 8px);">
        <div style="display: flex; align-items: center; width: 100%; font-size: 14px; min-height: 27px; padding: 2px 10px; margin-top: 1px; margin-bottom: 1px;">
    
        <div style="flex-shrink: 0; flex-grow: 0; border-radius: 3px; color: rgba(55, 53, 47, 0.65); width: 22px; height: 22px; display: flex; align-items: center; justify-content: center; margin-right: 8px;">
        <svg viewBox="0 0 14 14" class="sidebarImport" style="width: 100%; height: 15px; display: block; fill: rgba(55, 53, 47, 0.45); flex-shrink: 0; backface-visibility: hidden;">
        <path d="M11.2857,6.05714 L10.08571,4.85714 L7.85714,7.14786 L7.85714,1 L6.14286,1 L6.14286,7.14786 L3.91429,4.85714 L2.71429,6.05714 L7,10.42857 L11.2857,6.05714 Z M1,11.2857 L1,13 L13,13 L13,11.2857 L1,11.2857 Z"></path></svg></div>
    
        <div style="flex: 1 1 auto; white-space: nowrap; min-width: 0px; overflow: hidden; text-overflow: ellipsis;">가져오기</div></div></div>
    
    <div class="notion-focusable" role="button" tabindex="0" style=" padding-left: 140px; user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; border-radius: 3px; margin-left: 4px; margin-right: 4px; width: calc(100% - 8px);">
    <div style="display: flex; align-items: center; width: 100%; font-size: 14px; min-height: 27px; padding: 2px 10px; margin-top: 1px; margin-bottom: 1px;">
    
        <div style="flex-shrink: 0; flex-grow: 0; border-radius: 3px; color: rgba(55, 53, 47, 0.65); width: 22px; height: 22px; display: flex; align-items: center; justify-content: center; margin-right: 8px;">
    <svg viewBox="0 0 14 14" class="sidebarTrash" style="width: 14px; height: 100%; display: block; fill: rgba(55, 53, 47, 0.45); flex-shrink: 0; backface-visibility: hidden;">
    <path d="M13.5000308,3.23952 C13.5000308,4.55848168 11.9230308,12.0493 11.9230308,12.0782 C11.9230308,12.6571 9.73825083,14 7.04165083,14 C4.34504083,14 2.16025083,12.6571 2.16025083,12.0782 C2.16025083,12.0541 0.5,4.55799105 0.5,3.23952 C0.5,1.91780104 3.02713083,0 7.03525083,0 C11.0433308,0 13.5000308,1.9178004 13.5000308,3.23952 Z M7,2 C3.625,2 2.5,3.25 2.5,4 C2.5,4.75 3.625,6 7,6 C10.375,6 11.5,4.75 11.5,4 C11.5,3.25 10.375,2 7,2 Z"></path></svg></div>
    
    <div style="flex: 1 1 auto; white-space: nowrap; min-width: 0px; overflow: hidden; text-overflow: ellipsis;">휴지통</div></div></div></div>
       
<!-- 여기까지 왼쪽 메뉴바 부분 -->


<!-- 여기부터 노트 활용 부분 -->
<div style="display:flex; padding-top: 90px; margin-right:10px; hight:100%; width:60%; overflow:auto; float: left;">
   <!-- 이 부분에 넣어주세요 위 div태그 안에 감싸지도록! -->
    <div><h1>강의 노트 테스트 해보기</h1></div><br><img src="img/noteimage.PNG"/>
    <img src="img/noteimage.PNG"/>
    <img src="img/noteimage.PNG"/>
    <img src="img/noteimage.PNG"/>
    <img src="img/noteimage.PNG"/>

   

</div>
<!-- 여기까지 노트 활용 부분 -->



</body>
</html>