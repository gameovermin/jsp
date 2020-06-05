<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		table{border: 1px dotted gray;
					border-collapse: collapse;
		}
		td{border: 1px dotted gray; width:150px;}
	</style>
</head>
<body>
<h2>글쓰기 정보</h2><hr>
	<jsp:useBean id="m" class = "ch10.Member" scope="page">
	</jsp:useBean>
	<jsp:setProperty property="name" name="m" value="${param.name}"/>
	<jsp:setProperty property="subject" name="m" value="${param.subject}"/>
	<jsp:setProperty property="email" name="m" value="${param.email}"/>
	<jsp:setProperty property="advice" name="m" value="${param.advice}"/>
	<jsp:setProperty property="pwd" name="m" value="${param.pwd}"/>
	<table>
		<tr>
		<td>이름</td>
		<td>${m.name}</td>
		</tr>
		<tr>
		<td>제목</td>
		<td>${m.subject}</td>
		</tr>
		<tr>
		<td>이메일</td>
		<td>${m.email}</td>
		</tr>
		<tr>
		<td>내용</td>
		<td>${m.advice}</td>
		</tr>
		<tr>
		<td>비밀번호</td>
		<td>${m.pwd}</td>
		</tr>
	</table>
</body>
</html>