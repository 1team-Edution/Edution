<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style>
.primary.jsx-2971364727 {
	color: #FFFFFF;
	background: linear-gradient(180deg, rgba(255, 255, 255, 0.04) 0%,
		rgba(255, 255, 255, 0) 100%), #e16259;
	box-shadow: 0px 4px 9px rgb(0 0 0/ 5%), 0px 1.54074px 2.86667px
		rgb(0 0 0/ 7%), 0px 0.325926px 0.733333px rgb(0 0 0/ 12%);
}

.button-size-m.jsx-2971364727 {
	padding: 0.4375rem 0.8125rem;
	font-size: 0.84375rem;
	line-height: 1.1875rem;
	letter-spacing: [object Object];
	font-weight: 619;
	width: 100px;
	border-radius: 5px;
	display: inline-flex;
	float: right;
}

.search {
	position: relative;
	width: 300px;
}

input {
	width: 100%;
	border: 1px solid rgba(55, 53, 47, 0.16);
	border-radius: 8px;
	padding: 10px 12px;
	font-size: 14px;
}

#modal.modal-overlay {
	width: 100%;
	height: 100%;
	position: absolute;
	margin-left: 10px;
	left: 0;
	top: 0;
	display: none;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	background: rgba(255, 255, 255, 0.3);
	box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
	backdrop-filter: blur(8px);
	-webkit-backdrop-filter: blur(8px);
	border-radius: 10px;
	border: 1px solid rgba(255, 255, 255, 0.18);
}

#modal .modal-window {
	backdrop-filter: blur(13.5px);
	-webkit-backdrop-filter: blur(13.5px);
	border-radius: 10px;
	border: 1px solid rgba(255, 255, 255, 0.18);
	position: relative;
	top: -100px;
	padding: 10px;
}


    .page{

        align-items: center;

    }

    .pagination{
        list-style: none;
        display: inline-block;
        padding: 0;
        margin-top: 20px;
    }

    .pagination li{
        display: inline;
        text-align: center;
    }

    /* 숫자들의 디자인 */
    .pagination a{
        float: left;
        display: block;
        font-size: 14px;
        text-decoration: none;
        padding: 5px 12px;
        color: rgba(0, 0, 0, 0.6);
        line-height: 1.5;
    }


    .pargination a:active{
        outline: none;
    }

    .modal .num{
        margin-left: 3px;
        padding: 0;
        width: 30px;
        height: 30px;
        line-height: 30px;
        border-radius: 10px;
    }

    .modal .num:hover{
        background-color: rgb(225, 98, 89, 0.6);
        color: #FFFFFF;
    }

    .modal .num.active, .modal .num:active{
        background-color: #e16259;
        color: #FFFFFF;
        cursor: pointer;
    }





</style>





</head>
<body>

	<div
		style="display: flex; justify-content: space-between; align-items: center; overflow: hidden; height: 45px; padding-left: 12px; padding-right: 10px;">
		<div
			style="display: flex; align-items: center; line-height: 1.2; font-size: 14px; height: 100%; flex-grow: 0; margin-right: 8px; min-width: 0px;">
			<div role="button" tabindex="0"
				style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; flex-shrink: 1; white-space: nowrap; height: 24px; border-radius: 3px; font-size: 14px; line-height: 1.2; min-width: 0px; padding-left: 6px; padding-right: 6px; color: rgb(55, 53, 47);">
				<div
					style="display: flex; align-items: center; justify-content: center; height: 20px; width: 20px; border-radius: 0.25em; flex-shrink: 0; margin-right: 6px;">

					<div>
						<div style="width: 100%; height: 100%;">
							<img src="img/Edution2.png" referrerpolicy="same-origin"
								style="display: block; object-fit: cover; border-radius: 3px; width: 20px; height: 20px; transition: opacity 100ms ease-out 0s;">
						</div>
					</div>
				</div>
				<div class="notranslate"
					style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 240px;">Edution
					Community</div>
			</div>
		</div>
		<div style="flex-grow: 1; flex-shrink: 1;"></div>
		<div class="search" role="button" tabindex="0"
			style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; flex-shrink: 0; white-space: nowrap; height: 28px; border-radius: 3px; font-size: 14px; line-height: 1.2; min-width: 0px; padding-left: 8px; padding-right: 8px; color: rgb(55, 53, 47);">
			<svg viewBox="0 0 17 17" class="searchNew"
				style="width: 14px; height: 14px; display: block; fill: inherit; flex-shrink: 0; backface-visibility: hidden; margin-right: 6px;">
    <path
					d="M6.78027 13.6729C8.24805 13.6729 9.60156 13.1982 10.709 12.4072L14.875 16.5732C15.0684 16.7666 15.3232 16.8633 15.5957 16.8633C16.167 16.8633 16.5713 16.4238 16.5713 15.8613C16.5713 15.5977 16.4834 15.3516 16.29 15.1582L12.1504 11.0098C13.0205 9.86719 13.5391 8.45215 13.5391 6.91406C13.5391 3.19629 10.498 0.155273 6.78027 0.155273C3.0625 0.155273 0.0214844 3.19629 0.0214844 6.91406C0.0214844 10.6318 3.0625 13.6729 6.78027 13.6729ZM6.78027 12.2139C3.87988 12.2139 1.48047 9.81445 1.48047 6.91406C1.48047 4.01367 3.87988 1.61426 6.78027 1.61426C9.68066 1.61426 12.0801 4.01367 12.0801 6.91406C12.0801 9.81445 9.68066 12.2139 6.78027 12.2139Z"></path></svg>
			<input type="search" placeholder="검색어 입력">
		</div>

		<div role="button" tabindex="0"
			style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: flex; align-items: center; justify-content: center; width: 32px; height: 28px; border-radius: 3px;">
		</div>
		<div
			style="flex: 0 0 auto; width: 1px; height: 16px; margin-left: 8px; margin-right: 8px; background: rgba(55, 53, 47, 0.16);"></div>
		<div role="button" tabindex="0" href="GoMain.do" style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; display: inline-flex; align-items: center; flex-shrink: 0; white-space: nowrap; height: 28px; border-radius: 3px; font-size: 14px; line-height: 1.2; min-width: 0px; padding-left: 8px; padding-right: 8px; color: rgb(55, 53, 47);">

			<img src="img/Edution2.png" style="width: 20px; height: 20px;">
			Edution으로 돌아가기
		</div>
	</div>


	<img src="img/korean-cover.png" referrerpolicy="same-origin"
		style="display: block; object-fit: cover; border-radius: 0px; width: 100%; height: 30vh; opacity: 1; object-position: center 50%;">
	<div
		style="width: 100%; display: flex; justify-content: center; z-index: 3; flex-shrink: 0;">
		<div style="max-width: 100%; min-width: 0px; width: 900px;">
			<div
				style="width: 100%; display: flex; flex-direction: column; align-items: center; flex-shrink: 0; flex-grow: 0;">
				<div
					style="max-width: 100%; padding-left: calc(96px + env(safe-area-inset-left)); width: 100%;">
					<div contenteditable="false" class="pseudoSelection"
						data-content-editable-void="true"
						style="user-select: none; - -pseudoSelection--background: transparent; pointer-events: none;">
						<div class="notion-record-icon notranslate"
							style="display: flex; align-items: center; justify-content: center; height: 140px; width: 140px; border-radius: 0.25em; flex-shrink: 0; position: relative; z-index: 1; margin-left: 3px; margin-bottom: 0px; margin-top: -80px; pointer-events: auto;">
							<div>
								<img src="img/Edution2.png"
									style="display: block; object-fit: cover; border-radius: 3px; width: 124.32px; height: 124.32px;">
							</div>
						</div>
					</div>
					<div
						style="padding-right: calc(96px + env(safe-area-inset-right));">
						<div>
							<div data-block-id="61220f50-7782-4ae6-8164-4cdd012006e9"
								class="notion-selectable notion-page-block"
								style="color: rgb(55, 53, 47); font-weight: 700; line-height: 1.2; font-size: 32px; font-family: ui-sans-serif, -apple-system, BlinkMacSystemFont,&amp; quot; Segoe UI&amp;quot; , Helvetica , &amp;quot; Apple Color Emoji&amp;quot; , Arial , sans-serif, &amp;quot; Segoe UI Emoji&amp;quot; , &amp; quot; Segoe UI Symbol&amp;quot;; cursor: text; display: flex; align-items: center;">
							
									<span style="text-decoration: none; color: inherit" data-token-index="0" class="notion-enable-hover"><a href="indexView.do">Edution으로 돌아가기</a></span>

							</div>

						</div>
					</div>
				</div>
				<!-- 게시글 등록하기 버튼 부분 -->
					<div style="max-width: 100%; white-space: pre-wrap; word-break: break-word; caret-color: rgb(55, 53, 47); padding: 3px 2px; min-height: 1em; color: rgb(55, 53, 47); -webkit-text-fill-color: rgba(55, 53, 47, 0.5);"></div>
					<a href="GoBoardInsert.do?" role="button" style="padding-left: 412.5px; padding-right: 412.5px; min-width: 708px;">
						<div class="jsx-2971364727 button primary button-size-m">게시글 등록하기</div>
					</a>
					
				<div spellcheck="true" placeholder=" " data-content-editable-leaf="true" contenteditable="false" style="max-width: 100%; width: 100%; white-space: pre-wrap; word-break: break-word; caret-color: rgb(55, 53, 47); padding: 3px 2px; min-height: 1em; color: rgb(55, 53, 47); -webkit-text-fill-color: rgba(55, 53, 47, 0.5);">
					
				</div>

				
				<!-- 여기서부터 게시글 시작하는 부분 -->
				<div style="padding-bottom: 0px; padding-left: 412.5px; padding-right: 412.5px; min-width: 708px;">
					<div style="width: 100%; max-width: 1191px; margin-top: 1.4em; margin-bottom: 1px;"></div>

					<div id="boardShow" style="display: grid; position: relative; grid-template-columns: repeat(auto-fill, minmax(180px, 1fr)); gap: 16px; padding-top: 16px; padding-bottom: 4px;">
						


						<!-- 게시글 여기서부터 복사하기 -->


						
						<!-- 여기까지 복사하기-->


					</div>
				</div>
				<!-- 게시글 복붙은 여기 /div 닫는 태그 안으로 넣기! -->
				
				
            <div class="page">
                <ul class="pagination modal">

                    <li><a href="#" class="active num">1</a></li>

    			</ul>
            </div>
				
				



				<!-- 게시글 자세히보기 부분 -->
		
				  <div id="modal" class="modal-overlay" style="z-index: 1; position: absolute; border-radius: 3px; margin-left: auto; margin-right: auto; padding-top: 140px;">
					<div class="close-area"></div>
					<div class="modal-window">
						<div style="padding-left: 40px; color: rgb(55, 53, 47); font-weight: 700; line-height: 1.2; font-size: 40px; font-family: ui-sans-serif, -apple-system, BlinkMacSystemFont,&amp; quot; Segoe UI&amp;quot; , Helvetica , &amp;quot; Apple Color Emoji&amp;quot; , Arial , sans-serif, &amp;quot; Segoe UI Emoji&amp;quot; , &amp; quot; Segoe UI Symbol&amp;quot;; cursor: text; display: flex; align-items: center;">
							<div id="brd_title" style="max-width: 100%; width: 100%; white-space: pre-wrap; word-break: break-word; caret-color: rgb(55, 53, 47);">교육자를 위한 원격 교육 대응 전략 웨비나</div>
						</div>


						<div style="display: flex; font-size: 14px; color: rgba(55, 53, 47, 0.65); margin-top: 50px;">
							<div style="margin-right: 8px;">
								<svg viewBox="0 0 14 14" style="width: 16px; height: 16px; display: block; fill: rgba(55, 53, 47, 0.45);">
                <path d="M10.8889,5.5 L3.11111,5.5 L3.11111,7.05556 L10.8889,7.05556 L10.8889,5.5 Z M12.4444,1.05556 L11.6667,1.05556 L11.6667,0 L10.1111,0 L10.1111,1.05556 L3.88889,1.05556 L3.88889,0 L2.33333,0 L2.33333,1.05556 L1.55556,1.05556 C0.692222,1.05556 0.00777777,1.75556 0.00777777,2.61111 L0,12.5 C0,13.3556 0.692222,14 1.55556,14 L12.4444,14 C13.3,14 14,13.3556 14,12.5 L14,2.61111 C14,1.75556 13.3,1.05556 12.4444,1.05556 Z M12.4444,12.5 L1.55556,12.5 L1.55556,3.94444 L12.4444,3.94444 L12.4444,12.5 Z M8.55556,8.61111 L3.11111,8.61111 L3.11111,10.1667 L8.55556,10.1667 L8.55556,8.61111 Z"></path></svg>
							</div>
							<span style="width: 150px;">Date</span> <span id="brd_date" style="color: black;">게시글 날짜 넣어주세요</span>
						</div>

						<div
							style="display: flex; font-size: 14px; color: rgba(55, 53, 47, 0.65); margin-top: 15px;">
							<div style="margin-right: 8px;">
								<svg viewBox="0 0 14 14"
									style="width: 16px; height: 16px; display: block; fill: rgba(55, 53, 47, 0.45); flex-shrink: 0; backface-visibility: hidden;">
            <path d="M13.125,10.0354 C12.5536,9.48588 10.801,8.53125 9.625,7.875 L9.625,7.04112 C9.849,6.71912 10.045,6.37 10.1911,5.98588 C10.5849,5.7435 10.9375,5.28412 10.9375,4.8125 C10.9375,4.35488 10.9323,3.94275 10.4668,3.605 C10.3049,1.5575 9.436,0 7,0 C4.564,0 3.69513,1.5575 3.53325,3.605 C3.06775,3.94275 3.0625,4.35488 3.0625,4.8125 C3.0625,5.28412 3.41513,5.7435 3.80888,5.98588 C3.955,6.37 4.151,6.71912 4.375,7.04112 L4.375,7.875 C3.199,8.53125 1.44638,9.48588 0.875,10.0354 C0.1645,10.7188 0,11.8125 0,14 L14,14 C14,11.8125 13.8364,10.7188 13.125,10.0354 Z"></path></svg>
							</div>
							<span style="width: 150px;">User</span> <span id="user_name" style="color: black;">게시글 작성자 아이디 또는 닉네임 넣어주세요</span>
						</div>

						<div style="display: flex; font-size: 14px; color: rgba(55, 53, 47, 0.65); margin-top: 15px;">
							<div style="margin-right: 8px;">
								<svg viewBox="0 0 28 28" style="width: 16px; height: 16px; display: block; fill: rgba(55, 53, 47, 0.45); flex-shrink: 0; backface-visibility: hidden;">
                    <path d="M14 26c-0.25 0-0.5-0.094-0.688-0.281l-9.75-9.406c-0.125-0.109-3.563-3.25-3.563-7 0-4.578 2.797-7.313 7.469-7.313 2.734 0 5.297 2.156 6.531 3.375 1.234-1.219 3.797-3.375 6.531-3.375 4.672 0 7.469 2.734 7.469 7.313 0 3.75-3.437 6.891-3.578 7.031l-9.734 9.375c-0.187 0.187-0.438 0.281-0.688 0.281z"></path>
                </svg>
							</div>
							<span style="width: 150px;">Likes</span> <span id="brd_likes" style="color: black;">게시글 좋아요 개수를 넣어주세요</span>
						</div>

						게시글 파일
						<div id="file_content" style="line-height: 2; margin-bottom: 80px; caret-color: rgb(55, 53, 47); padding-top: 50px;">
							<img id="brd_file" src="" style="display: block; object-fit: cover; border-radius: 1px; pointer-events: auto; width: 100%; height: 500px;">
							<div id="brd_content" style="white-space: pre-wrap; word-break: break-word; caret-color: rgb(55, 53, 47); padding-bottom: 30px;">안녕하세요. 게시글 내용을 출력해주세요.</div>
						</div>
					</div>
				</div> 
				 
<script>
let boardShow = document.getElementById('boardShow');
let modalShow = document.getElementById('modalShow');
let resultHTML = []; // 게시글 리스트 html 태그
let date = []; // 시분초를 제외한 날짜 배열
let json = []; // DB에서 가져온 json을 배열로 변환


// 모달창 상세페이지 관련 id
let brd_title = document.getElementById('brd_title');
let brd_date = document.getElementById('brd_date');
let user_name = document.getElementById('user_name');
let file_content = document.getElementById('file_content');
let brd_likes = document.getElementById('brd_likes');

// 페이징




function modalOn(index) {
	//modal.style.display === "flex"
	$('.modal-overlay').css('display','flex');
	brd_title.innerText = json[index].brd_title;
	brd_date.innerText = date[index][0];
	user_name.innerText = json[index].user_name;
	brd_likes.innerText = `${json[index].brd_likes}명의 유저가 이 글을 좋아합니다.`;
	file_content.innerHTML = `
		<img src="resources/test/${json[index].brd_file}" style="display: block; object-fit: cover; border-radius: 1px; pointer-events: auto; width: 100%; height: 500px;">
		<div id="brd_content" style="white-space: pre-wrap; word-break: break-word; caret-color: rgb(55, 53, 47); padding-bottom: 30px;">${json[index].brd_content}</div>
	`;
	
}

function modalOff() {
    //modal.style.display = "none"
	$('.modal-overlay').css('display','none');
}
window.addEventListener("keyup", e => {
    if(e.key === "Escape") {
    	$('.modal-overlay').css('display','none');
    }
}) 




$(document).ready(function() {
	$.ajax({
		url : "BoardGetJson.do",
		type : "post",
		data : {
			
		},
	
		dataType : "JSON",
		success : function(res) {
			// DB에서 가져온 게시물 데이터 배열에 저장
			json = res;
			
			
			
			console.log(res);
			// 게시글 조회 반복문
			for (var i = 0; i < res.length; i++) {
			
				//날짜에서 시분초를 제외한 값 배열에 저장
				date.push(res[i].brd_date.split(' '));
				

				//${btnModal[i]}
				
				resultHTML += `
					<div role="button" class="modalTest">
					<a role="button" onclick="modalOn(${i})" style="display: block; color: inherit; text-decoration: none; box-shadow: rgba(15, 15, 15, 0.1) 0px 0px 0px 1px, rgba(15, 15, 15, 0.1) 0px 2px 4px; border-radius: 3px; background: white; overflow: hidden; transition: background 100ms ease-out 0s; position: static; height: 100%;">
						<div class="btn-modal" tabindex="0"
							style="user-select: none; transition: background 20ms ease-in 0s; cursor: pointer; width: 100%; height: 100%; display: flex; flex-direction: column;">
							<div style="position: relative; width: 100%;">
								<div id="btn-modal" style="width: 100%; cursor: inherit;">
									<div style="height: 114.188px; position: relative; pointer-events: none; overflow: hidden;">
										<div style="width: 100%; height: 100%;">
											<img src="resources/test/${res[i].brd_file}" referrerpolicy="same-origin"
												style="display: block; object-fit: cover; border-radius: 1px 1px 0px 0px; width: 100%; height: 114.188px; object-position: center 50%;">
										</div>
										<div
											style="position: absolute; left: 0px; right: 0px; bottom: 0px; border-bottom: 1px solid rgba(55, 53, 47, 0.09);"></div>
									</div>
								</div>
							</div>

							<div
								style="width: 100%; display: flex; padding: 8px 10px 6px; position: relative;">
								<div spellcheck="true" placeholder="제목 없음"
									data-content-editable-leaf="true" contenteditable="false"
									style="word-break: break-all; max-width: 100%; width: auto; white-space: pre-wrap; caret-color: rgb(55, 53, 47); font-size: 14px; line-height: 1.5; min-height: 21px; font-weight: 500; pointer-events: none;">${res[i].brd_title}</div>
							</div>
							<div
								style="padding-top: 0px; padding-bottom: 10px; padding-left: 6px;">
								<div
									style="padding-right: 10px; font-size: 12px; display: flex; align-items: stretch; padding-bottom: 2px; height: 24px; white-space: nowrap;">
									<div role="button" aria-disabled="true" tabindex="-1"
										style="user-select: none; transition: background 20ms ease-in 0s; display: flex; align-items: center; border-radius: 5px; padding-top: 0px; padding-left: 4px;">
										<div style="line-height: 1.2; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; margin-top: 0px; margin-right: 4px; pointer-events: all;">${date[i][0]}</div>
										<div
											style="display: flex; position: absolute; right: 6px; top: -1px;"></div>
									</div>
								</div>
							</div>
						</div>
					</a>
				</div>
				`;
				//조회한 게시글 태그 끝나는 부분
				
				
				
				
			}// for문 끝나는 지점
			
			boardShow.innerHTML = resultHTML;
			
			//////////////////// pagination//////////////////////////////////
			const rowsPerPage = 15;
			const rows = document.querySelectorAll('#boardShow .modalTest');
			const rowsCount = rows.length; // 40/8 --> 5페이지 
			const pageCount = Math.ceil(rowsCount/rowsPerPage); 
			let numbers = document.querySelector('.pagination');
			console.log(rows);
			
			// 데이터 값에 따라 페이지 번호 출력


			for(let i = 2; i<=pageCount; i++) {
                
			    numbers.innerHTML += `<li><a href="#" class="num">${i}</a></li>`;
			}




			const numberBtn = numbers.querySelectorAll('a');
			console.log(numberBtn);
			
			// a태그 클릭시 displayRow함수를 호출
			numberBtn.forEach((item, idx)=>{
			    item.addEventListener('click', (e)=>{
			        e.preventDefault();
			       

			        // 데이터를 출력 함수

			        console.log(idx);
			        displayRow(idx);

			    });
			});
			
			// 페이지 번호를 매개변수로 받아서 클릭시 나타낼 데이터 설정
			function displayRow(idx) {
			   

			    let start = idx * rowsPerPage;
			    let end = start + rowsPerPage;
			 

			    let rowsArray = Array.from(rows);
			    
			    for(ra of rowsArray) {
			        ra.style.display = 'none';
			        
			    }

			    let newRows = rowsArray.slice(start,end);
			    for(nr of newRows) {
			        nr.style.display = '';
			    }
			    for(nb of numberBtn) {
			        nb.classList.remove('active');
			    }
			    numberBtn[idx].classList.add('active');
			}// displayRow

			displayRow(0); // 페이지 로딩시 첫 페이지를 보여주기
			
			
			
			
			
			////////////// success 끝나는 지점 /////////////////////////////////	
		}, 
		
		error : function(e) {
			console.log(e);
		}

	});

});
///////////////// ajax 끝나는 지점 //////////////////////////////	




		
		

    </script>
    
</body>
</html>












