<%@page import="cn.oppotm.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String name = request.getParameter("username");
		UserDao userdao = new UserDao();
		int userid = userdao.selectIdBYName(name);
		
	
		session.setAttribute("user_id", userid);
		session.setAttribute("name", name);
	
		response.sendRedirect("main.jsp");
	%>
</body>
</html>