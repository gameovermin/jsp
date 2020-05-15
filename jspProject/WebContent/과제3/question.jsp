<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	jsp 포워딩 연습<br>
	<jsp:forward page="question2.jsp"/>
	텍스트 들은 안보임
	제어권 question2로 이동
</body>
</html>