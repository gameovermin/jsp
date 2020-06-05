<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시판</title>
	<style>
		table{border: 1px dotted gray;
					border-collapse: collapse;
		}
		td{border: 1px dotted gray; width:150px;}
	</style>
</head>
<body>
<h2>글쓰기 정보</h2><hr>
	<jsp:useBean id="m" class = "ch10.Member">
	</jsp:useBean>
	<jsp:setProperty property="*" name="m"/>
	<table>
		<tr>
		<td>이름</td>
		<td><jsp:getProperty property="name" name="m"/></td>
		</tr>
		<tr>
		<td>제목</td>
		<td><jsp:getProperty property="subject" name="m"/></td>
		</tr>
		<tr>
		<td>이메일</td>
		<td><jsp:getProperty property="email" name="m"/></td>
		</tr>
		<tr>
		<td>내용</td>
		<td><jsp:getProperty property="advice" name="m"/></td>
		</tr>
		<tr>
		<td>비밀번호</td>
		<td><jsp:getProperty property="pwd" name="m"/></td>
		</tr>
	</table>
</body>
</html>