<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Board테이블에 값을 받아오기 위한 테스트 페이지</h1>
	<<table class="table" border="1px">
					<thead>
						<tr>
							<th>게시글</th>
							<th>작성자</th>
							<th>작성일자</th>
						</tr>
					</thead>
					<tbody>
						<!-- el 표현식을 활용하면 scope 영역에 객체바인딩 된 데이터를 바로 꺼내올 수 있다. -->
						<c:forEach var="board" items="${list}">
						
							<tr>
							
								<td>${board.brd_title}</a></td>
								<td>${board.user_name}</td>
								<td>${board.brd_date}</td>
								<%-- <td><button onclick="location.href='Delete.do?boardnum=${board.board_num}'">삭제</button></td> --%>
							</tr>
						</c:forEach>
						<tr align="right">
							<td colspan="3">
							<!-- onclick 버튼을 눌렀을 때 이동할 페이지 지정 -->
								<button onclick="location.href='GoInsert.do'" class="btn btn-primary btn-sm">글쓰기</button>
							</td>
						</tr>
					</tbody>
				</table>
</body>
</html>