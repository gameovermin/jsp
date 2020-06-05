<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		table{border: 1px solid gray;
					border-collapse: collapse;
		}
		td{border: 1px solid gray; width:150px;}
	</style>
</head>
<body>
	<h2>학생 정보</h2>
	<hr>
	<jsp:useBean id="m" class = "ch10.Member" scope="page">
	</jsp:useBean>
	<jsp:setProperty property="num" name="m" value="${param.num}"/>
	<jsp:setProperty property="name" name="m" value="${param.name}"/>
	<jsp:setProperty property="grade" name="m" value="${param.grade}"/>
	<jsp:setProperty property="subject" name="m" value="${param.subject}"/>
	<jsp:setProperty property="hobby" name="m" value="${param.hobby}"/>
	<table>
		<tr>
			<td>학번</td>
			<td>${m.num}</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>${m.name}</td>
		</tr>
		<tr>
			<td>학년</td>
			<td>${m.grade}</td>
		</tr>
		<tr>
			<td>선택과목</td>
			<td>${m.subject}</td>
		</tr>
		<tr>
			<td>취미</td>
			<td>${m.hobby}</td>
		</tr>
	</table>
</body>
</html>