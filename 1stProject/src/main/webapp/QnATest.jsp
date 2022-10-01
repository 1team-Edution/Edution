<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	    -webkit-text-size-adjust: 100%;
    --border-color-regular: rgba(0, 0, 0, 0.1);
    --text-color-extra-light: rgba(0,0,0,0.2);
    --text-color-light: rgba(0,0,0,0.4);
    --text-color-medium: rgba(0,0,0,0.6);
    --text-color-dark: rgba(17, 17, 17, 1);
    --text-color-regular: rgba(4, 4, 4, 1);
    --spacing-xs: 20px;
    --spacing-s: 40px;
    --spacing-m: 40px;
    --base-padding: 40px;
    --spacing-l: 80px;
    --spacing-xl: 80px;
    cursor: default;
    color: var(--text-color-dark);
    font-family: inter-var, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, "Apple Color Emoji", Arial, sans-serif, "Segoe UI Emoji", "Segoe UI Symbol";
    font-size: 17px;
    line-height: 1.5;
    box-sizing: border-box;
    display: grid;
    grid-gap: var(--base-padding);
    grid-template-columns: repeat(2, 1fr);
</style>

</head>
<body>

	<!-- Edution 로고 들어갈 자리
	
	
	
	
	 -->


	<div class="jsx-4136052773 grid">
		<article class="jsx-1605174824 copy">
			<div class="jsx-1605174824 h1-wrap">
				<h1
					class="global-title global-title global-title-color-dark global-title-weight-bold global-title-size-xl">Notion
					영업팀에 문의하기</h1>
			</div>
			<h2 class="global-subtitle">Notion을 어떻게 활용할지 함께 고민해드립니다.</h2>
			<div class="global-margin-xs">
				<div class="jsx-2182651440 background">
					<ul class="jsx-1605174824 body-list">
						<li class="jsx-1605174824 body-list-item"><div
								class="jsx-1605174824 check-icon">
								<svg viewBox="0 0 16 16" class="thinCheck"
									style="width: 16px; height: 16px; display: flex; fill: rgba(0, 0, 0, 0.6); flex-shrink: 0;">
								<path fill="currentColor" d="M6.385 14.162c.362 0 .642-.15.84-.444L13.652 3.71c.144-.226.205-.417.205-.602 0-.485-.341-.82-.833-.82-.335 0-.54.123-.746.444l-5.926 9.4-3.042-3.903c-.205-.267-.417-.376-.718-.376-.492 0-.848.348-.848.827 0 .212.075.417.253.629l3.541 4.416c.24.3.492.437.848.437z"></path></svg>
							</div>
							<div class="jsx-1605174824 body-list-item-text">회사 전체의 지식
								공유, 프로젝트 관리, 협업을 하나로 진행할 수 있는 유연한 도구</div></li>
						<li class="jsx-1605174824 body-list-item">
							<div class="jsx-1605174824 check-icon">
								<svg viewBox="0 0 16 16" class="thinCheck"
									style="width: 16px; height: 16px; display: flex; fill: rgba(0, 0, 0, 0.6); flex-shrink: 0;">
								<path fill="currentColor"
										d="M6.385 14.162c.362 0 .642-.15.84-.444L13.652 3.71c.144-.226.205-.417.205-.602 0-.485-.341-.82-.833-.82-.335 0-.54.123-.746.444l-5.926 9.4-3.042-3.903c-.205-.267-.417-.376-.718-.376-.492 0-.848.348-.848.827 0 .212.075.417.253.629l3.541 4.416c.24.3.492.437.848.437z"></path></svg>
							</div>
							<div class="jsx-1605174824 body-list-item-text">사용자 액세스와
								보안을 안전하게 관리할 수 있는 기업 요금제</div>
						</li>
						<li class="jsx-1605174824 body-list-item">
							<div class="jsx-1605174824 check-icon">
								<svg viewBox="0 0 16 16" class="thinCheck"
									style="width: 16px; height: 16px; display: flex; fill: rgba(0, 0, 0, 0.6); flex-shrink: 0;">
								<path fill="currentColor"
										d="M6.385 14.162c.362 0 .642-.15.84-.444L13.652 3.71c.144-.226.205-.417.205-.602 0-.485-.341-.82-.833-.82-.335 0-.54.123-.746.444l-5.926 9.4-3.042-3.903c-.205-.267-.417-.376-.718-.376-.492 0-.848.348-.848.827 0 .212.075.417.253.629l3.541 4.416c.24.3.492.437.848.437z"></path></svg>
							</div>
							<div class="jsx-1605174824 body-list-item-text">가장 적합한 요금제를	구축할 수 있도록 처음부터 함께하는 맞춤 지원</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="jsx-1605174824 support">
				도움이 필요하신가요? <a href="https://www.notion.so/ko-kr/help"
					class="jsx-1785603898 inline-link">도움말과 설명서를 참고하세요.</a>
			</div>
		</article>


		<div class="jsx-4136052773 sales-form-wrap">

			<!-- form 태그 시작 지점 -->
			<form novalidate="" class="jsx-ec2682ece98d48f" action="QnAInsert.do"
				method="post">
				<div class="jsx-3153388610 form-row">
					<label class="jsx-3455048443">
						<div class="jsx-3455048443 label-text">
							이름<span aria-label="필수 항목"
								class="jsx-3455048443 required-asterisk">*</span>
						</div>
						<div
							class="jsx-2655736279 jsx-3868764881 input-wrap input-wrap-medium">
							<input type="text" name="user_name" placeholder="길동" required=""
								class="jsx-2655736279 jsx-3868764881 input"
								value="${QnADTO.user_name}">
						</div>
					</label>
				</div>
				<div class="jsx-2309057825 form-row">
					<label class="jsx-3455048443">
						<div class="jsx-3455048443 label-text">
							아이디<span aria-label="필수 항목"
								class="jsx-3455048443 required-asterisk">*</span>
						</div>
						<div
							class="jsx-2655736279 jsx-3868764881 input-wrap input-wrap-medium">
							<input type="text" name="user_id" placeholder="가나다 주식회사"
								required="" class="jsx-2655736279 jsx-3868764881 input"
								value="${QnADTO.user_id}">
						</div>
					</label>
				</div>
				<div class="jsx-2309057825 form-row">
					<label class="jsx-3455048443">
						<div class="jsx-3455048443 label-text">
							문의내용<span aria-label="필수 항목"
								class="jsx-3455048443 required-asterisk">*</span>
						</div>
						<div
							class="jsx-2655736279 jsx-3868764881 input-wrap input-wrap-medium">
							<input type="text" name="help_content" placeholder="가나다 주식회사"
								required="" class="jsx-2655736279 jsx-3868764881 input"
								value="${QnADTO.help_content}">
						</div>
					</label>
				</div>

				<div class="jsx-2309057825 form-row">
					<div class="jsx-448f407d1ced1fc8 submit-wrap">
						<input type="submit" value="제출하기">

					</div>
				</div>
			</form>
			<!-- form 태그 끝나는 지점 -->

		</div>


	</div>

	

</body>
</html>