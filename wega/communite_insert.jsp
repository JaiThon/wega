<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<html>
<body>
<% 
	String name, email, title, memo, time;
	name = request.getParameter("name");
	email = request.getParameter("email");
	time = request.getParameter("time");
	title = request.getParameter("title");
	memo = request.getParameter("memo");
	
	ResultSet rs = null;
	String sql;
	Connection con = null;
	
	Statement stmt = null;
	try {
		Class.forName("org.gjt.mm.mysql.Driver");
		String url = "jdbc:mysql://localhost:3305/board";
		con = DriverManager.getConnection(url, "root", "1234");
	}
	catch(Exception e) {
		out.println("데이터베이스 접속에 문제가 있습니다.<hr>");
		out.println(e.getMessage());
		e.printStackTrace();
	}
	stmt = con.createStatement();
	
	sql = "insert into communite_center " + 	
		  "(title, name, time, memo, email) " +
		  "values (" + "'" + title + "', '" + name + "', '" +
		  time + "', '" + memo + "', '" + email + "');";
	try {
		stmt.executeUpdate(sql);
	}
	catch(Exception e) {
		out.println("데이터베이스 삽입 연산이 실패하였습니다.<hr>");
		out.println(e.getMessage());
		e.printStackTrace();
	}
%>
	<h3>게시글이 등록되었습니다.</h3>
	<a href="communication.jsp">게시글 리스트 보기</a>
</body>
</html>