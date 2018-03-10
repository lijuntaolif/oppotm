<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
   .good{
      width:200px;
      height:300px;
      background-color:#AE0323;
      text-align:center;
      float:left;
   }
</style>
</head>
<body>
<%  
    String low=request.getParameter("low");
    String high=request.getParameter("high");
    out.print(low);
    out.print(high);
    for(int i=0;i<5;i++){
    	%>
    	<div class="good">
    	<span><%=1 %></span><br>
    	<span><%=2 %></span><br>
    	<span><%=3 %></span><br>
    	<span><%=4 %></span>
    	</div>
    	<% 
    }
    %>
</body>
</html>