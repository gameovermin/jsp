<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Card</title>
</head>
	<style>
		table{border: 1px dashed gray;
					border-collapse: collapse;
					width:500px;
		}
		td{border: 1px dashed gray;}
		}
	</style>
<body>
	<h2>개인면담 카드</h2>
	<hr>
	<form action="check.jsp" method="post">
	<table>
		<tr>
			<td align="center" bgcolor="violet" >
			<font color="white">
				소속
			</font>
			</td>
			<td>
			<input type="text" name="Division" size="30">
			</td>
		</tr>
		<tr>
			<td align="center" bgcolor="violet" >
			<font color="white">
			 성명
			</font>
			</td>
			<td>
			<input type="text" name="Name" size="30">
			</td>
		</tr>
		<tr>
			<td align="center" bgcolor="violet" >
			<font color="white">
				현 주소
			</font>
			</td>
			<td>
			<input type="text" name="Address" size="30">
			</td>
		</tr>
			<tr>
			<td align="center" bgcolor="violet" >
			<font color="white">
				입사년월일
			</font>
			</td>
			<td>
			<input type="text" name="Joindays" size="30">
			</td>
		</tr>
		<tr>
			<td align="center" bgcolor="violet" >
			<font color="white">
				최종학력
			</font>
			</td>
			<td>
				중졸<input type="radio" name="AcademicAblity" value="중졸">
				고졸<input type="radio" name="AcademicAblity" value="고졸">
				전문대졸<input type="radio" name="AcademicAblity" value="전문대졸">
				대졸<input type="radio" name="AcademicAblity" value="대졸">
			</td>
		</tr>
	</table>
				<fieldset style="width:470px;">
				<legend>자격증</legend>
					<label>
						<input type="checkbox" name="License" value="자동차2종">자동차 2종
						<input type="checkbox" name="License" value="정보처리산업기사">정보처리산업기사
						<input type="checkbox" name="License" value="컴퓨터활용">컴퓨터활용
						<input type="checkbox" name="License" value="기타">기타
					</label>
			</fieldset>
	<table>
		<tr>
			<td align="center" bgcolor="violet" >
			<font color="white">
				상담내용
			</font>
			</td>
			<td>
			<textarea name="Advice" cols="50" rows="10">상담내역 입력하기</textarea>
			</td>
		</tr>
	</table>
		<input type="submit" value="입력완료">
		<input type="reset" value="다시입력">
	</form>
</body>
</html>