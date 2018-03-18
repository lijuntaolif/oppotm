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

session.setAttribute("user_id", 1); 
%>
 <a href="BuyServlet?good_id=3">点击显示gooddetail</a>
 <a href="ShowCart?user_id=<%=session.getAttribute("user_id") %>">点击显示购物车</a>

</body>
</html>