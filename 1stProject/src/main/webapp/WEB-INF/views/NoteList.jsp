<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- Latest compiled JavaScript -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="./resources/js/summernote/summernote-lite.js"></script>
<script src="./resources/js/summernote/lang/summernote-ko-KR.js"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">

<title>Insert title here</title>

</head>
<body>
<style>
.container {
  display: inline-block;
  cursor: pointer;
  align-items: center;
  justify-content: center;
}

.bar1, .bar2, .bar3 {
  width: 30px;
  height: 2px;
  background-color: #333;
  margin: 8px 0;
  transition: 0.4s;
  align-items: center;
  justify-content: center;
}

/* Rotate first bar */
.change .bar1 {
  transform: translate(0, 11px) rotate(-45deg);
}

/* Fade out the second bar */
.change .bar2 {opacity: 0;}

/* Rotate last bar */
.change .bar3 {
  transform: translate(0, -11px) rotate(45deg);
}
</style>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header"  style="display: flex">
    <div class="container"  onclick="myFunction(this)" style= "width: 85px">
  <div class="bar1"></div>
  <div class="bar2"></div>
  <div class="bar3"></div>
</div>
      
    <a class="navbar-brand" href="#">WebSiteName</a>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Page 1</a></li>
      <li><a href="#">Page 2</a></li>
      <li><a href="#">Page 3</a></li>
    </ul>
  </div>
    </div>
</nav>

<div class="panel-body">
				<table class="table table-striped table-hover">
					<tr>
						<th>제목</th>
						<th>작성자</th>
						<th colspan=2>작성일</th>

					</tr>

					<!-- el표현식을 활용하면 scope영역에 객체바인딩 된 데이터를 바로 꺼내올 수 있다. -->
					<c:forEach var="note" items="${list}">
						<tr>
							<td><a href="NoteSelectOne.do?note_seq=${note.note_seq}">${note.note_title}</a></td>
							<td>${note.user_id}</td>
							<td>${note.note_date}</td>
							<td><button
									onclick="location.href='NoteDelete.do?note_seq=${note.note_seq}'">삭제</button></td>
						</tr>
					</c:forEach>

					<tr align="right">
						<td colspan=4>
							<button onclick="location.href = 'NoteGoInsert.do'"
								class="btn btn-primary btn-sm">글쓰기</button>
						</td>
					</tr>
				</table>
			</div>
	
	
	




</body>
</html>