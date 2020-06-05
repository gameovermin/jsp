<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>글쓰기</title>
		<style>
		table{border: 1px dotted gray;
					border-collapse: collapse;
		}
		td{border: 1px dotted gray; width:150px;}
	</style>
</head>
<body>
<h2>글쓰기</h2><br>
<form action ="WrittingPro.jsp" method="post">
	<table>
		<tr>
		<td align="right" colspan="2">글목록</td>
		</tr>
		<tr>
		<td>이름</td>
		<td><input type="text" name="name"></td>
		</tr>
		<tr>
		<td>제목</td>
		<td><input type="text" name="subject"></td>
		</tr>
		<tr>
		<td>이메일</td>
		<td><input type="text" name="email"></td>
		</tr>
		<tr>
		<td>내용</td>
		<td><textarea name="advice" cols="50" rows="10"></textarea></td>
		</tr>
		<tr>
		<td>비밀번호</td>
		<td><input type="password" name="pwd"></td>
		</tr>
		<tr>
		<td colspan="2"> 
		<input type="submit" value="글쓰기">
		<input type="reset" value="다시작성">
		<input type="button" value="목록보기">
		</td>
		</tr>
	</table>
</form>
	
</body>
</html>