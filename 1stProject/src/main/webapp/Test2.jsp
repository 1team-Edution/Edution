<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>help테이블에 값을 받아오기 위한 테스트 페이지</h1>
	<form action="BoardInsert.do" method="post">
		<table>
		
			<tr>
				<td>게시글 제목</td>
				<td>작성자</td>
				<td>파일첨부</td>
				<td>게시글내용</td>
			</tr>

			<tr>
				<td><input type="text" name="brd_title" value="${BoardDTO.brd_title}"></td>
				<td><input type="text" name="user_name" value ="${BoardDTO.user_name}"></td>
				<%-- <td><input type="text" name="file" value ="${BoardDTO.user_name}"></td> --%>
				<td><input type="text" name="brd_content" value="${BoardDTO.brd_content}"></td>
				<td><input type="submit"></td>
			</tr>

		</table>
	</form>
</body>
</html>