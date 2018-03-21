<%@page import="cn.oppotm.dao.ShopCartDao"%>
<%@page import="cn.oppotm.dao.GoodDao"%>
<%@page import="cn.oppotm.entity.Good"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品购买</title>


	<link href="css/css-detail.css" rel="stylesheet">
 
  	<link rel="stylesheet" href="css/css-main-footer.css" type="text/css">
   	<link rel="stylesheet" href="css/css-main-top.css" type="text/css">

<script src="js/jquery-1.8.3.js"></script>
<script src="js/detail.js"></script>
<script src="js/main-top.js" type="text/javascript"></script>
</head>
<body>

<%!String name = null;%>
<%
	name=(String)session.getAttribute("name");


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


	<!-- 接收参数 -->
	<%
		
		List<String> url_list = (List<String>) request.getAttribute("urllist");
		List<String> url_list2 = (List<String>) request.getAttribute("urllist2");
		Good good=(Good)request.getAttribute("good");
	
				
	%>


	<!--图片和信息主体-->
	
	<div class="imgAndInfo">
		<!--图片部分-->
		<div class="imgInimgAndInfo">


			<!-- 大图部分-->
			<img src="<%=url_list.get(1)%>" class="bigImg">
			<%
				for (int i = 0; i < url_list.size(); i++) {
			%>
			<!--小图部分-->
			<div class="smallImageDiv">
				<img src="<%=url_list.get(i)%>" bigImageURL="<%=url_list.get(i)%>"
					class="smallImage">
					
				<%
					}
				%>
			</div>

			<div class="img4load hidden"></div>
		</div>
		<!--信息部分-->
		<div class="infoInimgAndInfo">
			<!--商品标题-->
			<div class="productTitle"><%=good.getIntroduce()%></div>

			<!--商品价格-->
			<div class="productPrice">
				<div class="juhuasuan">
					<span class="juhuasuanBig">聚划算</span> <span>此商品即将参加聚划算，<span
						class="juhuasuanTime">1天19小时</span>后开始，
					</span>
				</div>
				<div class="productPriceDiv">
					<!-- 购物券-->
					<div class="gouwujuanDiv">
						<img height="16px" src="image/detail/gouwujuan.png"> <span>
							全天猫实物商品通用</span>
					</div>
					<!-- 原价格-->
					<div class="originalDiv">
						<span class="originalPriceDesc">价格</span> <span
							class="originalPriceYuan">¥</span> <span class="originalPrice">
							<%=good.getOriginalPrice() %></span>
					</div>
					<!-- 促销价-->
					<div class="promotionDiv">
						<span class="promotionPriceDesc">促销价 </span> <span
							class="promotionPriceYuan">¥</span> <span class="promotionPrice">
							<%=good.getDiscountedPrice() %>
							</span>
					</div>
				</div>
			</div>
			<!--购买数量-->
			
			<div class="productNumber">
				<span>数量</span> <span> <span class="productNumberSettingSpan">
						<input class="productNumberSetting" id= "productNumberSetting" type="text" value="1">
						
			
				</span> <span class="arrow"> <a href="#nowhere"
						class="increaseNumber"> <span class="updown"> <img id="increaseNumber" onclick="changenum()"
								src="image/detail/increase.png">
						</span>
					</a> <span class="updownMiddle"> </span> <a href="#nowhere"
						class="decreaseNumber"> <span class="updown"> <img
								src="image/detail/decrease.png">
						</span>
					</a>

				</span> 件
				</span> <span>库存<%=good.getInventory() %>件</span><input class="inventory" type="hidden" value=<%=good.getInventory() %>>
			</div>

			<!--购买/加入购物车-->
			<div class="buyDiv">
		
				<div class="buyLink" >
				 <form action="<%if(name==null){
					 %>login.jsp<%
				 }else{ %>BuyNowServlet<%}
					 %>" method="get">
				 	<input type="submit" id="buyButton" value="立即购买">
				 	<input type="hidden" id="user_id" name="userid" value="<%=session.getAttribute("user_id")%>">
				 	<input type="hidden" id="good_id" name="goodid" value="<%=good.getGood_id()%>">
				 	
				 	<input type="hidden" id="good_num" name="goodnum" value="1">
				 	
				 	<input type="hidden" id="good_pay" name="goodpay" value="<%=good.getDiscountedPrice()%>">
				 	<input type="hidden" id="good_price" name="goodprice" value="<%=good.getDiscountedPrice()%>">
				 	
				 	
				 </form>
				 </div>
					<div class="addCartLink">
					<%
						if(name==null){
							%>
							<button id="addCartButton">
							<a href="login.jsp">
						<span class="glyphicon glyphicon-shopping-cart"></span>加入购物车
					</a>
					</button>
							<%
						}else{
							%>
							<button id="addCartButton">
						<span class="glyphicon glyphicon-shopping-cart"></span>加入购物车
					</button>
							<%
						}
					
					%>
					
					
					</div>
				
			</div>
		</div>
	</div>
	
	<!--底下详情部分-->
<div class="underdetail">
<div class="good_detail">
商品详情
</div>

			<%
				for (int i = 0; i < url_list2.size(); i++) {
			%>
		
			
				<img class="underdetailimg"  src="<%=url_list2.get(i)%>" >
					
				<%
					}
				%>
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