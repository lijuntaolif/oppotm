<%@page import="cn.oppotm.dao.ImageDao"%>
<%@page import="cn.oppotm.entity.Good"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>结算页面</title>
    <style>
        *{
            margin: 0 auto;
            padding: 0;
        }
       #middle{
           width: 1000px;
           height: auto;
           background-color: #E5E5E5;

           font-size: 15px;
       }
        #middle_top{
            width: 1000px;
            height: 40px;
            margin-top: 50px;
            background-color:#F3F8FE;
            margin-left: 0px;
            font-size: 20px;
            color: #014D7F;
            line-height: 40px;

        }
        #middle_info{
            width: 1000px;
            height: 200px;


        }
        #mi1{
            width: 600px;
            height: 90px;
            margin-left: 0px;
            margin-top: 20px;
        }
        #mi1_left{
            width: 90px;
            height: 90px;

            text-align: right;

            float: left;
        }
        #mi1_left span i{
            color: red;
        }
        #mi1_right{
            width: 490px;
            height: 90px;

            float: left;
            margin-left: 10px;
        }
       
        #mi2{
            width: 500px;
            height: 25px;

            line-height: 25px;
            margin-left: 0px;
        }
        #mi2_left{
            width:90px;
            height:25px;
            float: left;
            text-align: right;
        }
        #mi2_right{
            width: 400px;
            height: 25px;

            float: left;
            margin-left: 10px;
        }
        #mi2_right input{
            width: 250px;
            height: 19px;

        }
        #mi3{
            width: 500px;
            height: 25px;

            line-height: 25px;
            margin-left: 0px;
            margin-top: 10px;
        }
        #mi3_left{
            width:90px;
            height:25px;
            float: left;
            text-align: right;
        }
        #mi3_left span i{
            color: red;
        }
        #mi3_right{
            width: 400px;
            height: 25px;

            float: left;
            margin-left: 10px;
        }
        #mi3_right input{
            width: 250px;
            height: 19px;

        }
        #mi4{
            width: 500px;
            height: 25px;

            line-height: 25px;
            margin-left: 0px;
            margin-top: 10px;
        }
        #mi4_left{
            width:90px;
            height:25px;
            float: left;
            text-align: right;
        }
        #mi4_left span i{
            color: red;
        }
        #mi4_right{
            width: 400px;
            height: 25px;

            float: left;
            margin-left: 10px;
        }
        #mi4_right input{
            width: 250px;
            height: 19px;

        }
        #middle_foot{
            width:1000px ;
            height: auto;
            margin-top: 10px;
        }
        #mf_h{
            width: 1000px;
            height: 40px;
            margin-top: 50px;
            background-color:#F3F8FE;
            margin-left: 0px;
            font-size: 20px;
            color: #014D7F;
            line-height: 40px;
        }
        .mf_middle{
            width: 1000px;
            height: auto;
            font-size: 5px;
        }
        .mf_middle_head{

            width: 1000px;
            height: 50px;
            text-align: left;
            line-height: 50px;
        }
        .mf_mh1{
            float: left;
            width: 150px;
        }
        .mf_mh2{
            float: left;
            width: 395px;


        }
        .mf_mh3{
            float: left;
            width: 125px;
        }
        .mf_mh4{
            float: left;
            width: 125px;
        }
        .mf_mh5{
            float: left;
            width: 125px;
        }
        .mf_mh6{
            float: left;
            width: 80px;
        }
        .mf_middle_middle{
            width: 998px;
            height:125px ;

            text-align: left;

            border: 1px solid #CCCCCC;

        }
        .mf_mm1{
            float: left;
            width: 150px;
            background-color: #faf2b5;
            height:125px ;
            line-height: 125px;

        }
        .mm1_input{
            float: left;
            margin-left: 5px;
        }
        .mm1_img{
            margin-top: 20px;
            float: left;
        }
        .mf_mm2{
            float: left;
            width: 395px;
            height: 125px;



        }
        .mf_mm2 a{
            text-decoration: none;
            color: black;

        }
        .mf_mm2_a{
            height: 80px;
            width: 395px;
            line-height: 70px;
        }
        .mf_mm2_img{
            height: 24px;
            width: 300px;
            margin-top: 1px;
            margin-left: 0px;

        }

        .mf_mm3{
            float: left;
            width: 125px;
            height: 125px;
            font-size: 14px;
            line-height: 125px;

        }

        .mf_mm4{
            float: left;
            width: 125px;
            line-height: 125px;
        }
        .mf_mm5{
            float: left;
            width: 125px;
            font-size: 15px;
            color: red;
            line-height: 125px;
        }

        .mf_mm6{
            float: left;
            width: 78px;
            line-height: 125px;
            margin-top:50px;
        }
        .mm6 span{
            color: #999999;
        }
        .mf_middle_footer{
            width: 1000px;
            height:50px;
            background-color: #E5E5E5;
            margin-top: 20px;
        }
        .mf_middle{
        	font-size:13px;
        }
        .mf_mf1{
            height:50px;
            width: 50px;
            line-height: 50px;
            float: left;
        }
        .mf_mf2{
            height:50px;
            width: 500px;
            line-height: 50px;
            margin-left: 350px;
            float: left;
            font-size: 13px;
            text-align: right;
        }
        .mf_mf2 span{
            color: red;
            font-size: 17px;
        }
        .mf_mf3{
            height:50px;
            width: 100px;
            line-height: 50px;
            float: right;
            text-align: left;
            font-size: 20px;
            color:white;
            text-align: center;
            background-color: #AAAAAA;

        }
        .mf_mf3 input{
            font-size: 20px;
            height:50px;
            width: 100px;
            background-color: #C40000;
            color:white;
            border: 0px;
        }
        #mil_right_d{
            color: red;
           display: inline;
        }
        #mi2_right_div{
            color: red;
            display: inline;
        }
        #mi3_right_div{
            color: red;
            display: inline;
        }
        #mi4_right_div{
            color: red;
            display: inline;
        }


    </style>
    <script src="js/jquery-1.8.3.js" type="text/javascript"></script>
    <script type="text/javascript">
        function checkaddr(){
            var addr=$("textarea[name=deAddr]").val();
            
            if(addr==""){
            	$("#mil_right_d").html("地址不能为空");
                return false;
            }else{
            	$("#mil_right_d").html("<img src='image/duigou2.png' width='15px' height='15px'>");
                return true;
            }
        }
        function checkpost(){
            var post=$("input[name=post]").val();
            var span=$("#mi2_right_div");
            if(post.length!=6||isNaN(post)){
                span.html("邮编不正确");
                return false;
            }else{
                span.html("<img src='image/shopcart/duigou2.png' width='15px' height='15px' style='text-align: center'>");
                return true;
            }
        }
        function checkname(){
            var name=$("input[name=name]").val();
            var div=$("#mi3_right_div");
            if(name.length<1||name.length>10){
                div.html("姓名长度不得超过10");
                if(name==""){
                    div.html("姓名不能为空");
                    return false;
                }
                return false;
            }else{
                div.html("<img src='image/shopcart/duigou2.png' width='15px' height='15px' style='text-align: center'>");
                return true;
            }
        }
        function checkphone(){
            var phone=$("input[name=phone]").val();
            var div=$("#mi4_right_div");
            if(phone.length!=11||isNaN(phone)){
                div.html("请正确输入手机号");
                return false;
            }else{
                div.html("<img src='image/shopcart/duigou2.png' width='15px' height='15px' style='text-align: center'>");
                return true;
            }
        }
      
       

        $(function(){
            $(".mf_mm2_a a").mouseover(function(){
                $(this).css({"color":"#FF6600","text-decoration":"underline"});
            });
            $(".mf_mm2_a a").mouseout(function(){
                $(this).css({"color":"black","text-decoration":"none"});
            });
            $("#mi1_right textarea").blur(checkaddr);
            $("#mi2_right input").blur(checkpost);
            $("#mi3_right input").blur(checkname);
            $("#mi4_right input").blur(checkphone);
            $("form").submit(function(){
                var flag=true;
                if(checkaddr()==false){
                    flag=false;
                }
                if(checkpost()==false){
                    flag=false;
                }
                if(checkname()==false){
                    flag=false;
                }
                if(checkphone()==false){
                    flag=false;
                }
                return flag;
            });

        });


    </script>
</head>
<body>
    <div id="middle">
        <form action="account" method="post">
        <div id="middle_top">
            <span>收货地址</span>
        </div>

        <div id="middle_info">

            <div id="mi1">
                <div id="mi1_left"> <span>详细地址<i>*</i></span></div>
                <div id="mi1_right">
                    <textarea name="address" style="background-color: #F5F5F5"  rows="5" cols="50" name="deAddr" placeholder="建议您如实填写详细地址，如街道名称，楼层号码，楼层和房间号等信息"></textarea>
                    <div id="mil_right_d"></div>
                </div>
            </div>
            <div id="mi2">
                <div id="mi2_left"><span>邮编</span></div>
                <div id="mi2_right">
                    <input  name="post" type="text" placeholder="如您不清楚邮政编号，请填写000000">
                    <div id="mi2_right_div"></div>
                </div>

            </div>
            <div id="mi3">
                <div id="mi3_left"><span>收货人姓名<i>*</i></span></div>
                <div id="mi3_right"><input type="text" name="name" placeholder="请正确输入收货人名"><div id="mi3_right_div"></div></div>
            </div>
            <div id="mi4">
                <div id="mi4_left"><span>手机号<i>*</i></span></div>
                <div id="mi4_right"><input name="phone" placeholder="手机号为11位" ><div id="mi4_right_div"></div></div>

            </div>

        </div>

        <div id="middle_foot">
            <div id="mf_h"><span>确认订单信息</span></div>
            <div class="mf_middle">
                <div class="mf_middle_head">
                    <div class="mf_mh1">图片</div>
                    <div class="mf_mh2">商品信息</div>
                    <div class="mf_mh3">单价</div>
                    <div class="mf_mh4">数量</div>
                    <div class="mf_mh5">金额</div>
                    <div class="mf_mh6">配送方式</div>
                </div>
                <%
                	List<Good> good_list=(List<Good>)session.getAttribute("good_list");
                	String[] str=request.getParameterValues("choose");
                	String[] good_num=request.getParameterValues("good_num");
                	String[] goodpaytol=request.getParameterValues("goodpaytol");
                	
                
                
                	int t=0;
                	
                	for(int i=0;str!=null&&i<str.length;i++){
                		
            		
                			int num=Integer.parseInt(good_num[i-t]);
                			if(num==0){
                				t++;
                				continue;
                			}
                			int goodpay=Integer.parseInt(goodpaytol[i-t]);
                    		Good good=new Good();
                    		good=good_list.get(i-t);
                    		ImageDao imageDao=new ImageDao();
                    		
                		
                		
                		%>
                		
                			<div class="mf_middle_middle">
                    <div class="mf_mm1">
                        <div class="mm1_input"></div>
                        <div class="mm1_img">
                            <img src="<%=imageDao.getFirstImage(good.getGood_id()) %>" width="120px" height="80px">
                        </div>
                    </div>
                    <div class="mf_mm2">
                        <div class="mf_mm2_a"><a href="#"><%=good.getIntroduce() %></a>
                        <input type="hidden" name="good_id" value="<%=good.getGood_id()%>">
                        </div>
                        <div class="mf_mm2_img">
                            <img src="image/shopcart/gwbiao1.png" width="20px" height="20px" alt="">
                            <img src="image/shopcart/gwbiao2.png" width="20px" height="20px" alt="">
                            <img src="image/shopcart/gwbiao3.png" width="20px" height="20px" alt="">

                        </div>

                    </div>
                    <div class="mf_mm3">
                        <p class="mm3p2">￥<%=good.getDiscountedPrice() %></p>
                    </div>
                    <div class="mf_mm4"><%=num %>
                    <input type="hidden" name="num" value="<%=num %>">
                    </div>
                    <div class="mf_mm5">￥<%=goodpay %>
                     <input type="hidden" name="goodpay" value="<%=goodpay %>">
                    </div>
                    <div class="mf_mm6">
                        <select id="express" name="express">
                            <option value="1">顺丰</option>
                            <option value="2">中通</option>

                        </select>
                    </div>

                </div>
                		
                		<%
					
                		}
                
                
                %>
                <%	
                	String strSum=request.getParameter("allcountnum");
                	String strPay=request.getParameter("allcountpay");
                
                	%>
                		<div class="mf_middle_footer">
                     		<div class="mf_mf1"></div>
                    		<div class="mf_mf2">已选商品&nbsp;<span><%=strSum %></span>&nbsp;件 &nbsp;&nbsp;&nbsp;合计（不含运费）:<span>￥<%=strPay %></span>
                    		<input type="hidden" name="strSum" value="<%=strSum%>">
                    		<input type="hidden" name="strPay" value="<%=strPay%>">
                    		<input type="hidden" name="user_id" value="<%=session.getAttribute("user_id") %>">
                    		
                    		</div>
                   			 <div class="mf_mf3"> <input type="submit" value="结&nbsp;&nbsp;&nbsp;算" id="sub" ></div>
                     	</div>
                	<%
               
                %>
                
            </div>
        </div>
        </form>
    </div>

</body>
</html>