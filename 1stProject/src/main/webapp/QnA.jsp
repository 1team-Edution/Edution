<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="QnAInsert.do" method="post">
		<table>
			<tr>
				<td>���̵�</td>
				<td>�ۼ���</td>
				<td>���ǳ���</td>
			</tr>

			<tr>
				<td><input type="text" id="user_id" value="${QnADTO.user_id}"></td>
				<td><input type="text" id="user_name"${QnADTO.user_name}></td>
				<td><input type="text" id="help_content" value="${QnADTO.help_content}"></td>
				<input type="submit">

			</tr>

		</table>
	</form>
</body>
</html>