<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("utf-8");
    
    String url = "jdbc:oracle:thin:@localhost:1521/xe";
    String user = "JSP";
    String pwd = "1234";
    
    Class.forName("oracle.jdbc.driver.OracleDriver");
    
    Connection con = DriverManager.getConnection(url, user, pwd);
    
    String sql = "UPDATE LOGIN SET REGDATE=?, WRITER=?, CONTENT=?, SUBJECT=? WHERE ID=? ";
    
    PreparedStatement pstmt = con.prepareStatement(sql);
    pstmt.setString(1, request.getParameter("id"));
    pstmt.setString(2, request.getParameter("subject"));
    pstmt.setString(3, request.getParameter("content"));
    pstmt.setString(4, request.getParameter("writer"));
    pstmt.setString(5, request.getParameter("regdate"));
    
    int i = pstmt.executeUpdate();
    
    pstmt.close();
    con.close();
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
   
   
   
</body>
</html>