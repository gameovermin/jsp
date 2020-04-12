<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
  
	<h2>JSP 환경 설정을 위한 다운로드 페이지</h2>
	<hr>
	<select id="page" name="Page">
				<option value="JDK">JDK</option>
				<option value="Tomcat">Tomcat</option>
				<option value=" Eclipse">Eclipse</option>
	</select>
	
	<button type="button" onclick="submitButton();">이동</button>
</body>
</html>

<script>
	function submitButton() {
		const page = document.getElementById('page');
		const pageValue = page.options[page.selectedIndex].value;

		console.log(pageValue);
		
		switch (pageValue) {
			case 'JDK': 
				location.href= 'http://www.oracle.com';
				break;
			case 'Tomcat':
				location.href = 'http://apache.org';
				break;
			case 'Eclipse':
				location.href= 'http://eclipse.org';
				break;
		}
	}
</script>