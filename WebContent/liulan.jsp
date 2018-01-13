<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <style>
        *{
            padding:0 0;
            margin:0 auto;
        }
        /*顶部开始*/
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
        /*顶部结束*/
        .middle{
            width:900px;
        }
        /*浏览页面左部选择栏设计开始*/
        .middle_left{
            width:160px;
            float:left;
        }
        .middle_sousuo{
            width:160px;
            height:160px;
        }
        .middle_sousuo_up{
            width:160px;
            height:30px;
            line-height:30px;
            color:#666666;
            font-size:14px;
            font-weight:bold;
            background:#F9F9F9;
            border:1px solid #E7E7E7;
        }
        .middle_sousuo_under{
            width:160px;
            height:130px;
            border:1px solid #EEEEEE;
            color:#666666;
            font-size:14px;
        }
        .middle_sousuo_under_giz{
            width:160px;
            height:40px;
            line-height:40px;
            text-align:center;
        }
        .middle_sousuo_under_price{
            width:160px;
            height:40px;
            line-height:40px;
            text-align:center;
        }
        .middle_sousuo_under_button{
            width:160px;
            height:40px;
            line-height:40px;
            text-align:center;
        }
        .middle_sousuo_under .button{
            width:40px;
            height:20px;
            background:#333333;
            color:white;
            border:1px solid #333333;
            border-radius:4px;
        }
        .middle_sousuo_under .gjz{
            width:100px;
            height:20px;
        }
        .middle_sousuo_under .price{
            width:30px;
            height:20px;
        }
        .middle_fenlei{
            width:160px;
        }
        .middle_fenlei_up{
            width:160px;
            height:30px;
            line-height:30px;
            color:#666666;
            font-size:14px;
            font-weight:bold;
            background:#F9F9F9;
            border:1px solid #E7E7E7;
        }
        .middle_fenlei_under{
            width:160px;
            border:1px solid #EEEEEE;
        }
        .middle_fenlei_under ul li{
            list-style:none;
        }
        .middle_fenlei_under a{
            text-decoration: none;
        }
        .middle_fenlei_under .top{
            width:150px;
            height:20px;
            line-height:20px;
            margin-left:10px;
        }
        .middle_fenlei_under .top a{
            color:#7E7E7E;
            font-weight:bold;
            font-size:14px;
        }
        .middle_fenlei_under .bottom{
            width:160px;
            border-bottom:1px solid #EEEEEE;
        }
        .middle_fenlei_under ul{
            width:140px;
            margin-left:20px;
        }
        .middle_fenlei_under .bottom a{
            color:#7E7E7E;
            font-size:14px;
        }
        /*浏览页面左部选择栏设计结束*/
        .middle_right{
            width:736px;
            float:right;
        }
        .middle_right_up{
            width:736px;
            height:300px;
        }
        .ad{
            width:736px;
            height:300px;
        }
        .middle_right_under{
            width:736px;
            margin-top:14px;
        }
        .middle_right_under .top{
            border:1px solid #EEEEEE;
        }
        .middle_right_under .bottom{
            border:1px solid #EEEEEE;
        }
    </style>
    <link rel="stylesheet" href="css/mF_fancy.css" type="text/css">
    <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
    <script src="js/myfocus-2.0.1.min.js"></script>
    <script src="js/mF_fancy.js"></script>
    <script type="text/javascript">
        $(function(){
//            顶部开始
//            首页顶部top_up开始
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
            $(".middle_fenlei_under .top a").hover(
                    function(){
                        $(this).css("color","red");
                    },
                    function(){
                        $(this).css("color","#666666");
                    }
            )
            $(".middle_fenlei_under .bottom a").hover(
                    function(){
                        $(this).css("color","red");
                    },
                    function(){
                        $(this).css("color","#666666");
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
//            顶部结束
            $("#mflt_suoyou").toggle(
                    function(){
                        $("#mflb_suoyou").css("display","none");
                    },
                    function(){
                        $("#mflb_suoyou").css("display","block");
                    }
            )
            $("#mflt_R").toggle(
                    function(){
                        $("#mflb_R").css("display","none");
                    },
                    function(){
                        $("#mflb_R").css("display","block");
                    }
            )
            $("#mflt_A").toggle(
                    function(){
                        $("#mflb_A").css("display","none");
                    },
                    function(){
                        $("#mflb_A").css("display","block");
                    }
            )
            $("#mflt_shouji").toggle(
                    function(){
                        $("#mflb_shouji").css("display","none");
                    },
                    function(){
                        $("#mflb_shouji").css("display","block");
                    }
            )
            $("#mflt_wangluo").toggle(
                    function(){
                        $("#mflb_wangluo").css("display","none");
                    },
                    function(){
                        $("#mflb_wangluo").css("display","block");
                    }
            )
            $("#mflt_jiage").toggle(
                    function(){
                        $("#mflb_jiage").css("display","none");
                    },
                    function(){
                        $("#mflb_jiage").css("display","block");
                    }
            )
        })
    </script>
    <script type="text/javascript">
        myFocus.set({
            id:'picBox'
        })
    </script>
</head>
<body>
<!-- 顶部开始-->
<!-- 首页顶部top_up开始-->
<div class="top_up">
    <div class="top_up_left">
        <ul>
            <li>
                <div class="top_up_left_image"><image src="image/shouye/top/top_up0.png" width="25px" height="25px"></image></div>
                <div class="top_up_left_text"><a href="shouye.html">首页</a></div>
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
            <li><div class="top_up_left_text"><a href="#">淘宝网</a></div></li>
            <li><div class="top_up_left_text"><a href="#">商家支持</a></div></li>
            <li>
                <div class="top_up_left_image"><image><image src="image/shouye/top/top_up3.png" width="25px" height="25px"></image></div>
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
        <a href="#">
            <div class="top_middle_2_in_1_up">OPPO官方旗舰店</div>
            <div class="top_middle_2_in_1_under">
                <image src="image/shouye/top/top_middle_2_1.png"></image>
            </div>
        </a>
    </div>
    <div class="top_middle_2_in_2">
        <a href="shouye.html">
            <image src="image/shouye/top/top_middle_2_2.png"></image>
        </a>
    </div>
    <div class="top_middle_2_in_3">
        <a href="#">
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
        <li><a href="#">首页</a></li>
        <li><a href="#">R11s新年版上市</a></li>
        <li><a href="#">R11s旗舰热销</a></li>
        <li id="top_bottom_li4"><a href="#">旗舰R系列</a></li>
        <li id="top_bottom_li5"><a href="#">经典A系列</a></li>
        <li><a href="#">手机专区</a></li>
        <li><a href="#">配件专区</a></li>
        <li><a href="#">尊享服务</a></li>
        <li><a href="#">品牌故事</a></li>
        <li><a href="#">关注店铺</a></li>
    </ul>
</div>
<div class="top_bottom_xf" id="top_bottom_xf">
    <div class="top_bottom_xf_in_first">
        <a href="#">
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
        <a href="#">
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
        <a href="#">
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
        <a href="#">
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
        <a href="#">
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
        <a href="#">
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
        <a href="#">
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
        <a href="#">
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
        <a href="#">
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
<!-- 顶部结束-->
<div class="middle">
    <!-- 浏览页面左部选择栏设计开始-->
    <div class="middle_left">
        <div class="middle_sousuo">
            <div class="middle_sousuo_up">&nbsp;店内搜索</div>
            <div class="middle_sousuo_under">
                <form action="liulan.html" method="get">
                    <div class="middle_sousuo_under_giz">关键字:<input type="text" class="gjz"></div>
                    <div class="middle_sousuo_under_price">价格:<input type="text" class="price">-<input type="text" class="price"></div>
                    <div class="middle_sousuo_under_button"><input type="button" class="button" value="提交"></div>
                </form>
            </div>
        </div>
        <div class="middle_fenlei">
            <div class="middle_fenlei_up">&nbsp;宝贝分类</div>
            <div class="middle_fenlei_under">
                <div class="suoyou">
                    <div class="top" id="mflt_suoyou"><a href="liulan.html">查看所有宝贝</a></div>
                    <div class="bottom" id="mflb_suoyou">
                        <ul>
                            <li><a href="liulan.html">按综合</a></li>
                            <li><a href="liulan.html">按销量</a></li>
                            <li><a href="liulan.html">按新品</a></li>
                            <li><a href="liulan.html">按价格</a></li>
                        </ul>
                    </div>
                </div>
                <div class="R">
                    <div class="top" id="mflt_R"><a href="liulan.html">旗舰R系列</a></div>
                    <div class="bottom" id="mflb_R">
                        <ul>
                            <li><a href="liulan.html">R11s</a></li>
                            <li><a href="liulan.html">R11s plus</a></li>
                        </ul>
                    </div>
                </div>
                <div class="A">
                    <div class="top" id="mflt_A"><a href="liulan.html">经典A系列</a></div>
                    <div class="bottom" id="mflb_A">
                        <ul>
                            <li><a href="liulan.html">A57</a></li>
                            <li><a href="liulan.html">A79</a></li>
                            <li><a href="liulan.html">A73</a></li>
                        </ul>
                    </div>
                </div>
                <div class="shouji">
                    <div class="top" id="mflt_shouji"><a href="liulan.html">手机专区</a></div>
                    <div class="bottom" id="mflb_shouji">
                        <ul>
                            <li><a href="liulan.html">年度旗舰</a></li>
                            <li><a href="liulan.html">爆款热销</a></li>
                            <li><a href="liulan.html">经典推荐</a></li>
                        </ul>
                    </div>
                </div>
                <div class="wangluo">
                    <div class="top" id="mflt_wangluo"><a href="liulan.html">网络分类</a></div>
                    <div class="bottom" id="mflb_wangluo">
                        <ul>
                            <li><a href="liulan.html">全网通</a></li>
                        </ul>
                    </div>
                </div>
                <div class="jiage">
                    <div class="top" id="mflt_jiage"><a href="liulan.html">价格分类</a></div>
                    <div class="bottom" id="mflb_jiage">
                        <ul>
                            <li><a href="liulan.html">3000元以上</a></li>
                            <li><a href="liulan.html">2000-2999元</a></li>
                            <li><a href="liulan.html">1000-1999元</a></li>
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
                        <li>
                            <a href="#">
                                <img src="image/shouye/liulan/liulan_lunbo1.jpg"  width="736px" height="300px"/>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="image/shouye/liulan/liulan_lunbo2.jpg"  width="736px" height="300px"/>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="image/shouye/liulan/liulan_lunbo3.jpg"  width="736px" height="300px"/>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="image/shouye/liulan/liulan_lunbo4.jpg"  width="736px" height="300px"/>
                            </a>
                        </li>
                        <!-- 你可以根据需要添加更多的列 -->
                    </ul>
                </div>
            </div>
        </div>
        <div class="middle_right_under">
            <div class="top">商品浏览：</div>
            <div class="under"></div>
        </div>
    </div>
    <!-- 浏览页面右部设计开始-->
</div>
</body>
</html>