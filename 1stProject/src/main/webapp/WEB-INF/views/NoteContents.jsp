<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
</head>
<body>

	

	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h2>게시글 상세보기</h2>
			</div>
			<div class="panel-body">
				<form action="NoteUpdate.do" method="post">
					<input type="hidden" name="note_seq" value="${tbl_note.note_seq}">
					<div class="form-group">

						<label>제목:</label> ${note.note_title}
							

					</div>

					<div class="form-group">

						<label>작성자:</label> 
						${note.user_id}
							

					</div>

			
					<div class="form-group">

						<label>내용:</label>
						${note.note_content}
					</div>

					<button type="submit" class="btn btn-primary btn-sm">수정하기</button>

				</form>
			</div>

			

		</div>
	</div>
</body>
</html>