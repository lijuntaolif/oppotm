<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <style>
        *{
            padding:0;
            margin:0 auto;
        }
        /*首页顶部top_up开始*/
        .top_up{
            width:1300px;
            height:25px;
            background-color:#F2F2F2;
            color:#999999;
            font-size:14px;
        }
        .top_up_left{
            width:700px;
            height:25px;
            float:left;
        }
        .top_up_left ul{
            list-style: none;
            margin-left:30px;
        }
        .top_up_left ul li{
            height:25px;
            line-height:25px;
            float:left;
            margin-left:20px;
        }
        .top_up_left_image{
            float:left;
            width:25px;
            height:25px;
        }
        .top_up_left_text{
            float:left;
        }
        .top_up_left_text a{
            text-decoration: none;
            color:#999999;
        }
        .top_up_right{
            width:600px;
            height:25px;
            float:right;
        }
        .top_up_right ul{
            list-style: none;
        }
        .top_up_right ul li{
            height:25px;
            line-height:25px;
            float:left;
            margin-left:20px;
        }
        /*首页顶部top_up结束*/
        /*首页顶部top_middle开始*/
        .top_middle_1{
            width:1300px;
            height:80px;
        }
        .top_middle_1_in_1{
            width:180px;
            height:50px;
            float:left;
            margin-left:40px;
            margin-top:10px;
        }
        .top_middle_1_in_2{
            width:140px;
            height:40px;
            float:left;
            margin-top:20px;
            border-left:1px solid #F0F0F0;
            border-right:1px dashed #F0F0F0;
        }
        .top_middle_1_in_2_up{
            font-size:10px;
            font-weight: bold;
            margin-left:10px;
        }
        .top_middle_1_in_2_under{
            margin-left:10px;
        }
        .top_middle_1_in_3{
            width:120px;
            height:50px;
            float:left;
            margin-top:10px;
        }
        .top_middle_1_in_4{
            width:60px;
            height:40px;
            float:left;
            margin-top:20px;
            border-left:1px solid #F0F0F0;
        }
        .top_middle_1_in_4_up{
            font-size:12px;
            color:#999999;
            margin-left:10px;
        }
        .top_middle_1_in_4_under{
            margin-left:10px;
        }
        .top_middle_1_in_5{
            width:600px;
            height:80px;
            float:right;
        }
        .sy_sousuo{
            margin-top:20px;
            width:400px;
            height:30px;
            border:3px solid #FF0036;
            float:left;
            margin-left:30px;
        }
        .sy_button{
            margin-top:20px;
            width:80px;
            height:36px;
            line-height:36px;
            text-align: center;
            background-color:#FF0036;
            color:white;
            font-size:16px;
            float:left;
        }
        .top_middle_2{
            width:1300px;
            height:122px;
            border-top:1px solid #C8BAAA;
            border-bottom:1px solid #D5D5D5;
        }
        .top_middle_2_in_1{
            margin-top:40px;
            margin-left:40px;
            width:200px;
            height:60px;
            float:left;
        }
        .top_middle_2_in_1 a{
            text-decoration:none;
            color:#2C2C2C;
            font-weight:bold;
        }
        .top_middle_2_in_2{
            margin-left:300px;
            margin-top:40px;
            width:200px;
            height:60px;
            float:left;
        }
        .top_middle_2_in_3{
            float:right;
            margin-right:40px;
            margin-top:20px;
        }
        .top_middle_2_in_3_left{
            float:left;
        }
        .top_middle_2_in_3_right{
            float:right;
            margin-top:10px;
            color:#5D5D5D;
            font-weight:bold;
            font-size:14px;
        }
        /*首页top_middle结束*/
        /*首页top_bottom开始*/
        .top_bottom{
            width:1300px;
            height:50px;
            line-height:50px;
        }
        .top_bottom ul{
            list-style:none;
            width:1300px;
        }
        .top_bottom ul li{
            float:left;
            margin-left:50px;
        }
        .top_bottom a{
            text-decoration: none;
            color:black;
        }
        .top_bottom_xf{
            left:0;
            top:279px;
            width:1300px;
            height:300px;
            background:#F5F5F5;
            margin-top:0;
            margin-left:22px;
            position:absolute;
            z-index:3;
            display:none;
            text-align:center;
        }
        .top_bottom_xf a{
            text-decoration:none;
        }
        .top_bottom_xf_in_first{
            width:200px;
            height:240px;
            margin-top:30px;
            float:left;
            margin-left:100px;
        }
        .top_bottom_xf_in{
            width:200px;
            height:240px;
            margin-top:30px;
            float:left;
            margin-left:20px;
        }
        .top_bottom_xf .top_text{
            color:#4E4E4E;
            font-size:18px;
            font-family:微软雅黑;
            font-weight:bold;
        }
        .top_bottom_xf .img{
            margin-top:10px;
            margin-bottom:10px;
        }
        .top_bottom_xf .bottom_text{
            color:#6E6E6E;
        }
        .top_bottom_xf .top_bottom_xf_in_second{
            width:200px;
            height:240px;
            margin-top:30px;
            float:left;
            margin-left:200px;
        }
        /*首页top_bottom结束*/
        /*首页middle开始*/
        .middle{
            width:1300px;
        }
        .middle_in1{
            width:1300px;
            height:512px;
        }
        .middle .ad{
            width:1300px;
            height:500px;
        }
        .middle_in2{
            width:1300px;
            height:650px;
            background:#AE0323;
        }
        .middle_in2_ck{
            width:1300px;
            height:100px;
            background:#AE0323;
        }
        .middle_in2_up{
            width:1300px;
            height:100px;
            background:#AE0323;
            color:#DDBF89;
            font-size:50px;
            font-weight:bolder;
            text-align:center;
        }
        .middle_in2_under{
            width:1300px;
            height:400px;
        }
        .middle_in2_under_1{
            float:left;
            margin-left:140px;
        }
        .middle_in2_under_2{
            float:left;
            margin-left:10px;
        }
        .middle_in2_under_3{
            float:left;
            margin-left:10px;
        }
        .middle_in2_under_4{
            float:left;
            margin-left:10px;
        }
        .middle_in3{
            width:1300px;
            height:900px;
            background:#EFEFEF;
        }
        .middle_in3_ck{
            width:1300px;
            height:100px;
            background:#EFEFEF;
        }
        .middle_in3_up{
            width:1300px;
            height:100px;
            background:#EFEFEF;
            color:#A38851;
            font-size:50px;
            font-weight:bolder;
            text-align:center;
        }
        .middle_in3_under{
            width:1300px;
            height:800px;
            text-align: center;
        }
        .middle_in4{
            width:1300px;
            height:2150px;
            background:#AE0323 ;
        }
        .middle_in4_ck{
            width:1300px;
            height:100px;
            background:#AE0323;
        }
        .middle_in4_up{
            width:1300px;
            height:100px;
            background:#AE0323;
            color:#DDBF89;
            font-size:50px;
            font-weight:bolder;
            text-align:center;
        }
        .middle_in4_under{
            width:1300px;
            height:1950px;
            text-align:center;
        }
        .middle_in4_under_2{
            margin-top:20px;
        }
        .middle_in4_under_3{
            margin-top:20px;
        }
        .middle_in5{
            width:1300px;
            height:1600px;
            background:#EFEFEF;
        }
        .middle_in5_ck{
            width:1300px;
            height:100px;
            background:#EFEFEF;
        }
        .middle_in5_up{
            width:1300px;
            height:100px;
            background:#EFEFEF;
            color:#A38851;
            font-size:50px;
            font-weight:bolder;
            text-align:center;
        }
        .middle_in5_under{
            width:1300px;
            height:1400px;
            text-align: center;
        }
        .middle_in5_under_2{
            margin-top:30px;
        }
        .middle_in5_under_3{
            margin-top:30px;
        }
        .middle_in6{
            width:1300px;
            height:650px;
            background:#AE0323 ;
        }
        .middle_in6_ck{
            width:1300px;
            height:100px;
            background:#AE0323;
        }
        .middle_in6_up{
            width:1300px;
            height:100px;
            background:#AE0323;
            color:#DDBF89;
            font-size:50px;
            font-weight:bolder;
            text-align:center;
        }
        .middle_in6_under{
            width:1300px;
            height:400px;
        }
        .middle_in6_under_left{
            float:left;
            margin-left:200px;
        }
        .middle_in6_under_right{
            float:right;
            margin-right:200px;
        }
        .middle_in7{
            width:1300px;
            height:500px;
            background:#FFFFFF;
            border-bottom:2px solid #D1D7DC;
        }
        .middle_in7_ck{
            width:1300px;
            height:50px;
            background:#FFFFFF;
        }
        .middle_in7_in{
            width:1300px;
            height:450px;
            text-align: center;
        }
        /*首页middle结束*/
        /*首页footer开始*/
        .bottom_table{
            width: 1300px;
            height: 335px;

            background-color: white;
        }
        .bottom_table .bor{
            border-right: 1px solid #F5F5F5;
            width: 250px;

        }
        .bottom_table .bor4{
            width: 250px;
        }

        /*下部第一个表格结束*/
        .bottom_foot{
            height: 200px;
            width: 1190px;
            background-color: white;
            border-top:1px solid #F5F5F5;
        }
        .bottom_foot0{
            height: 200px;
            width: 110px ;
            float: left;
        }
        .bottom_foot1{
            height: 200px;
            width: 215px;

            float: left;
        }
        .bottom_foot2{
            height: 200px;
            width: 215px;

            float: left;
        }
        .bottom_foot3{
            height: 200px;
            width: 215px;

            float: left;
        }
        .bottom_foot4{
            height: 200px;
            width: 215px;

            float: left;
        }
        .bottom_foot5{
            height: 200px;
            width: 215px;

            float: left;
        }

        .logo_tm{
            width: 1300px;
            height: 24px;
            background-color: white;
            border-bottom: 3px solid #C31511;
        }
        .logo_tm1{
            margin-left: 160px;
        }
        .last{
            width: 1300px;
            height: 300px;
            background-color: black;
        }
        .last .t1{
            color: white;
            font-size: 13px;
        }
        .last .t2{
            color: #8E8B86;
            font-size: 13px;
        }
        /*首页footer结束*/
    </style>
    <link rel="stylesheet" href="css/mF_fancy.css" type="text/css">
    <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
    <script src="js/myfocus-2.0.1.min.js"></script>
    <script src="js/mF_fancy.js"></script>
    <script type="text/javascript">
        $(function(){
            <!--首页顶部top_up开始-->
            $(".top_up_left_text a").hover(function(){
                        $(this).css({"color":"red","text-decoration":"underline"});
                    },function(){
                        $(this).css({"color":"#999999","text-decoration":"none"});
                    }
            )
            //首页顶部top_up结束
            //首页顶部top_bottom开始
            $(".top_bottom a").hover(
                    function(){
                        $(this).css("color","#999999");
                    },
                    function(){
                        $(this).css("color","black");
                    }
            )
            $("#top_bottom_li4").hover(
                    function(){
                        $("#top_bottom_xf").show();
                    },
                    function(){
                        $("#top_bottom_xf").hide();
                    }
            )
            $("#top_bottom_li5").hover(
                    function(){
                        $("#top_bottom_xf1").show();
                    },
                    function(){
                        $("#top_bottom_xf1").hide();
                    }
            )
              $("#top_bottom_xf").hover(
                    function(){
                        $(this).show();
                    },
                    function(){
                        $(this).hide();
                    }
            )
            $("#top_bottom_xf1").hover(
                    function(){
                        $(this).show();
                    },
                    function(){
                        $(this).hide();
                    }
            )
            //首页顶部top_bottom结束
        })
    </script>
    <script type="text/javascript">
        myFocus.set({
            id:'picBox'
        })
    </script>

</head>
<body>
<!-- 首页顶部top_up开始-->
<div class="top_up">
    <div class="top_up_left">
        <ul>
            <li>
                <div class="top_up_left_image"><image src="image/shouye/top/top_up0.png" width="25px" height="25px"></image></div>
                <div class="top_up_left_text"><a href="main.jsp">首页</a></div>
            </li>
            <li>喵，欢迎来到天猫</li>
            <li><div class="top_up_left_text"><a href="#">请登录</a></div></li>
            <li><div class="top_up_left_text"><a href="#">免费注册</a></div></li>
        </ul>
    </div>
    <div class="top_up_right">
        <ul>
            <li><div class="top_up_left_text"><a href="#">我的淘宝</a></div></li>
            <li>
                <div class="top_up_left_image"><image src="image/shouye/top/top_up1.png" width="25px" height="25px"></image></div>
                <div class="top_up_left_text"><a href="#">购物车0件</a></div>
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
            新年生肖设计&nbsp;全新定制UI<br>
            ￥3199
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
            2000万智能双摄<br>
            ￥2999
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
            星幕屏惊艳夺目<br>
            ￥3199
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
            6GB+128GB&nbsp;内存升级<br>
            ￥3599
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
            更大的全面屏拍照手机<br>
            ￥3699
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
            大屏全面屏<br>
            ￥1399
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
            更清晰的全面屏<br>
            ￥1699
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
            1月1日起直降200元<br>
            ￥2199
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
            美颜自拍<br>
            ￥1299
        </div>
        </a>
    </div>
</div>
<!--首页top_bottom结束-->
<!--首页middle开始-->
<div class="middle">
    <div class="middle_in1">
        <!-- 焦点图盒子 -->
        <div id="picBox" class="ad">
            <!-- 载入中的Loading图片(可选) -->
            <div class="loading">
                <img src="image/shouye/lunbo/loading.gif" alt="请稍候..." />
            </div>
            <!-- 内容列表 -->
            <div class="pic">
                <ul>
                    <li>
                        <a href="#?id=1">
                            <img src="image/shouye/lunbo/lunbo.jpg"  width="1300px" height="500px"/>
                        </a>
                    </li>
                    <li>
                        <a href="#?id=7">
                            <img src="image/shouye/lunbo/lunbo (2).jpg"  width="1300px" height="500px"/>
                        </a>
                    </li>
                    <!-- 你可以根据需要添加更多的列 -->
                </ul>
            </div>
        </div>
    </div>
    <div class="middle_in2">
        <div class="middle_in2_ck"></div>
        <div class="middle_in2_up">
            <span>新年爆款推荐</span>
        </div>
        <div class="middle_in2_under">
            <div class="middle_in2_under_1">
                <a href="#?id=1"><image src="image/shouye/middle/middle_2_1.png"></image></a>
            </div>
            <div class="middle_in2_under_2">
                <a href="#?id=1"><image src="image/shouye/middle/middle_2_2.png"></image></a>
            </div>
            <div class="middle_in2_under_3">
                <a href="#?id=1"><image src="image/shouye/middle/middle_2_3.png"></image></a>
            </div>
            <div class="middle_in2_under_4">
                <a href="#?id=7"><image src="image/shouye/middle/middle_2_4.png"></image></a>
            </div>
        </div>
    </div>
    <div class="middle_in3">
        <div class="middle_in3_ck"></div>
        <div class="middle_in3_up">
            <span>新年臻选暖冬好礼</span>
        </div>
        <div class="middle_in3_under">
            <a href="#?id=1"><image src="image/shouye/middle/middle_3_1.png"></image></a>
        </div>
    </div>
    <div class="middle_in4">
        <div class="middle_in4_ck"></div>
        <div class="middle_in4_up">
            <span>拍照更好的全面屏手机</span>
        </div>
        <div class="middle_in4_under">
            <div class="middle_in4_under_1">
                <a href="#?id=1"><image src="image/shouye/middle/middle_4_1.png"></image></a>
            </div>
            <div class="middle_in4_under_2">
                <a href="#?id=1"><image src="image/shouye/middle/middle_4_2.png"></image></a>
            </div>
            <div class="middle_in4_under_3">
                <a href="#?id=2"><image src="image/shouye/middle/middle_4_3.png"></image></a>
            </div>
        </div>
    </div>
    <div class="middle_in5">
        <div class="middle_in5_ck"></div>
        <div class="middle_in5_up">
            <span>全面屏轻旗舰家族</span>
        </div>
        <div class="middle_in5_under">
            <div class="middle_in5_under_1">
                <a href="#?id=5"><image src="image/shouye/middle/middle_5_1.png"></image></a>
            </div>
            <div class="middle_in5_under_2">
                <a href="#?id=6"><image src="image/shouye/middle/middle_5_2.png"></image></a>
            </div>
            <div class="middle_in5_under_3">
                <a href="#?id=7"><image src="image/shouye/middle/middle_5_3.png"></image></a>
            </div>
        </div>
    </div>
    <div class="middle_in6">
        <div class="middle_in6_ck"></div>
        <div class="middle_in6_up">
            <span>自然美颜&nbsp呈现清晰</span>
        </div>
        <div class="middle_in6_under">
            <div class="middle_in6_under_left">
                <a href="#"><image src="image/shouye/middle/middle_6_1.png"></image></a>
            </div>
            <div class="middle_in6_under_right">
                <a href="#?id=4"><image src="image/shouye/middle/middle_6_2.png"></image></a>
            </div>
        </div>
    </div>
    <div class="middle_in7">
        <div class="middle_in7_ck"></div>
        <div class="middle_in7_in">
            <image src="image/shouye/middle/middle_7_1.png"></image>
        </div>
    </div>
</div>
<!--首页middle结束-->
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