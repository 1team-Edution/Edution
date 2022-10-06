<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="./resources/js/summernote/summernote-lite.js"></script>
<script src="./resources/js/summernote/lang/summernote-ko-KR.js"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">

</head>
<body>

<form action="NoteUpdate.do" method="post">
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h2>게시글 상세보기</h2>
			</div>
			
			<div class="panel-body">
			<div class="form-group"><h1><input type="text" value="${note.note_title}"name="note_title"></h1></div>
					<input type="hidden" name="note_seq" value="${note.note_seq}">

					<div class="form-group">

						<input type="hidden" value="${note.user_id}"
							class="form-control" name="user_id">
					</div>
					<div class="form-group">

						<input type="text" disabled="true" value="${note.note_date}"
							class="form-control" name="note_date">
					</div>
					<div class="form-group">

				<textarea class="summernote2" name = "note_content" id = "note_content">${note.note_content}</textarea>
					</div>

					<button type="submit" class="btn btn-primary btn-sm" style = "float : right;">수정하기</button>
			</div>

		</div>
	</div>
				</form>
	<script src="./resources/js/app.js"></script>
                <script>
                $('.summernote2').summernote({
                dialogsInBody: true,
          		  height: 300,                 // 에디터 높이
          		  minHeight: null,             // 최소 높이
          		  maxHeight: null,  // 최대 높이
          		  lang: "ko-KR",
          		  toolbar: [
          			    // [groupName, [list of button]]
          			    ['fontname', ['fontname']],
          			    ['fontsize', ['fontsize']],
          			    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
          			    ['color', ['forecolor','color']],
          			    ['table', ['table']],
          			    ['para', ['ul', 'ol', 'paragraph']],
          			    ['height', ['height']],
          			    ['insert',['picture','link','video']],
          			    ['view', ['fullscreen', 'help']]
          			  ],
          			fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
          			fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
          		
                    
          	});
          $('.note-statusbar').hide();
                </script>
</body>
</html>