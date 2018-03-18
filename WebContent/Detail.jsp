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

<style>


</style>
<link href="css/css-detail.css" rel="stylesheet">
<script src="js/jquery-1.8.3.js"></script>
<script src="js/detail.js"></script>
</head>
<body>




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
				 <form action="BuyNowServlet" method="get">
				 	<input type="submit" id="buyButton" value="立即购买">
				 	<input type="hidden" id="user_id" name="userid" value="<%=session.getAttribute("user_id")%>">
				 	<input type="hidden" id="good_id" name="goodid" value="<%=good.getGood_id()%>">
				 	
				 	<input type="hidden" id="good_num" name="goodnum" value="1">
				 	
				 	<input type="hidden" id="good_pay" name="goodpay" value="<%=good.getDiscountedPrice()%>">
				 	<input type="hidden" id="good_price" name="goodprice" value="<%=good.getDiscountedPrice()%>">
				 	
				 
				 	
				 	
				 </form>
				 </div>
					<div class="addCartLink">
					<button id="addCartButton">
						<span class="glyphicon glyphicon-shopping-cart"></span>加入购物车
					</button>
					
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
	




</body>
</html>