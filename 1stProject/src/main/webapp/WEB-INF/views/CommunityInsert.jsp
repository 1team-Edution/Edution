<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edution Community</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <style>
     .primary.jsx-2971364727 {
    color: #FFFFFF;
    background: linear-gradient( 180deg, rgba(255, 255, 255, 0.04) 0%, rgba(255, 255, 255, 0) 100% ), #e16259;
    box-shadow: 0px 4px 9px rgb(0 0 0 / 5%), 0px 1.54074px 2.86667px rgb(0 0 0 / 7%), 0px 0.325926px 0.733333px rgb(0 0 0 / 12%);}

    .button-size-m.jsx-2971364727 {
    padding: 0.4375rem 0.8125rem;
    font-size: 0.84375rem;
    line-height: 1.1875rem;
    letter-spacing: [object Object];
    font-weight: 619;
    width: 130px;
    border-radius: 5px;
    display: inline-flex;
    float: right;
    border:none;
    
}

    </style>




</head>

<body style="display:flex; flex-direction: column; position: absolute; margin-left: auto; max-width: 970px;  background: white; top: 72px; left: 72px; right: 72px; margin-right: auto; height: calc(100% - 144px);">
    

    <img src="img/korean-cover.png" referrerpolicy="same-origin" style="display: block; object-fit: cover; border-radius: 0px; width: 100%; height: 30vh; opacity: 1; object-position: center 50%;">
    <div style="width: 100%; display: flex; justify-content: center; z-index: 3; flex-shrink: 0;">
        <div style="max-width: 100%; min-width: 0px; width: 900px;">
    <div style="width: 100%; display: flex; flex-direction: column; align-items: center; flex-shrink: 0; flex-grow: 0;">
    <div style="max-width: 100%; padding-left: calc(96px + env(safe-area-inset-left)); width: 100%;">
    <div contenteditable="false" class="pseudoSelection" data-content-editable-void="true" style="user-select: none; --pseudoSelection--background:transparent; pointer-events: none;">
    <div class="notion-record-icon notranslate" style="display: flex; align-items: center; justify-content: center; height: 140px; width: 140px; border-radius: 0.25em; flex-shrink: 0; position: relative; z-index: 1; margin-left: 3px; margin-bottom: 0px; margin-top: -80px; pointer-events: auto;">
    <div>
    <div style="width: 100%; height: 100%;">
    <img src="img/Edution2.png" referrerpolicy="same-origin" style="display: block; object-fit: cover; border-radius: 3px; width: 124.32px; height: 124.32px; transition: opacity 100ms ease-out 0s;"></div></div></div>
    </div>
   
        </div></div></div></div>
       
        
        <!-- 여기부터 form 태그 -->
        <form action="BoardInsert.do" enctype="multipart/form-data" method="post">

            <div style="padding-top:50px; color: rgb(55, 53, 47); font-weight: 700; line-height: 1.2; font-size: 40px; font-family: ui-sans-serif, -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, 'Apple Color Emoji', Arial, sans-serif, 'Segoe UI Emoji', 'Segoe UI Symbol'; cursor: text; display: flex; align-items: center;">
            <input name="brd_title"spellcheck="true" placeholder="게시글 제목"  style="border: none; max-width: 100%; width: 100%; white-space: pre-wrap; word-break: break-word; caret-color: rgb(55, 53, 47); padding: 3px 2px;"></div></div>

                <div class="mb-3" style="padding-top: 25px;">
                <label for="exampleFormControlInput1" class="form-label">작성자 ID</label>
                <input name="user_id" class="form-control" id="exampleFormControlInput1">
              </div>
              <div class="mb-3">
                <label for="formFile" class="form-label">나의 템플릿/사진</label>
                <input name="file" class="form-control" type="file" id="formFile">
              </div>
              <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="form-label">게시글 내용</label>
                <textarea name="brd_content" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
              </div>
            </div>
                            
            <input type="submit" class="jsx-2971364727 button primary button-size-m" style="margin-bottom:14px;" value="게시글 등록하기">
         
            </form>      
           <!-- 여기까지 form 태그 -->


    
