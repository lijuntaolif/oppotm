<%@page import="cn.oppotm.dao.ShopCartDao"%>
<%@page import="cn.oppotm.entity.UnfinishedForm"%>
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
        
    </style>
     <link rel="stylesheet" href="css/css-account.css" type="text/css">
  	 <link rel="stylesheet" href="css/css-main-footer.css" type="text/css">
   	<link rel="stylesheet" href="css/css-main-top.css" type="text/css">

    <script src="js/jquery-1.8.3.js" type="text/javascript"></script>
    <script src="js/account.js" type="text/javascript"></script>
   	<script src="js/main-top.js" type="text/javascript"></script>
</head>
<body>
<%!String name = null;%>
<%
	name=(String)session.getAttribute("name");
if(name==null){
	response.sendRedirect("login.jsp");
}

%>
<!-- 首页顶部top_up开始-->
<div class="top_up">
    <div class="top_up_left">
        <ul>
            <li>
                <div class="top_up_left_image"><image src="image/shouye/top/top_up0.png" width="25px" height="25px"></image></div>
                <div class="top_up_left_text"><a href="main.jsp">首页</a></div>
            </li>
            <li>喵，欢迎来到天猫</li>
            <li><div class="top_up_left_text">
							<%
								if (name == null) {
							%>
							<a href="login.jsp">请登录</a>
							<%
								} else {
							%>
							<a href="#"><%=name%></a>
							<%
								}
							%>
						</div></li>
					<li><div class="top_up_left_text">
							<%
								if (name == null) {
							%>
							<a href="regist.jsp">免费注册</a>
							<%
								}
							%>
						</div></li>

        </ul>
    </div>
    
    <div class="top_up_right">
        <ul>
            <li><div class="top_up_left_text"><a href="#">我的淘宝</a></div></li>
            <li>
                <div class="top_up_left_image"><image src="image/shouye/top/top_up1.png" width="25px" height="25px"></image></div>
                <%
    	ShopCartDao shopCartDao=new ShopCartDao();
                
    	
    	if(name!=null){
    		int user_id=(int)session.getAttribute("user_id");
    	
    	int shopcount=shopCartDao.countByUser_id(user_id);
    	%> <div class="top_up_left_text"><a href="ShowCart?user_id=<%=session.getAttribute("user_id") %>">购物车<%=shopcount %>件</a></div>
        <%
    	}else{
    		%> <div class="top_up_left_text"><a href="login.jsp">购物车0件</a></div>
            <%
    	}
    %>
                   </li>
            <li><div class="top_up_left_text"><a href="#">收藏夹</a></div></li>
            <li>
                <div class="top_up_left_image"><image src="image/shouye/top/top_up2.png" width="25px" height="25px"></image></div>
                <div class="top_up_left_text"><a href="#">手机版</a></div>
            </li>
            <li><div class="top_up_left_text"><a href="https://www.taobao.com/">淘宝网</a></div></li>
            <li><div class="top_up_left_text"><a href="#">商家支持</a></div></li>
            <li>
                <div class="top_up_left_image"><image src="image/shouye/top/top_up3.png" width="25px" height="25px"></image></div>
                <div class="top_up_left_text">网站导航</div></li>
        </ul>
    </div>
</div>
<!--首页顶部top_up结束-->
<!--首页顶部top_middle开始-->
<div class="top_middle_1">
    <div class="top_middle_1_in_1"><image src="image/shouye/top/top_middle_1_1.png"></image></div>
    <div class="top_middle_1_in_2">
        <div class="top_middle_1_in_2_up">oppo手机官方旗舰店</div>
        <div class="top_middle_1_in_2_under">
            <image src="image/shouye/top/top_middle_1_2.png"></image>
            <image src="image/shouye/top/top_middle_1_3.png"></image>
        </div>
    </div>
    <div class="top_middle_1_in_3"><image src="image/shouye/top/top_middle_1_5.png"></image></div>
    <div class="top_middle_1_in_4">
        <div class="top_middle_1_in_4_up">手机逛</div>
        <div class="top_middle_1_in_4_under"><image src="image/shouye/top/top_middle_1_4.png"></image></div>
    </div>
    <div class="top_middle_1_in_5">
        <input type="text" class="sy_sousuo">
        <div class="sy_button">搜索</div>
    </div>
</div>
<div class="top_middle_2">
    <div class="top_middle_2_in_1">
        <a href="main.jsp">
            <div class="top_middle_2_in_1_up">OPPO官方旗舰店</div>
            <div class="top_middle_2_in_1_under">
                <image src="image/shouye/top/top_middle_2_1.png"></image>
            </div>
        </a>
    </div>
    <div class="top_middle_2_in_2">
        <a href="main.jsp">
            <image src="image/shouye/top/top_middle_2_2.png"></image>
        </a>
    </div>
    <div class="top_middle_2_in_3">
        <a href="#?id=1">
            <div class="top_middle_2_in_3_left">
                <image src="image/shouye/top/top_middle_2_3.png"></image>
            </div>
            <div class="top_middle_2_in_3_right">
                R11s新年版上市<br>
                ￥3199<br>
                火爆抢购中<br>
                <image src="image/shouye/top/top_middle_2_4.png"></image>
            </div>
        </a>
    </div>
</div>
<!--首页top_middle结束-->


    <div id="middle">
        <form action="account" method="post">
        <div id="middle_top">
            <span>收货地址</span>
        </div>

        <div id="middle_info">

            <div id="mi1">
                <div id="mi1_left"> <span>详细地址<i>*</i></span></div>
                <div id="mi1_right">
                    <textarea name="address" style="background-color: #F5F5F5"  rows="5" cols="30" name="deAddr" placeholder="建议您如实填写详细地址，如街道名称，楼层号码，楼层和房间号等信息"></textarea>
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
                	List<UnfinishedForm> list=(List<UnfinishedForm>)request.getAttribute("ufForms");
                    	for(int i=0;i<list.size();i++){
                    		UnfinishedForm uForm=list.get(i);
                		
                		
                		%>
                		
                			<div class="mf_middle_middle">
                    <div class="mf_mm1">
                        <div class="mm1_input"></div>
                        <div class="mm1_img">
                            <img src="<%=uForm.getImage_name()%>" width="120px" height="80px">
                        </div>
                    </div>
                    <div class="mf_mm2">
                        <div class="mf_mm2_a"><a href="BuyServlet?good_id=<%=uForm.getGood_id()%>"><%=uForm.getIntroduce()%></a>
                        <input type="hidden" name="good_id" value="<%=uForm.getGood_id()%>">
                        </div>
                        <div class="mf_mm2_img">
                            <img src="image/shopcart/gwbiao1.png" width="20px" height="20px" alt="">
                            <img src="image/shopcart/gwbiao2.png" width="20px" height="20px" alt="">
                            <img src="image/shopcart/gwbiao3.png" width="20px" height="20px" alt="">

                        </div>

                    </div>
                    <div class="mf_mm3">
                        <p class="mm3p2">￥<%=uForm.getDiscountedPrice() %></p>
                    </div>
                    <div class="mf_mm4"><%=uForm.getNum() %>
                    <input type="hidden" name="num" value="<%=uForm.getNum() %>">
                    </div>
                    <div class="mf_mm5">￥<%=uForm.getPay() %>
                     <input type="hidden" name="goodpay" value="<%=(int)uForm.getPay() %>">
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
            	String strSum=(String)request.getAttribute("strSum");
            	String strPay=(String)request.getAttribute("strPay");
            
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
	<!--首页footer开始-->
<div class="bottom_table">
    <table cellspacing="30" cellpadding="0" border="0">
        <tr>
            <td>
                <div class="bor 1">
                    <table cellspacing="0" cellpadding="0" border="0">
                        <tr>
                            <td><img src="image/shouye/footer/foot_fuwu01.png" alt=""/></td>
                            <td>
                                <lable class="foot_1" style="font-size: 15px;font-weight: bolder;">品质保证 </lable>
                                <br/>
                                <span class="foot" style="font-size: 12px ;color: #B9B9B9">品质护航购物无忧</span>

                            </td>
                        </tr>
                    </table>
                </div>
            </td>
            <td>
                <div class="bor 2">
                    <table cellspacing="0" cellpadding="0" border="0">
                        <tr>
                            <td><img src="image/shouye/footer/foot_fuwu02.png" alt=""/></td>
                            <td>
                                <lable class="foot_1" style="font-size: 15px;font-weight: bolder;">七天无理由退货 </lable>
                                <br/>
                                <span class="foot" style="font-size: 12px ;color: #B9B9B9">为你提供无忧售后保障</span>

                            </td>
                        </tr>
                    </table>
                </div>
            </td>
            <td>
                <div class="bor 3">
                    <table cellspacing="0" cellpadding="0" border="0">
                        <tr>
                            <td><img src="image/shouye/footer/foot_fuwu03.png" alt=""/></td>
                            <td>
                                <lable class="foot_1" style="font-size: 15px;font-weight: bolder;">特殊服务体验 </lable>
                                <br/>
                                <span class="foot" style="font-size: 12px ;color: #B9B9B9">为你呈现不一样的服务</span>

                            </td>
                        </tr>
                    </table>
                </div>
            </td>
            <td>
                <div class="bor4">


                    <table cellspacing="0" cellpadding="0" border="0">
                        <tr>
                            <td><img src="image/shouye/footer/foot_fuwu04.png" alt=""/></td>
                            <td>
                                <lable class="foot_1" style="font-size: 15px;font-weight: bolder;">帮助中心 </lable>
                                <br/>
                                <span class="foot" style="font-size: 12px ;color: #B9B9B9">你的购物指南</span>

                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
    <div class="bottom_foot">
        <div class="bottom_foot0"></div>
        <div class="bottom_foot1">
            <lable class="n1" style="font-weight:bolder;font-size: 15px;"><br/><br/>购物指南</lable>
            <br/>
            <span class="r1" style="font-size: 11px ;color: #7F7D7E">免费注册 <br/>开通支付宝 <br/>支付宝充值</span>
        </div>
        <div class="bottom_foot2">
            <lable class="n1" style="font-weight:bolder;font-size: 15px;"><br/><br/>天猫保障</lable>
            <br/>
            <span class="r1" style="font-size: 11px ;color: #7F7D7E">发票保障 <br/>售后规则 <br/>缺货赔付</span>

        </div>
        <div class="bottom_foot3">
            <lable class="n1" style="font-weight:bolder;font-size: 15px;"><br/><br/>支付方式</lable>
            <br/>
            <span class="r1" style="font-size: 11px ;color: #7F7D7E">支付宝快捷支付 <br/>支付宝余额支付 <br/>支付宝钱包付款 <br/>货到付款 <br/>新人支付</span>
        </div>
        <div class="bottom_foot4">
            <lable class="n1" style="font-weight:bolder;font-size: 15px;"><br/><br/>商家服务</lable>
            <br/>
            <span class="r1" style="font-size: 11px ;color: #7F7D7E">商家入驻 <br/>商家中心 <br/>天猫智库 <br/> 天猫规则 <br/>物流服务 <br/>喵言喵语 <br/>运营服务</span>
        </div>
        <div class="bottom_foot5">
            <lable class="n1" style="font-weight:bolder;font-size: 15px;"><br/><br/>手机服务</lable>
            <br/>
            <img src="image/shouye/footer/erweima.png" alt=""/>
        </div>
    </div>


</div>
<div class="logo_tm">
    <div class="logo_tm1">
        <img src="image/shouye/footer/logo_tianmao.png" alt=""/>
    </div>
</div>
<div class="last">
    <table cellpadding="0" cellspacing="15" align="center">
        <tr>
            <td align="left" >
                <div class="t1" >
                    <br/>
                    关于天猫&nbsp;帮助中心&nbsp;诚聘英才&nbsp;联系我们&nbsp;网站合作&nbsp;法律声明 &nbsp;廉政举报
                    <br/>
                    <br/>
                    阿里巴巴集团|淘宝网|天猫|聚划算|全球速卖通|阿里巴巴国际交易市场|1688|阿里妈妈|阿里旅行|阿里云计算|YunOS|阿里通信|万网|高德|优酷|友盟|酷盘|虾米|天天动听|来往|钉 <br/>
                    <br/>
                    钉|11Main|支付宝
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="t2">
                    增值电信业务经营许可证：浙B2-20110446 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;互联网医疗保健信息服务&nbsp;审核同意书&nbsp;浙卫网申[2012]6号
                    <br/> <br/>
                    互联网药品信息服务资质证书编号:浙-（经营性）-2012-0005 <br/><br/>
                    @2003-2015  TMALLCOM版权所有
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <img src="image/shouye/footer/renzheng_01.png" alt=""/>&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="image/shouye/footer/renzheng_02.png" alt=""/>
            </td>
        </tr>
    </table>
</div>
<!--首页footer结束-->
</body>
</html>