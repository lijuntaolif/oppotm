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
	boolean flag=(boolean)request.getAttribute("flag");
	
	
	%>
	是否成功：<%=flag %>
	
<Meta http-equiv=Refresh Content=30> 
<Meta http-equiv="Refresh" Content="3; Url=main.jsp"> 

	
</body>
</html>