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
	문의 사항
	<hr>
	<%=request.getParameter("que") %>
	<hr>
	문의사항 감사드립니다.
</body>
</html>