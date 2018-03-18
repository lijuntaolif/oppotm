<%@page import="cn.oppotm.entity.Image"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cn.oppotm.dao.ImageDao"%>
<%@page import="cn.oppotm.entity.Good"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>浏览页面</title>

<link rel="stylesheet" href="css/css-show.css" type="text/css">
<link rel="stylesheet" href="css/mF_fancy.css" type="text/css">
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script src="js/myfocus-2.0.1.min.js"></script>
<script type="text/javascript" src="js/show.js"></script>
<script src="js/mF_fancy.js"></script>

<script type="text/javascript">
	myFocus.set({
		id : 'picBox'
	})
</script>
</head>
<body>
    <div class="show">
	<!-- 顶部开始-->
	<!-- 首页顶部top_up开始-->
	<div class="top_up">
		<div class="top_up_left">
			<ul>
				<li>
					<div class="top_up_left_image">
						<image src="image/shouye/top/top_up0.png" width="25px"
							height="25px"></image>
					</div>
					<div class="top_up_left_text">
						<a href="main.jsp">首页</a>
					</div>
				</li>
				<li>喵，欢迎来到天猫</li>
				<li><div class="top_up_left_text">
						<a href="#">请登录</a>
					</div></li>
				<li><div class="top_up_left_text">
						<a href="#">免费注册</a>
					</div></li>
			</ul>
		</div>
		<div class="top_up_right">
			<ul>
				<li><div class="top_up_left_text">
						<a href="#">我的淘宝</a>
					</div></li>
				<li>
					<div class="top_up_left_image">
						<image src="image/shouye/top/top_up1.png" width="25px"
							height="25px"></image>
					</div>
					<div class="top_up_left_text">
						<a href="#">购物车0件</a>
					</div>
				</li>
				<li><div class="top_up_left_text">
						<a href="#">收藏夹</a>
					</div></li>
				<li>
					<div class="top_up_left_image">
						<image src="image/shouye/top/top_up2.png" width="25px"
							height="25px"></image>
					</div>
					<div class="top_up_left_text">
						<a href="#">手机版</a>
					</div>
				</li>
				<li><div class="top_up_left_text">
						<a href="https://www.taobao.com/">淘宝网</a>
					</div></li>
				<li><div class="top_up_left_text">
						<a href="#">商家支持</a>
					</div></li>
				<li>
					<div class="top_up_left_image">
						 <image src="image/shouye/top/top_up3.png"
							width="25px" height="25px"></image>
					</div>
					<div class="top_up_left_text">网站导航</div>
				</li>
			</ul>
		</div>
	</div>
	<!--首页顶部top_up结束-->
	<!--首页顶部top_middle开始-->
	<div class="top_middle_1">
		<div class="top_middle_1_in_1">
			<image src="image/shouye/top/top_middle_1_1.png"></image>
		</div>
		<div class="top_middle_1_in_2">
			<div class="top_middle_1_in_2_up">oppo手机官方旗舰店</div>
			<div class="top_middle_1_in_2_under">
				<image src="image/shouye/top/top_middle_1_2.png"></image>
				<image src="image/shouye/top/top_middle_1_3.png"></image>
			</div>
		</div>
		<div class="top_middle_1_in_3">
			<image src="image/shouye/top/top_middle_1_5.png"></image>
		</div>
		<div class="top_middle_1_in_4">
			<div class="top_middle_1_in_4_up">手机逛</div>
			<div class="top_middle_1_in_4_under">
				<image src="image/shouye/top/top_middle_1_4.png"></image>
			</div>
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
			<a href="main.jsp"> <image
					src="image/shouye/top/top_middle_2_2.png"></image>
			</a>
		</div>
		<div class="top_middle_2_in_3">
			<a href="#?id=1">
				<div class="top_middle_2_in_3_left">
					<image src="image/shouye/top/top_middle_2_3.png"></image>
				</div>
				<div class="top_middle_2_in_3_right">
					R11s新年版上市<br> ￥3199<br> 火爆抢购中<br>
					<image src="image/shouye/top/top_middle_2_4.png"></image>
				</div>
			</a>
		</div>
	</div>
	<!--首页top_middle结束-->
	<!--首页top_bottom开始-->
	<div class="top_bottom">
		<ul>
			<li><a href="main.jsp">首页</a></li>
			<li><a href="#?id=1">R11s新年版上市</a></li>
			<li><a href="#?id=1">R11s旗舰热销</a></li>
			<li id="top_bottom_li4"><a href="#">旗舰R系列</a></li>
			<li id="top_bottom_li5"><a href="#">经典A系列</a></li>
			<li><a href="ShowServlet">手机专区</a></li>
			<li><a href="#">配件专区</a></li>
			<li><a href="#">尊享服务</a></li>
			<li><a href="#">品牌故事</a></li>
			<li><a href="#">关注店铺</a></li>
		</ul>
	</div>
	<div class="top_bottom_xf" id="top_bottom_xf">
		<div class="top_bottom_xf_in_first">
			<a href="#?id=1">
				<div class="top_text">R11s星幕新年红</div>
				<div class="img">
					<image src="image/shouye/top/xf_1.png" width="138px" height="140px"></image>
				</div>
				<div class="bottom_text">
					新年生肖设计&nbsp;全新定制UI<br> ￥3199
				</div>
			</a>
		</div>
		<div class="top_bottom_xf_in">
			<a href="#?id=1">
				<div class="top_text">R11s黑色/香槟色</div>
				<div class="img">
					<image src="image/shouye/top/xf_2.png" width="138px" height="140px"></image>
				</div>
				<div class="bottom_text">
					2000万智能双摄<br> ￥2999
				</div>
			</a>
		</div>
		<div class="top_bottom_xf_in">
			<a href="#?id=1">
				<div class="top_text">R11s红色</div>
				<div class="img">
					<image src="image/shouye/top/xf_3.png" width="138px" height="140px"></image>
				</div>
				<div class="bottom_text">
					星幕屏惊艳夺目<br> ￥3199
				</div>
			</a>
		</div>
		<div class="top_bottom_xf_in">
			<a href="#?id=3">
				<div class="top_text">R11s高配版</div>
				<div class="img">
					<image src="image/shouye/top/xf_4.png" width="138px" height="140px"></image>
				</div>
				<div class="bottom_text">
					6GB+128GB&nbsp;内存升级<br> ￥3599
				</div>
			</a>
		</div>
		<div class="top_bottom_xf_in">
			<a href="#?id=2">
				<div class="top_text">R11s&nbsp;Plus</div>
				<div class="img">
					<image src="image/shouye/top/xf_5.png" width="138px" height="140px"></image>
				</div>
				<div class="bottom_text">
					更大的全面屏拍照手机<br> ￥3699
				</div>
			</a>
		</div>
	</div>
	<div class="top_bottom_xf" id="top_bottom_xf1">
		<div class="top_bottom_xf_in_second">
			<a href="#?id=7">
				<div class="top_text">OPPO&nbsp;A83</div>
				<div class="img">
					<image src="image/shouye/top/xf_6.png" width="138px" height="140px"></image>
				</div>
				<div class="bottom_text">
					大屏全面屏<br> ￥1399
				</div>
			</a>
		</div>
		<div class="top_bottom_xf_in">
			<a href="#?id=6">
				<div class="top_text">OPPO&nbsp;A73</div>
				<div class="img">
					<image src="image/shouye/top/xf_7.png" width="138px" height="140px"></image>
				</div>
				<div class="bottom_text">
					更清晰的全面屏<br> ￥1699
				</div>
			</a>
		</div>
		<div class="top_bottom_xf_in">
			<a href="#?id=5">
				<div class="top_text">OPPO&nbsp;A79</div>
				<div class="img">
					<image src="image/shouye/top/xf_8.png" width="138px" height="140px"></image>
				</div>
				<div class="bottom_text">
					1月1日起直降200元<br> ￥2199
				</div>
			</a>
		</div>
		<div class="top_bottom_xf_in">
			<a href="#?id=4">
				<div class="top_text">OPPO&nbsp;A57</div>
				<div class="img">
					<image src="image/shouye/top/xf_9.png" width="138px" height="140px"></image>
				</div>
				<div class="bottom_text">
					美颜自拍<br> ￥1299
				</div>
			</a>
		</div>
	</div>
	<!--首页top_bottom结束-->
	<!-- 顶部结束-->
	<div class="middle">
		<!-- 浏览页面左部选择栏设计开始-->
		<div class="middle_left">
			<div class="middle_sousuo">
				<div class="middle_sousuo_up">&nbsp;店内搜索</div>
				<div class="middle_sousuo_under">
					<form action="ShowServlet2" method="Post">
						<div class="middle_sousuo_under_giz">
							关键字:<input type="text" class="gjz" name="key" value="" placeholder="OPPO R11">
						</div>
						<div class="middle_sousuo_under_price">
							价格:<input type="text" class="price" name="low" value="">-<input
								type="text" class="price" name="high" value="">
						</div>
						<div class="middle_sousuo_under_button">
							<input type="submit" class="button" value="提交">
						</div>
					</form>
				</div>
			</div>
			<div class="middle_fenlei">
				<div class="middle_fenlei_up">&nbsp;宝贝分类</div>
				<div class="middle_fenlei_under">
					<div class="suoyou">
						<div class="top" id="mflt_suoyou">
							<a href="#">查看所有宝贝</a>
						</div>
						<div class="bottom" id="mflb_suoyou">
							<ul>
								<li><a href="ShowServlet">按综合</a></li>
								<li><a href="ShowServlet">按销量</a></li>
								<li><a href="ShowServlet">按新品</a></li>
								<li><a href="ShowServlet3">按价格</a></li>
							</ul>
						</div>
					</div>
					<div class="R">
						<div class="top" id="mflt_R">
							<a href="#">旗舰R系列</a>
						</div>
						<div class="bottom" id="mflb_R">
							<ul>
								<li><a href="ShowServlet4?name=<%="R11s"%>">R11s</a></li>
								<li><a href="ShowServlet4?name=<%="R11sPlus"%>">R11s
										plus</a></li>
							</ul>
						</div>
					</div>
					<div class="A">
						<div class="top" id="mflt_A">
							<a href="#">经典A系列</a>
						</div>
						<div class="bottom" id="mflb_A">
							<ul>
								<li><a href="ShowServlet4?name=<%="A57"%>">A57</a></li>
								<li><a href="ShowServlet4?name=<%="A79"%>">A79</a></li>
								<li><a href="ShowServlet4?name=<%="A73"%>">A73</a></li>
							</ul>
						</div>
					</div>
					<div class="shouji">
						<div class="top" id="mflt_shouji">
							<a href="#">手机专区</a>
						</div>
						<div class="bottom" id="mflb_shouji">
							<ul>
								<li><a href="#">年度旗舰</a></li>
								<li><a href="#">爆款热销</a></li>
								<li><a href="#">经典推荐</a></li>
							</ul>
						</div>
					</div>
					<div class="wangluo">
						<div class="top" id="mflt_wangluo">
							<a href="#">网络分类</a>
						</div>
						<div class="bottom" id="mflb_wangluo">
							<ul>
								<li><a href="ShowServlet">全网通</a></li>
							</ul>
						</div>
					</div>
					<div class="jiage">
						<div class="top" id="mflt_jiage">
							<a href="#">价格分类</a>
						</div>
						<div class="bottom" id="mflb_jiage">
							<ul>
								<li><a href="ShowServlet5?num=<%=3000%>">3000元以上</a></li>
								<li><a href="ShowServlet6?low=<%=2000%>&high=<%=2999%>">2000-2999元</a></li>
								<li><a href="ShowServlet6?low=<%=1000%>&high=<%=1999%>">1000-1999元</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--浏览页面左部选择栏设计结束 -->
		<!-- 浏览页面右部设计开始-->
		<div class="middle_right">
			<div class="middle_right_up">
				<!-- 焦点图盒子 -->
				<div id="picBox" class="ad">
					<!-- 载入中的Loading图片(可选) -->
					<div class="loading">
						<img src="image/shouye/lunbo/loading.gif" alt="请稍候..." />
					</div>
					<!-- 内容列表 -->
					<div class="pic">
						<ul>
							<li><a href="#"> <img
									src="image/shouye/liulan/liulan_lunbo1.jpg" width="786px"
									height="300px" />
							</a></li>
							<li><a href="#"> <img
									src="image/shouye/liulan/liulan_lunbo2.jpg" width="786px"
									height="300px" />
							</a></li>
							<li><a href="#"> <img
									src="image/shouye/liulan/liulan_lunbo3.jpg" width="786px"
									height="300px" />
							</a></li>
							<li><a href="#"> <img
									src="image/shouye/liulan/liulan_lunbo4.jpg" width="786px"
									height="300px" />
							</a></li>
							<!-- 你可以根据需要添加更多的列 -->
						</ul>
					</div>
				</div>
			</div>
		    <!--商品浏览的设计  -->
			<div class="middle_right_under">
				<div class="top">商品浏览：</div>
					<script type="text/javascript">
						$(function() {
							$(".good_middle_in img").click(
									function() {
										var good_id=$(this).attr("good_id");
										$(".good_top[good_id="+good_id+"] img").attr("src",
														$(this).attr("src"));
									})
							$(".good_middle_in img").focus(function() {
								$(this).css("border", "2px solid red");
							})
							$(".good_bottom_bottom a").hover(function(){
								$(this).css("text-decoration","underline");
							},function(){
								$(this).css("text-decoration","none");
							})
						})
					</script>
				<div class="under">
					<%
						List<Good> glist= (ArrayList<Good>) request.getAttribute("glist");
						List<String> ilist = null;
						ImageDao imagedao = new ImageDao();
						for (int i = 0; i < glist.size(); i++) {
							Good good = glist.get(i);
							int good_id=good.getGood_id();
							ilist = imagedao.selectByGoodid(good.getGood_id());
					%>
					<div class="good">
						<div class="good_top" id="good_top" good_id="<%=good_id%>">
							<a href="#?id=<%=good.getGood_id()%>"> 
							<img src="<%=ilist.get(0)%>" width="180px" height="180px"></img>
							</a>
						</div>
						<div class="good_middle">
						<%
						for(int j=1;j<ilist.size();j++) {
							 String path=ilist.get(j);
							 
						%>
							<div class="good_middle_in" id="good_middle">
								<img src="<%=path%>" width="35px" height="35px" good_id="<%=good_id%>"></img>
							</div>
						<%
						}
						%>
						</div>
						<div class="good_bottom">
							<div class="good_bottom_top">
								<span><%=good.getOriginalPrice()%></span>
							</div>
							<div class="good_bottom_bottom">
								<a href="#?id=<%=good.getGood_id()%>"><%=good.getIntroduce()%></a>
							</div>
						</div>
					</div>
					<%
		}
	%>
				</div>
			    </div>
		    </div>
		<!-- 浏览页面右部设计结束-->
	</div>
	<!-- 中间设计结束 -->
	<!-- 底部设计开始 -->
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
	<!-- 底部设计结束 -->
	</div>
</body>
</html>