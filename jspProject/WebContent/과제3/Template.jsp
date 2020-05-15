<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>템플릿</title>
	<link rel='stylesheet' href='template.css'> <!-- 외부 스타일시트 파일 로드 -->
</head>
<body>
	<header>
		<jsp:include page="top.jsp" flush="false"/>
	</header>
	<div id='content'>
		<section id='areaSub'>
			<jsp:include page="left.jsp" flush="false"/>
		</section>
		<section id='areaMain'>
			<jsp:include page="content.jsp" flush="false"/>
		</section>
	</div>
	<form action="question.jsp" method="post">
		<table>
			<tr>
				<td>문의사항 입력
				</td>
			</tr>
			<tr>
				<td>
				<input type="text" name="que">
				</td>
			</tr>
			<tr>
				<td>
				<input type="submit" value="입력완료">
				</td>
			</tr>
		</table>
	</form>
	<footer>
		<jsp:include page="bottom.jsp" flush="false"/>
	</footer>
		<jsp:include page="toptop.jsp" flush="false"/>
</body>
</html>