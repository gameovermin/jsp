<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>check</title>
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
	<%
		request.setCharacterEncoding("utf-8");
		String Division = request.getParameter("Division");
		String Name = request.getParameter("Name");
		String Address = request.getParameter("Address");
		String Joindays = request.getParameter("Joindays");
		String AcademicAblity[] = request.getParameterValues("AcademicAblity");
		String License[] = request.getParameterValues("License");
		String Advice = request.getParameter("Advice");
	%>
	<h2>사용자 입력 확인</h2>
	<hr>
	<form>
		<table>
			<tr>
				<td>컨트롤 요소</td>
				<td>입력값</td>
			</tr>
			<tr>
				<td>소속</td>
				<td><%=Division %></td>
			</tr>
			<tr>
				<td>성명</td>
				<td><%=Name %></td>
			</tr>
			<tr>
				<td>현주소</td>
				<td><%=Address %></td>
			</tr>
			<tr>
				<td>입사년월일</td>
				<td><%=Joindays %></td>
			</tr>
			<tr>
				<td>학력</td>
				<td>
			<%
				for(int i=0;i<AcademicAblity.length;i++){
			%>
			<%=AcademicAblity[i]%>		
			<%	}
			%>
			</td>
			</tr>
			<tr>
				<td>자격증</td>
				<td>
				<%
				if (License != null) { 
					%>
				<% for (int i = 0; i < License.length; i++) {
				%>
				<%out.println(License[i]); }
	  	  }
 				%>
				</td>
			</tr>
			<tr>
				<td>상담내용</td>
				<td><%=Advice %></td>
			</tr>
			<tr>
				<td>각 폼 컨트롤의 이름들</td>
				<td>Division Name Address Joindays AcademicAblity License Advice</td>
			</tr>
		</table>
	</form>
</body>
</html>