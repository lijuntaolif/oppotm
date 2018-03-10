<%@page import="cn.oppotm.dao.ImageDao"%>
<%@page import="cn.oppotm.entity.Image"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cn.oppotm.entity.Good"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.good {
	width: 180px;
	height: 300px;
	text-align: center;
	float: left;
	margin-left: 10px;
}

.good_top {
	width: 180px;
	height: 180px;
}

.good_middle {
	width: 180px;
	height: 45px;
}

.good_middle_in {
	width: 35px;
	height: 35px;
	margin-top: 10px;
	margin-left: 2px;
	border: 1px solid #CCCCCC;
	float: left;
}

.good_top a {
	text-decoration: none;
	width: 180px;
	height: 180px;
}

.good_bottom {
	width: 180px;
	height: 75px;
}

.good_bottom_top {
	width: 40px;
	height: 20px;
	margin-left: 20px;
}

.good_bottom_top span {
	color: red;
	font-weight: bold;
	font-size: 16px;
}

.good_bottom_bottom {
	width: 180px;
	height: 40px;
	margin-top: 15px;
}

.good_bottom_bottom a {
	text-decoration: none;
	color: #808080;
	font-size: 13px;
}
</style>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
</head>
<body>
	<%
		List<Good> glist = (ArrayList<Good>) request.getAttribute("glist");
		List<String> ilist = null;
		ImageDao imagedao = new ImageDao();
		for (int i = 0; i < glist.size(); i++) {
			Good good = glist.get(i);
			ilist = imagedao.selectByGoodid(good.getGood_id());
	%>
	<script type="text/javascript">
		$(function() {
			$(".good_middle_in img").click(function() {
				$(this.parent().prev().children()).attr("src", $(this).attr("src"));
			})
			$(".good_middle_in img").focus(function(){
				$(this).css("border","2px solid red");
			})
		})
	</script>
	<div class="good">
		<div class="good_top" id="good_top">
			<a href="#"> <img src="<%=ilist.get(0)%>" width="180px"
				height="180px"></img>
			</a>
		</div>
		<div class="good_middle">
			<div class="good_middle_in" id="good_middle_1">
				<img src="<%=ilist.get(1)%>" width="35px" height="35px"></img>
			</div>
			<div class="good_middle_in" id="good_middle_2">
				<img src="<%=ilist.get(2)%>" width="35px" height="35px"></img>
			</div>
			<div class="good_middle_in" id="good_middle_3">
				<img src="<%=ilist.get(3)%>" width="35px" height="35px"></img>
			</div>
			<div class="good_middle_in" id="good_middle_4">
				<img src="<%=ilist.get(4)%>" width="35px" height="35px"></img>
			</div>
		</div>
		<div class="good_bottom">
			<div class="good_bottom_top">
				<span><%=good.getOriginalPrice()%></span>
			</div>
			<div class="good_bottom_bottom">
				<a href="#"><%=good.getIntroduce()%></a>
			</div>
		</div>
	</div>
	<%
		}
	%>
</body>
</html>