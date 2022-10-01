<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="todo.css" type="text/css">
    <title>Edution 나의 플래너</title>

    <style>       
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

        span >div > .user-menuselect > .moya{
             display: none;
            }
            
            span >div > .user-menuselect:hover .moya{
                display: block;
                margin-left: 130px;
            }
         #modal.modal-overlay {
    width: 100%;
    height: 100%;
    position: absolute;
    left: 0;
    top: 0;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    background: rgba(255, 255, 255, 0.25);
    box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
    backdrop-filter: blur(2px);
    -webkit-backdrop-filter: blur(2px);
    border-radius: 10px;
    border: 1px solid rgba(255, 255, 255, 0.18);
    display: none;
}
#modal .modal-window {
    box-shadow: 0 6px 10px 0 rgba(134, 134, 134, 0.37);
    backdrop-filter: blur( 13.5px );
    -webkit-backdrop-filter: blur( 13.5px );
    border-radius: 10px;
    border: 2px solid rgba(43, 43, 43, 0.18);
    width: 500px;
    height: 330px;
    position: relative;
    top: -100px;
    padding: 10px;
}
#modal .title {
    padding-left: 10px;
    display: inline;
    text-shadow: 1px 1px 2px rgb(255, 255, 255);
    color: rgb(185, 183, 183);
}
#modal .title h2 {
    display: inline;
}
#modal .close-area {
    display: inline;
    float: right;
    padding-right: 10px;
    cursor: pointer;
    text-shadow: 1px 1px 2px rgb(255, 255, 255);
    color: rgb(185, 183, 183);
}
#modal .content {
    margin-top: 20px;
    padding: 0px 10px;
    text-shadow: 1px 1px 2px rgb(255, 255, 255);
    color: rgb(185, 183, 183);
}
.date-button{
    display: inline;
    cursor: pointer;
    color: rgb(114, 114, 114);
}
.save-button{
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    float: right;
    background: var(--button-bg-color);
    color: var(--button-color);
    margin: 0;
    padding: 4px 8px;
    
    font-family: 맑은고딕,arial;
    font-size: 15px;
    font-weight: 200;
    text-align: center;
    text-decoration: none;
    
    border: none;
    border-radius: 5px;
    
    /* display: inline-block; */
    width: auto;
    box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
    cursor: pointer;
    transition: 0.5s;
    --button-bg-color: #faecec;
    --button-hover-bg-color: #ddd0d0;
}
button:active,
    button:hover,
    button:focus {
    background: var(--button-hover-bg-color);
    outline: 0;
    }
    button:disabled {
    opacity: 0.5;
    }
.modal-text{
    width: 100%;
    padding: 10px;
    box-sizing: border-box;
    border: solid 2px #b9b9b9;
    border-radius: 5px;
    color: #808080;
    font-family: 맑은고딕,arial;
    font-size: 15px;
}
.modal-textarea{
    width: 100%;
    height: 100px;
    padding: 10px;
    box-sizing: border-box;
    border: solid 2px #b9b9b9;
    border-radius: 5px;
    font-size: 15px;
    font-family: 맑은고딕,arial;
    color: #808080;
    resize: none;
}
input[class="check"] + label {
            display: inline-block;
            width: 55px;
            height: 22px;
            border: 2px solid #bcbcbc;
            cursor: pointer;
            border-radius: 5px;
            }
input[class="check"]:checked + label {
                background-color: #b3b1b1;
                color: rgb(255, 255, 255);
                text-shadow: 1px 1px 2px rgb(146, 146, 146);
                }
input[class="check"] {
                    display: none;
                }

#btn-modal{
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    background: var(--button-bg-color);
    color: var(--button-color);
    margin: 0;
    padding: 0px 4px;
    display: inline;
    float: right;
    cursor: pointer;
    text-shadow: 1px 1px 2px rgb(255, 255, 255);
    color: rgb(190, 190, 190);
    border: none;
    font-size: 30px;
}
.todoTable{
    font-family: 맑은고딕, Arial;
    font-size:15px;
    color: rgb(122, 122, 122);
}
#task-head{
    font-family: 맑은고딕, Arial;
    background-color: rgb(193, 218, 218);
    color:#747888;
    display: inline-block;
    border-radius: 20px;
    padding: 0px 20px;
    font-size: 18px; 
    margin-left: 15px;
}
#container{
    border-radius: 10px;
    border: 1.5px solid rgba(43, 43, 43, 0.18);
    width: 200px;
    height: 400px;
    position: relative;
    top: 10px;
    padding: 10px;
    margin-left: 10px;
    margin-right: 0px;            
}
#task-board{
    margin-left: 10px;
    font-family: 맑은고딕, Arial;
    font-size: 15px;
    color:#888888;
    cursor: pointer;
}

.task-done{
    color:#cccccc;
}


         
        
        </style>
        
        </head>
        <body>
        <script src="./jquery-3.6.1.min.js"></script>
        <script>	
		//서버에 데이터를 요청하는 함수
		$.ajax({
                url: "GoMain",
                dataType:"json",
                success: function(data) {        
                	console.log(data);
                	let todolist=data;
                },
                error: function(){
                    console.log("요청실패");
                }
            });		
	</script>
        
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
            <div style="coverflow: auto; hight:100%;  overflow:hidden; float:left; background-color: white; position: fixed;">
           
                    <!-- 마이페이지 주소값 설정해주기 -->
            <a onfocus=blur() href="javascript:void(window.open('MypageView.do','win0','width=1024,height=768,left=500, top=40,status=no,toolbar=no,scrollbars=no'))" style="text-decoration: none; color:black;" >
            <div style="flex-grow: 0; flex-shrink: 0; padding-top: 90px; padding-bottom: 8px; padding-left: 140px; width: 240px;">
                <div style="margin-left: 20px; margin-right: 0px; margin-top:10px;">
                        <img src="img/home-page.webp" width="140px" height="140px" style= "border-radius: 70%; object-fit: cover; align-items: center;" >
                    </div></div>
                    
                    
                    <div style="padding-left: 140px; user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; border-radius: 3px; margin-left: 35px; margin-right: 0px; ">
                    <div style="display: flex; align-items: center; width: 100%; font-size: 14px; min-height: 27px; padding: 2px 10px; margin-top: 1px; margin-bottom: 0px; background: none;">
                    <div style=" border-radius: 3px; color: rgba(55, 53, 47, 0.65); width: 22px; height: 22px; display: flex; align-items: center; justify-content: center; margin-right: 0px;">
                    <div style="color: inherit;"></div>
                    </div>
                    <div style=" white-space: nowrap; min-width: 0px; overflow: hidden; text-overflow: clip;
                    font-family: ui-sans-serif, -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, 'Apple Color Emoji', Arial, sans-serif, 'Segoe UI Emoji', 'Segoe UI Symbol'; -webkit-font-smoothing: auto;">
                    <h3>닉네임</h3></div>
                    </div></div>
                    
                    <div class="notion-focusable" role="button" tabindex="0" style=" padding-left: 140px; user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; border-radius: 3px; margin-left: 35px; margin-right: 4px; ">
                        <div style="display: flex; align-items: center; width: 100%; font-size: 14px; min-height: 27px;  margin-top: 0px; margin-bottom: 1px; background: none;">
                        <div style=" border-radius: 3px; color: rgba(55, 53, 47, 0.65);  height: 22px; display: flex; align-items: center; justify-content: center; margin-right: 0px;">
                        <div style="color: inherit;">
                    </div></div>
                        <div style="white-space: nowrap; min-width: 0px; overflow: hidden; text-overflow: clip;">이메일넣어주세요</div>
                        </div></div>
                        
                            <div style="margin-top: 18px;"></div>
                    </a>
                  <!-- 여기까지 사용자 공간 -->
                        
                <!-- 여기가 메뉴바 -->
                <span>
                    <div class="notion-focusable" role="button" tabindex="0" style=" padding-left: 140px; user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; border-radius: 3px; margin-left: 4px; ">
                        <div class="user-menuselect" style="display: flex; align-items: center; font-size: 14px; min-height: 27px; padding: 2px 10px; margin-top: 1px; margin-bottom: 1px;">
                            
                            <div role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; position: relative; display: flex; align-items: center; justify-content: center; width: 20px; height: 20px; border-radius: 3px;">
                            <svg  viewBox="0 0 12 12" class="chevronDownRoundedThick" style="width: 12px; height: 12px; display: block; fill: rgba(55, 53, 47, 0.35); flex-shrink: 0; backface-visibility: hidden; transition: transform 200ms ease-out 0s; transform: rotateZ(-90deg); opacity: 1;">
                            <path d="M6.02734 8.80274C6.27148 8.80274 6.47168 8.71484 6.66211 8.51465L10.2803 4.82324C10.4268 4.67676 10.5 4.49609 10.5 4.28125C10.5 3.85156 10.1484 3.5 9.72363 3.5C9.50879 3.5 9.30859 3.58789 9.15234 3.74902L6.03223 6.9668L2.90722 3.74902C2.74609 3.58789 2.55078 3.5 2.33105 3.5C1.90137 3.5 1.55469 3.85156 1.55469 4.28125C1.55469 4.49609 1.62793 4.67676 1.77441 4.82324L5.39258 8.51465C5.58789 8.71973 5.78808 8.80274 6.02734 8.80274Z"></path></svg></div>
                            <div class="user-menuselect" style="white-space: nowrap; min-width: 0px; overflow: hidden; text-overflow: ellipsis;"  >
                                <!-- span태그 안에 이모지 유니코드 넣으면 변경됨 -->               
                                &#10004; 시작하기</div>
                                <a class="moya" role="button">
                                    <svg viewBox="0 0 14 14" class="sidebarTrash" style="width: 14px; height: 100%; display: block; fill: rgba(55, 53, 47, 0.45); flex-shrink: 0; backface-visibility: hidden;">
                                        <path d="M13.5000308,3.23952 C13.5000308,4.55848168 11.9230308,12.0493 11.9230308,12.0782 C11.9230308,12.6571 9.73825083,14 7.04165083,14 C4.34504083,14 2.16025083,12.6571 2.16025083,12.0782 C2.16025083,12.0541 0.5,4.55799105 0.5,3.23952 C0.5,1.91780104 3.02713083,0 7.03525083,0 C11.0433308,0 13.5000308,1.9178004 13.5000308,3.23952 Z M7,2 C3.625,2 2.5,3.25 2.5,4 C2.5,4.75 3.625,6 7,6 C10.375,6 11.5,4.75 11.5,4 C11.5,3.25 10.375,2 7,2 Z"></path></svg>
                                </a>    
                            </div></div>
                </span>
        
                <!-- 메뉴 추가는 여기 span태그 시작부터 -->
                <span>
                    <div class="notion-focusable" role="button" tabindex="0" style=" padding-left: 140px; user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; border-radius: 3px; margin-left: 4px; ">
                        <div class="user-menuselect" style="display: flex; align-items: center; font-size: 14px; min-height: 27px; padding: 2px 10px; margin-top: 1px; margin-bottom: 1px;">
                            
                            <div role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; position: relative; display: flex; align-items: center; justify-content: center; width: 20px; height: 20px; border-radius: 3px;">
                            <svg  viewBox="0 0 12 12" class="chevronDownRoundedThick" style="width: 12px; height: 12px; display: block; fill: rgba(55, 53, 47, 0.35); flex-shrink: 0; backface-visibility: hidden; transition: transform 200ms ease-out 0s; transform: rotateZ(-90deg); opacity: 1;">
                            <path d="M6.02734 8.80274C6.27148 8.80274 6.47168 8.71484 6.66211 8.51465L10.2803 4.82324C10.4268 4.67676 10.5 4.49609 10.5 4.28125C10.5 3.85156 10.1484 3.5 9.72363 3.5C9.50879 3.5 9.30859 3.58789 9.15234 3.74902L6.03223 6.9668L2.90722 3.74902C2.74609 3.58789 2.55078 3.5 2.33105 3.5C1.90137 3.5 1.55469 3.85156 1.55469 4.28125C1.55469 4.49609 1.62793 4.67676 1.77441 4.82324L5.39258 8.51465C5.58789 8.71973 5.78808 8.80274 6.02734 8.80274Z"></path></svg></div>
                            <div class="user-menuselect" style="white-space: nowrap; min-width: 0px; overflow: hidden; text-overflow: ellipsis;"  >
                                <!-- span태그 안에 이모지 유니코드 넣으면 변경됨 -->               
                                &#10004; 강의노트</div>
                                <a class="moya" role="button">
                                    <svg viewBox="0 0 14 14" class="sidebarTrash" style="width: 14px; height: 100%; display: block; fill: rgba(55, 53, 47, 0.45); flex-shrink: 0; backface-visibility: hidden;">
                                        <path d="M13.5000308,3.23952 C13.5000308,4.55848168 11.9230308,12.0493 11.9230308,12.0782 C11.9230308,12.6571 9.73825083,14 7.04165083,14 C4.34504083,14 2.16025083,12.6571 2.16025083,12.0782 C2.16025083,12.0541 0.5,4.55799105 0.5,3.23952 C0.5,1.91780104 3.02713083,0 7.03525083,0 C11.0433308,0 13.5000308,1.9178004 13.5000308,3.23952 Z M7,2 C3.625,2 2.5,3.25 2.5,4 C2.5,4.75 3.625,6 7,6 C10.375,6 11.5,4.75 11.5,4 C11.5,3.25 10.375,2 7,2 Z"></path></svg>
                                </a>    
                            </div></div>
                </span>
                <!-- 여기 닫는 스판태그까지 복사해서 넣기 -->

                <span >
                    <div class="notion-focusable" role="button" tabindex="0" style=" color: rgba(55, 53, 47, 0.65); padding-left: 140px; user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; border-radius: 3px; margin-left: 4px; ">
                        <div  class="user-menuselect" style="display: flex; align-items: center; width: 100%; font-size: 14px; min-height: 27px; padding: 2px 10px; margin-top: 1px; margin-bottom: 1px;">
                            
                            <div class="notion-focusable" role="button" tabindex="0" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; position: relative; display: flex; align-items: center; justify-content: center; width: 20px; height: 20px; border-radius: 3px;">
                                <svg viewBox="0 0 14 14" class="plusThick" style="width: 16px; height: 16px; display: block; fill: rgba(55, 53, 47, 0.45); flex-shrink: 0; backface-visibility: hidden;"><path d="M2 7.16357C2 7.59692 2.36011 7.95093 2.78735 7.95093H6.37622V11.5398C6.37622 11.9731 6.73022 12.3271 7.16357 12.3271C7.59692 12.3271 7.95093 11.9731 7.95093 11.5398V7.95093H11.5398C11.9731 7.95093 12.3271 7.59692 12.3271 7.16357C12.3271 6.73022 11.9731 6.37622 11.5398 6.37622H7.95093V2.78735C7.95093 2.36011 7.59692 2 7.16357 2C6.73022 2 6.37622 2.36011 6.37622 2.78735V6.37622H2.78735C2.36011 6.37622 2 6.73022 2 7.16357Z"></path></svg>
                          
                            </div>
                            <div style="flex: 1 1 auto; white-space: nowrap; min-width: 0px; overflow: hidden; text-overflow: ellipsis;"  >
                                <!-- span태그 안에 이모지 유니코드 넣으면 변경됨 -->               
                                &nbsp;&nbsp; 추가하기</div></div></div>
                </span>


                
            
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
                

        <div style="column-count :auto; display: inline-block; padding-top: 90px; padding-left: 450px; margin-right:10px; width:100%; overflow:auto;">
            <!-- 이 부분에 넣어주세요 위 div태그 안에 감싸지도록! -->
				<!-- todaylog 시작 -->
				<div class='todobox'>
					<div id="container">
        <b id="task-head">오늘의 학습</b><hr>
        <!--모달 창 열기 버튼-->
        <button id="btn-modal">+</button><br><br>
            <!--여기에 todolist 작성-->
            <div id="task-board-today">
                할 일 목록이 여기에 출력됩니다.
            </div>
    </div>
    <!--여기부터 모달-->
    <div id="modal" class="modal-overlay">
        <div class="modal-window">
            <div class="title">
                <h2>Today Log</h2>
            </div>
            <div class="close-area">X</div>
            <div class="content">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">오늘 할 공부를 분류하고 우선순위를 결정하세요.</h5>
                        </div>
                        <form action="Todo.do" method="post">
                        <div class="modal-body">
                            <div>
                                <input type="text" class="modal-text" placeholder="Todo" name = "todoHead">
                                <br>
                            </div>
                            <div>
                                <br><textarea class="modal-textarea" name="todoBody" id="additional-content" placeholder="추가로 메모를 하고 싶다면&#13;&#10;이곳에 작성하세요."></textarea>
                            </div>
                        </div>
                        <div id="checkbox-area">
                            #
                            <input type="checkbox" class="check" id="tag-check1" name="tag" value="homework" autocomplete="off">
                            <label for="tag-check1" align="center">숙제</label>

                            <input type="checkbox" class="check" id="tag-check2" name="tag" value="exam" autocomplete="off">
                            <label for="tag-check2" align="center">시험</label>

                            <input type="checkbox" class="check" id="tag-check3" name="tag" value="review" autocomplete="off">
                            <label for="tag-check3" align="center">복습</label>
                            
                            <input type="checkbox" class="check" id="tag-check4" name="tag" value="preview" autocomplete="off">
                            <label for="tag-check4" align="center">예습</label>
                            
                            <input type="checkbox" class="check" id="tag-check5" name="tag" value="memo" autocomplete="off">
                            <label for="tag-check5" align="center">메모</label>
                        </div>
                        <div class="modal-footer">
                            <br>
                                <label for="datesel">다른 날짜 선택</label>
                                <input type="date" id="datesel" name='date'>
                            <button type="submit" class="save-button" data-bs-dismiss="modal">입력</button>         
                        </div>
                    </form>
                    </div>                  
            </div>
        </div>
    </div>
				
				</div>
				<!-- todaylog끝 -->
				<!-- monthlylog 시작 -->
	<div class='todobox'>
	<div id="container">
        <b id="task-head">이번 달 학습 계획</b><hr>
        <!--모달 창 열기 버튼-->
        <button id="btn-modal">+</button><br><br>
            <!--여기에 todolist 작성-->
            <div id="task-board-monthly">
                할 일 목록이 여기에 출력됩니다.
            </div>
    </div>
    <!--여기부터 모달-->
    <div id="modal" class="modal-overlay">
        <div class="modal-window">
            <div class="title">
                <h2>Monthly Log</h2>
            </div>
            <div class="close-area">X</div>
            <div class="content">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">이번 달 내로 마쳐야 하는 일과 사건에 대한 개요입니다.</h5>
                        </div>
                        <form action="Todo.do" method="post">
                        <div class="modal-body">
                            <div>
                                <input type="text" class="modal-text" placeholder="Todo" name = "todoHead">
                                <br>
                            </div>
                            <div>
                                <br><textarea class="modal-textarea" name="todoBody" id="additional-content" placeholder="추가로 메모를 하고 싶다면&#13;&#10;이곳에 작성하세요."></textarea>
                            </div>
                        </div>
                        <div id="checkbox-area">
                            #
                            <input type="checkbox" class="check" id="tag-check1" name="tag" value="homework" autocomplete="off">
                            <label for="tag-check1" align="center">숙제</label>

                            <input type="checkbox" class="check" id="tag-check2" name="tag" value="exam" autocomplete="off">
                            <label for="tag-check2" align="center">시험</label>

                            <input type="checkbox" class="check" id="tag-check3" name="tag" value="review" autocomplete="off">
                            <label for="tag-check3" align="center">복습</label>
                            
                            <input type="checkbox" class="check" id="tag-check4" name="tag" value="preview" autocomplete="off">
                            <label for="tag-check4" align="center">예습</label>
                            
                            <input type="checkbox" class="check" id="tag-check5" name="tag" value="memo" autocomplete="off">
                            <label for="tag-check5" align="center">메모</label>
                        </div>
                        <div class="modal-footer">
                            <br>
                                <label for="datesel">다른 날짜 선택</label>
                                <input type="date" id="datesel" name='date'>
                            <button type="submit" class="save-button" data-bs-dismiss="modal">입력</button>         
                        </div>
                    </form>
                    </div>                  
            </div>
        </div>
    </div>
	
	</div>			
	<!-- monthlylog 끝 -->
	<!-- futurelog 시작 -->
	<div class='todobox'>
	 <div id="container">
        <b id="task-head">미래 학습 계획</b><hr>
        <!--모달 창 열기 버튼-->
        <button id="btn-modal">+</button><br><br>
            <!--여기에 todolist 작성-->
            <div id="task-board">
                할 일 목록이 여기에 출력됩니다.
            </div>
    </div>
    <!--여기부터 모달-->
    <div id="modal" class="modal-overlay">
        <div class="modal-window">
            <div class="title">
                <h2>Future Log</h2>
            </div>
            <div class="close-area">X</div>
            <div class="content">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">미래에 할 공부와 이벤트를 저장하세요.</h5>
                        </div>
                        <form action="Todo.do" method="post">
                        <div class="modal-body">
                            <div>
                                <input type="text" class="modal-text" placeholder="Todo" name = "todoHead">
                                <br>
                            </div>
                            <div>
                                <br><textarea class="modal-textarea" name="todoBody" id="additional-content" placeholder="추가로 메모를 하고 싶다면&#13;&#10;이곳에 작성하세요."></textarea>
                            </div>
                        </div>
                        <div id="checkbox-area">
                            #
                            <input type="checkbox" class="check" id="tag-check1" name="tag" value="homework" autocomplete="off">
                            <label for="tag-check1" align="center">숙제</label>

                            <input type="checkbox" class="check" id="tag-check2" name="tag" value="exam" autocomplete="off">
                            <label for="tag-check2" align="center">시험</label>

                            <input type="checkbox" class="check" id="tag-check3" name="tag" value="review" autocomplete="off">
                            <label for="tag-check3" align="center">복습</label>
                            
                            <input type="checkbox" class="check" id="tag-check4" name="tag" value="preview" autocomplete="off">
                            <label for="tag-check4" align="center">예습</label>
                            
                            <input type="checkbox" class="check" id="tag-check5" name="tag" value="memo" autocomplete="off">
                            <label for="tag-check5" align="center">메모</label>
                        </div>
                        <div class="modal-footer">
                            <br>
                            <button type="submit" class="save-button" data-bs-dismiss="modal">입력</button>         
                        </div>
                    </form>
                    </div>                  
            </div>
        </div>
    </div>
	</div>			
	<!-- futurelog 끝 -->
	<!-- calendar시작 -->
	<div class='calendarbox'>
	<div class="calendarbody">
        <div class="header">
            <div class="year-month"></div>
            <div class="nav">
                <button class="nav-btn go-prev" onclick="prevMonth()">&lt;</button>
                <button class="nav-btn go-today" onclick="goToday()">Today</button>
                <button class="nav-btn go-next" onclick="nextMonth()">&gt;</button>
            </div>
        </div>
        <div class="main">
            <div class="days">
                <div class="day">Sun</div>
                <div class="day">Mon</div>
                <div class="day">Tue</div>
                <div class="day">Wed</div>
                <div class="day">The</div>
                <div class="day">Fri</div>
                <div class="day">Sat</div>
            </div>
            <div class="dates"></div>
        </div>
    </div>
	</div>

				
				
				
				
	<!-- madal script -->
	<script>
	const modal = document.getElementById("modal")
	const btnModal = document.getElementById("btn-modal")
	btnModal.addEventListener("click", e => {
	    modal.style.display = "flex"})
	const closeBtn = modal.querySelector(".close-area")
	closeBtn.addEventListener("click", e => {
	    modal.style.display = "none"})   
	modal.addEventListener("click", e => {
	    const evTarget = e.target
	    if(evTarget.classList.contains("modal-overlay")) {
	        modal.style.display = "none"}
	})
	</script>		
	<!-- modal script 끝 -->
	<!-- calendar script -->
	<script>
	let date = new Date();


const renderCalender = () => {
  const viewYear = date.getFullYear();
  const viewMonth = date.getMonth();

  document.querySelector('.year-month').textContent = `${viewYear}년 ${viewMonth + 1}월`;

  const prevLast = new Date(viewYear, viewMonth, 0);
  const thisLast = new Date(viewYear, viewMonth + 1, 0);

  const PLDate = prevLast.getDate();
  const PLDay = prevLast.getDay();

  const TLDate = thisLast.getDate();
  const TLDay = thisLast.getDay();

  const prevDates = [];
  const thisDates = [...Array(TLDate + 1).keys()].slice(1);
  const nextDates = [];

  if (PLDay !== 6) {
    for (let i = 0; i < PLDay + 1; i++) {
      prevDates.unshift(PLDate - i);
    }
  }

  for (let i = 1; i < 7 - TLDay; i++) {
    nextDates.push(i);
  }

  const dates = prevDates.concat(thisDates, nextDates);
  const firstDateIndex = dates.indexOf(1);
  const lastDateIndex = dates.lastIndexOf(TLDate);


  dates.forEach((date, i) => {
    const condition = i >= firstDateIndex && i < lastDateIndex + 1
                      ? 'this'
                      : 'other';
    dates[i] = `<div class="date"><span class=${condition}>${date}</span><br>`;
    
    
    //여기부터

    let ynm = document.querySelector('.year-month');
    let ynmStr=ynm.innerText;
    ynmStr= ynmStr.replace("년 ", "-");
    ynmStr= ynmStr.replace("월", "-");
    let thisDate=ynmStr+date;
    if(condition=='other'){thisDate="";}
    //테스트용객체
    let todotest=[{"todo_seq":1,"todo_title":"리스트출력","todo_content":"내용","todo_tag":"#exam","todo_yn":"0","todo_percent":"0","user_id":"6","reg_date":"2022-9-30"},
            {"todo_seq":2,"todo_title":"리스트출력2","todo_content":"내용","todo_tag":"#exam","todo_yn":"0","todo_percent":"0","user_id":"6","reg_date":"2022-8-1"},
            {"todo_seq":1,"todo_title":"리스트출력3","todo_content":"내용","todo_tag":"#exam","todo_yn":"1","todo_percent":"0","user_id":"6","reg_date":"2022-9-30"}]
    //객체바인딩된 객체(테스트안해봄)


            todolist.forEach(x=>{
              if(x.reg_date==thisDate){
                dates[i]+=`<div class='caltodo'>${x.todo_title}</div>`;          
              }                
        });
    //여기까지
    dates[i]+=`</div>`;
    });


  document.querySelector('.dates').innerHTML = dates.join('');

  const today = new Date();
  if (viewMonth === today.getMonth() && viewYear === today.getFullYear()) {
    for (let date of document.querySelectorAll('.this')) {
      if (+date.innerText === today.getDate()) {
        date.classList.add('today');
        break;
      }
    }
  }



};


renderCalender();

const prevMonth = () => {
    date.setDate(1);
    date.setMonth(date.getMonth() - 1);
    renderCalender();
    
    
  }
  
  const nextMonth = () => {
    date.setDate(1);
    date.setMonth(date.getMonth() + 1);
    renderCalender();
    
  }
  
  const goToday = () => {
    date = new Date();
    renderCalender();

  }

  // const firstDateIndex = date.indexOf(1);
  // const lastDateIndex = date.lastIndexOf(TLDate);
  // date.forEach((date, i) => {
  //   const condition = i >= firstDateIndex && i < lastDateIndex + 1
  //                     ? 'this'
  //                     : 'other';

  //   dates[i] = `<div class="date"><span class="${condition}">${date}</span></div>`;
  // })

</script>
	
	<!-- calendar script 끝 -->
	
            </div>
    
       
</body>
</html>