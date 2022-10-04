<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>help테이블에 값을 받아오기 위한 테스트 페이지</h1>
	<form action="BoardInsert.do" enctype="multipart/form-data" method="post">
		<table>
		
			<tr>
				<td>게시글 제목</td>
				<td>작성자id</td>
				<td>파일첨부</td>
				<td>게시글내용</td>
			</tr>

			<tr>
				<td><input type="text" name="brd_title" ></td>
				<td><input type="text" name="user_id" ></td>
 				<td><input type="file" name="file"></td>
				<td><input type="text" name="brd_content" ></td>
				<td><input type="checkbox" name="brd_likes" value="1"></td>
				<td><input type="submit"></td>
			</tr>

		</table>
	</form>
</body>
</html>