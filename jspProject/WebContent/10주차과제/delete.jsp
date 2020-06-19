<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
   request.setCharacterEncoding("utf-8");
    
    String url = "jdbc:oracle:thin:@localhost:1521/xe";
    String user = "JSP";
    String pwd = "1234";
    
    Class.forName("oracle.jdbc.driver.OracleDriver");
    
    Connection con = DriverManager.getConnection(url, user, pwd);
    
    String sql = "DELETE FROM LOGIN WHERE ID=?";
    
    PreparedStatement pstmt = con.prepareStatement(sql);
    pstmt.setString(1, request.getParameter("id"));

    int i = pstmt.executeUpdate();
    
    pstmt.close();
    con.close();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
   
</body>
</html>