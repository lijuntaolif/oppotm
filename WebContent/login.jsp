<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
* {
	margin: 0 auto;
	padding: 0;
}

.middle {
	width: 1300px;
	height: 600px;
	text-align: center;
}

.backimg {
	width: 1300px;
	position: relative;
}

.login {
	width: 400px;
	height: 450px;
	background-color: white;
	position: absolute;
	left: 850px;
	top: 100px;
}

.login_left {
	width: 30px;
	height: 450px;
	float: left;
}

.login_right {
	width: 370px;
	height: 450px;
	float: right;
}

.login_head {
	width: 370px;
	height: 100px;
	text-align: left;
	line-height: 150px;
	font-size: 18px;
}

.login_name {
	width: 370px;
	height: 45px;
	margin-top: 20px;
}

.ln_img {
	float: left;
	width: 45px;
	height: 45px;
}

.ln_mid {
	float: left;
	width: 325px;
	height: 45px;
	line-height: 45px;
}

.ln_mid input {
	width: 280px;
	height: 41px;
	float: left;
}

.login_password {
	width: 370px;
	height: 45px;
	margin-top: 20px;
}

.lp_img {
	float: left;
	width: 45px;
	height: 45px;
}

.lp_mid {
	float: left;
	width: 325px;
	height: 45px;
	line-height: 45px;
}

.lp_mid input {
	width: 280px;
	height: 41px;
	float: left;
}

.login_re {
	width: 370px;
	height: 20px;
	margin-top: 20px;
	text-align: left;
	font-size: 13px;
	color: red;
}

.login_register {
	width: 370px;
	height: 30px;
	margin-top: 20px;
	line-height: 30px;
	font-size: 13px;
	color: #999999;
}

.lor_left {
	float: left;
	width: 278px;
	height: 30px;
	text-align: left;
}

.lor_right {
	float: left;
	width: 80px;
	height: 30px;
	text-align: left;
}

.lor_right a {
	text-decoration: none;
	color: #999999;
}

.submit {
	width: 280px;
	height: 35px;
	background-color: #C40000;
	margin-top: 15px;
	margin-left: -30px;
	border-radius: 5px;
	line-height: 35px;
	color: white;
	border: 1px solid #C40000;
}

.tishi1 {
	margin-top: 50px;
	text-align: left;
	color: red;
}
</style>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	function login() {
		var name = $("input[name=username]").val();
		var pwd = $("input[name=password]").val();
		var flag = false;
		$.ajax({
			url : 'LoginServlet',
			data : {
				'name' : name,
				'pwd' : pwd
			},
			type : 'post',
			async : false,
			success : function(result) {
				if ($.trim(result) == "true") {
					flag = true;
				} else {
					alert("用户名或密码不正确");
					flag = false;
				}
			},
			error : function() {
				alert("ajax执行失败");
				flag = false;
			}
		})
	
		return flag;
	}
	$(function(){
		$("#loginform").submit(function(){
			if(login()){
				return true;
			}else{
				return false;
			}
		})
	})
</script>
</head>
<body>
	<div class="middle">
		<img class="backimg" src="image/login/login.png">
		<div class="login">
			<div class="login_left"></div>
			<div class="login_right">
				<div class="tishi1">
					<span></span>
				</div>
				<div class="login_head">
					<span>用户登录</span>
				</div>
				<form action="save.jsp" method="post" id="loginform">
					<div class="login_name">
						<div class="ln_img">
							<img src="image/login/loginname.jpg" width="45" height="45">
						</div>
						<div class="ln_mid">
							<input type="text" name="username" placeholder="用户名">
						</div>
					</div>

					<div class="login_password">
						<div class="lp_img">
							<img src="image/login/loginpassword.jpg" width="45" height="45">
						</div>
						<div class="lp_mid">
							<input type="password" name="password" placeholder="密码">
						</div>
					</div>

					<div class="login_re">
						<p>请不要输入真的天猫账号</p>
					</div>

					<div class="login_register">
						<div class="lor_left">
							<a>找回密码</a>
						</div>
						<div class="lor_right">
							<a href="regist.jsp">免费注册</a>
						</div>
					</div>
					<div class="submit_div">
						<input type="submit" value="登&nbsp;&nbsp;&nbsp;&nbsp;录" class="submit">
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>