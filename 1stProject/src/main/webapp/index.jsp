<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Edution</title>
</head>

<body>
<%	com.smhrd.model.UserDTO userDto = (com.smhrd.model.UserDTO)session.getAttribute("userDto");%>
<%	if(userDto==null){%>
<jsp:forward page="indexView.do"></jsp:forward>
<%}else{%>
<jsp:forward page="Main.do"></jsp:forward>
<%}%>
</body>
</html>