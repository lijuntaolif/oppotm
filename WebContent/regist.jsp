<%@page import="java.util.List"%>
<%@page import="cn.oppotm.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
<!--
全局-->* {
	padding: 0;
	margin: 0 auto;
}

/*主体*/
.registerDiv {
	width: 800px;
	height: 400px;
	margin-left: 250px;
	margin-top: 100px;
}

/*左边整体*/
.registerLeftBox {
	width: 250px;
	height: 300px;
	display: inline;
	float: left;
	padding-right: 50px;
}

/*左边*/
.registerLeft {
	width: 300px;
	height: 60px;
	text-align: right;
}

.TipregisterLeft {
	width: 300px;
	height: 60px;
	text-align: right;
	font-weight: bold;
}

/*中间整体*/
.registerMidBox {
	width: 240px;
	height: 300px;
	float: left;
}

/*中间*/
.registerMid {
	width: 200px;
	height: 60px;
	text-align: left;
	padding-left: 50px;
}

.registerMid input {
	height: 20px;
}

.mustWrite {
	color: red;
}

/*右边整体*/
.registerRightBox {
	width: 250px;
	height: 300px;
	float: right;
}

/*右边*/
.registerRight {
	width: 250px;
	height: 60px;
	text-align: left;
}

.unameDiv, .pwdDiv, .repwdDiv {
	width: 250px;
	height: 60px;
	text-align: left;
	color: red;
}

/*注册按钮*/
.registerButtonDIV {
	width: 800px;
	height: 50px;
	margin-top: 10px;
}

.registerButtonDIV .submit {
	width: 170px;
	height: 36px;
	border-radius: 2px;
	color: white;
	background-color: #C40000;
	border-width: 0px;
	margin-left: 300px;
}
</style>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript">
        function checkName(){
        	var flag=false;
        	var name=$("input[name=name]").val();
        	if(name==""){
        		$(".unameDiv").html("用户名不能为空");
        		flag=false;
        	}else{
        		$.ajax({
        			async:false,//设置为同步请求
        			url:'checkName.jsp',
        			type:'get',
        			data:'uname='+name,
        			success:function(result){
        				if($.trim(result)=="true"){
        					flag=false;
        					$(".unameDiv").html("用户名已存在");	
        				}else{
        					flag=true;
        					$(".unameDiv").html("用户名可以使用");	
        				}
        			},
        			error:function(){
        				alert("ajax执行失败");
        				flag=false;
        			}
        		})
        	}
        	return flag;
        }
        function checkPwd(){
        	var pwd=$("input[name=password]").val();
        	if(pwd.length<6||pwd.length>16){
        		$(".pwdDiv").html("密码长度不符合要求");
        		return false;
        	}else{
        		$(".pwdDiv").html("密码可以使用");
        		return true;
        	}
        }
        function checkRepwd(){
        	var pwd=$("input[name=password]").val();
        	var repwd=$("input[name=repassword]").val();
        	if(repwd==""){
        		$(".repwdDiv").html("确认密码不可为空");
        		return false;
        	}else if(pwd==repwd){
        		$(".repwdDiv").html("确认密码成功");
        		return true;
        	}else{
        		$(".repwdDiv").html("两次密码不一致");
        		return false;
        	}
        }
        $(function(){
        	$(".registerForm").submit(function(){
        		if(checkName()&&checkPwd()&&checkRepwd()){
        			return true;
        		}else{
        			return false;
        		}
        	})
        })
    </script>
</head>
<body>
	<!--注册表单-->
	<form method="post" action="UserServlet" class="registerForm">
		<!-- 注册主页面-->
		<div class="registerDiv">
			<!-- 左边标签部分-->
			<div class="registerLeftBox">
				<div class="TipregisterLeft">设置会员名</div>
				<div class="registerLeft">登陆名</div>
				<div class="TipregisterLeft">设置登陆密码</div>
				<div class="registerLeft">登陆密码</div>
				<div class="registerLeft">密码确认</div>
			</div>

			<!-- 中间表单-->
			<div class="registerMidBox">
				<div class="registerMid"></div>
				<div class="registerMid">
					<input id="name" name="name" placeholder="会员名一旦设置成功，无法修改"
						onblur="checkName();"><span class="mustWrite">*</span>
				</div>
				<div class="registerMid">登录时验证</div>
				<div class="registerMid">
					<input id="password" name="password" type="password"
						placeholder="设置你的登陆密码" onblur="checkPwd();"><span
						class="mustWrite">*</span>
				</div>
				<div class="registerMid">
					<input id="repeatpassword" name="repassword" type="password"
						placeholder="请再次输入你的密码" onblur="checkRepwd()"><span
						class="mustWrite">*</span>
				</div>
			</div>

			<div class="registerRightBox">
				<div class="registerRight"></div>
				<div class="unameDiv"></div>
				<div class="registerRight"></div>
				<div class="pwdDiv"></div>
				<div class="repwdDiv"></div>
			</div>

			<!--注册按钮-->
			<div class="registerButtonDIV">
				<input type="submit" value="提交" class="submit">
			</div>


		</div>
	</form>

</body>
</html>