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
	<form action="QnAInsert.do" method="post">
		<table>
		
			<tr>
				<td>아이디</td>
				<td>작성자</td>
				<td>문의내용</td>
			</tr>

			<tr>
				<td><input type="text" name="user_id" value="${QnADTO.user_id}"></td>
				<td><input type="text" name="user_name" value ="${QnADTO.user_name}"></td>
				<td><input type="text" name="help_content" value="${QnADTO.help_content}"></td>
				<td><input type="submit"></td>
			</tr>

		</table>
	</form>
</body>
</html>