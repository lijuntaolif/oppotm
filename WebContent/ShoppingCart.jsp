<%@page import="cn.oppotm.dao.ImageDao"%>
<%@page import="cn.oppotm.entity.Good"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>购物车</title>
    <style type="text/css">
        *{
            margin: 0px auto;
            padding: 0px;
            font-size: 12px;
        }
        .middle{
            width: 1000px;

            height: auto;
            font-size: 5px;
        }
        .middle_head{

            width: 1000px;
            height: 50px;
            text-align: left;
            line-height: 50px;
        }
        .mh1{
            float: left;
            width: 150px;
        }
        .mh2{
            float: left;
            width: 395px;


        }
        .mh3{
            float: left;
            width: 125px;
        }
        .mh4{
            float: left;
            width: 125px;
        }
        .mh5{
            float: left;
            width: 125px;
        }
        .mh6{
            float: left;
            width: 80px;
        }
        .middle_middle{
            width: 998px;
            height:125px ;

            text-align: left;

            border: 1px solid #CCCCCC;

        }
        .mm1{
            float: left;
            width: 150px;
            background-color: #faf2b5;
            height:125px ;
            line-height: 125px;

        }
        .mm1_input{
            float: left;
            margin-left: 5px;
             margin-top:55px;
        }
        .mm1_img{
            margin-top: 20px;
            float: left;
        }
        .mm2{
            float: left;
            width: 395px;
            height: 125px;



        }
        .mm2 a{
            text-decoration: none;
            color: black;

        }
        .mm2_a{
            height: 80px;
            width: 395px;
            line-height: 70px;
        }
        .mm2_img{
            height: 24px;
            width: 300px;
            margin-top: 1px;
            margin-left: 0px;

        }

        .mm3{
            float: left;
            width: 125px;
            height: 125px;
            font-size: 14px;

        }
        .mm3p1{
            color: #CCCCCC;
            text-decoration: line-through;
            margin-top: 45px;
        }

        .mm4{
            float: left;
            width: 125px;
           line-height: 125px;
        }
        .mm5{
            float: left;
            width: 125px;
            font-size: 15px;
            color: red;
            line-height: 125px;
        }

        .mm6{
            float: left;
            width: 78px;
            line-height: 125px;

        }
        .mm6 p{
            color: #999999;
            text-decoration: none;
        }
        .middle_footer{
            width: 1000px;
            height:50px;
            background-color: #E5E5E5;
            margin-top: 20px;
        }
        .mf1{
            height:50px;
            width: 50px;
            line-height: 50px;
            float: left;
        }
        .mf2{
            height:50px;
            width: 500px;
            line-height: 50px;
            margin-left: 350px;
            float: left;
            font-size: 13px;
            text-align: right;
        }
        .mf2 span{
            color: red;
            font-size: 17px;
        }
        .mf2 span i{
            font-size: 17px;
        }
        .mf3{
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
        .mf3 input{
            height:50px;
            width: 100px;
            line-height: 50px;
            background-color: #AAAAAA;
            font-size: 20px;
            border: 0px;
        }

        .orderIteNumberSetting{
            width: 30px;
            height: 17px;

        }
        .mm4 a{
            text-decoration: none;
            font-size: 15px;
            width: 15px;
            height: 15px;
            border: 1px solid bisque;
        }
    </style>
    <script src="js/jquery-1.8.3.js" type="text/javascript"></script>
    <script type="text/javascript">


        <!--计算本件商品的总价格-->
        function synchronizationPrice(good_id,discountedPrice,num){
            var pay=discountedPrice*num;

            $(".goodspaytol[good_id="+good_id+"]").html(pay);
            $(".mm5 input[good_id="+good_id+"]").val(pay);

        }

        <!--同步计数和计算总金额-->
        function  synccountnum(){
            var sum=0;
            var pay=0;
            $("input[name2='choose']:checked").each(function(){
                var good_id=$(this).attr("good_id");
                var price=$(".goodspaytol[good_id="+good_id+"]").text();
                pay += new Number(price);
                var num=$(".orderIteNumberSetting[good_id="+good_id+"]").attr("value");
                sum += new Number(num)
            });

            $(".mf2_span1").html(sum);
            $(".mf2 i").html(pay);
            $(".mf2_input1").val(sum);
            $(".mf2_input2").val(pay);
        }
        <!--测试能否提交-->
        function checkSubmit(){
            var sum=$(".mf2 i").text();

            if(sum==0){
                $(".mf3 input").css("background-color","#AAAAAA");
                return false;

            }else{
                $(".mf3 input").css("background-color","red");
                return true;
            }
        }






        $(function(){
            <!--测试能否提交-->
            $("form").submit(function(){
                var flag=false;
                if(checkSubmit()==true){

                    flag=true;

                }
                return flag;


            });
            <!--鼠标移动到介绍上-->
            $(".mm2 a").mouseover(function(){
                        $(this).css({"color":"#FF6600","text-decoration":"underline"});
                    });
            $(this).mouseout(function(){
                        $(".mm2 a").css({"color":"black","text-decoration":"none"});
                    });

            $(".mm6 p").hover(
                    function(){
                        $(this).css("color","red");
                    },function(){
                        $(this).css("color","#999999");
                    }
            );
            <!--点击上部全选-->
            $(".mh1 input").click(function(){
                var chooses=document.getElementsByName("choose");

                for(var i=0;i<chooses.length;i++){
                    chooses[i].checked=document.getElementById("chooseAll1").checked;
                    if(i!=0&&i!=chooses.length-1){
                        if(chooses[i].checked){
                            $(chooses[i]).parent().parent().parent().css("background-color","#FFF8E1");
                            synccountnum();
                            checkSubmit();


                        }else{
                            $(chooses[i]).parent().parent().parent().css("background-color","white");
                            synccountnum();
                            checkSubmit();


                        }
                    }

                }

            });
            <!--点击下部全选-->
            $(".mf1 input").click(function(){
                var chooses=document.getElementsByName("choose");
                for(var i=0;i<chooses.length;i++){
                    chooses[i].checked=document.getElementById("chooseAll2").checked;
                    if(i!=0&&i!=chooses.length-1){
                        if(chooses[i].checked){
                            $(chooses[i]).parent().parent().parent().css("background-color","#FFF8E1");
                            synccountnum();
                            checkSubmit();

                        }else{
                            $(chooses[i]).parent().parent().parent().css("background-color","white");
                            synccountnum();
                            checkSubmit();
                        }
                    }
                }

            });
            <!--点击单个选择框-->
            $(".mm1_input input").click(function(){
                var choose=$(this).is(':checked');
                if(choose){
                    $(this).parent().parent().parent().css("background-color","#FFF8E1");
                    synccountnum();
                    checkSubmit();


                }
                if(!choose){
                    $(this).parent().parent().parent().css("background-color","white");
                    synccountnum();
                    checkSubmit();

                }
            });


            $(".numPlus").click(function(){
                <!--点击+ 实现函数-->
                    var good_id=$(this).attr("good_id");
                    var num=$(".orderIteNumberSetting[good_id="+good_id+"]").attr("value");
                    var inventory=$(".mm4 .inventory[good_id="+good_id+"]").val();
                    var discountedPrice=$(".mm3 .mm3p2 span[good_id="+good_id+"]").text();
                    num++;
                    if(num>inventory)
                        num=inventory;
                    $(".orderIteNumberSetting[good_id="+good_id+"]").val(num);

                    synchronizationPrice(good_id,discountedPrice,num);
                    synccountnum();


            });
            $(".numMinus").click(function(){
                <!--点击- 实现函数-->

                var good_id=$(this).attr("good_id");
                var num=$(".orderIteNumberSetting[good_id="+good_id+"]").attr("value");
                var inventory=$(".mm4 .inventory[good_id="+good_id+"]").val();
                var discountedPrice=$(".mm3 .mm3p2 span[good_id="+good_id+"]").text();
                --num;
                    if(num<1)
                        num=1;
                    $(".orderIteNumberSetting[good_id="+good_id+"]").val(num);
                    synchronizationPrice(good_id,discountedPrice,num);
                    synccountnum();



            });
            <!--输入数量事件-->

            $(".orderIteNumberSetting").blur(function(){
                    var good_id=$(this).attr("good_id");
                    var num=$(".orderIteNumberSetting[good_id="+good_id+"]").attr("value");
                    var inventory=$(".mm4 .inventory[good_id="+good_id+"]").val();
                    var discountedPrice=$(".mm3 .mm3p2 span[good_id="+good_id+"]").text();

                    if(isNaN(num)){
                        alert("这不是个数字");
                    }else{
                        if(num<1){
                            num=1;
                        }
//                            if(inventory<num){
//                                num=inventory;
//                            }
                        $(".orderIteNumberSetting[good_id="+good_id+"]").val(num);
                        synchronizationPrice(good_id,discountedPrice,num);
                        synccountnum();
                    }
            });
            $(".mm6 p").click(function(){
            	var good_id=$(this).attr("good_id");
            	var choose=confirm("确认把此商品从购物车移除？？？");
            	console.log(good_id);
            	if(choose==true){
            		$.get('DeleteCartServlet','good_id='+good_id,function(result){
            			if($.trim(result)=="true"){
            				alert("删除成功");
            			}else{
            				alert("删除失败");
            			}
            		});
            		
            	}
            	
            });
        });

    </script>
</head>
<body>
<!-- 中间开始-->
    <div class="middle">
        <div class="middle_head">
            <div class="mh1">
            		<input type="checkbox" name="choose" id="chooseAll1">
            		<input type="hidden" name="good_num" autocomplete="off" value="0">
            
            			全选</div>
            <div class="mh2">商品信息</div>
            <div class="mh3">单价</div>
            <div class="mh4">数量</div>
            <div class="mh5">金额</div>
            <div class="mh6">操作</div>
        </div>
        <%
        List<Good> list=(List<Good>)request.getAttribute("cartlist");
        
        %>
        <form action="Account.jsp" method="post">
        <%
        	session.setAttribute("good_list", list);
         	for(int i=0;i<list.size();i++){
         		Good good=new Good();
         		good=list.get(i);
         	 	ImageDao imDao=new ImageDao();
         	 	
         		
         		%>
         			 <div class="middle_middle">
            <div class="mm1">
                <div class="mm1_input"><input type="checkbox" name="choose" name2="choose"  good_id="<%=good.getGood_id()%>" value="<%=good.getGood_id()%>"></div>
                <div class="mm1_img">
                    <img src="<%=imDao.getFirstImage(good.getGood_id()) %>" width="120px" height="90px">
                </div>
            </div>
            <div class="mm2">
                <div class="mm2_a"><a href="#"><%=good.getIntroduce() %></a></div>
                <div class="mm2_img">
                    <img src="image/shopcart/gwbiao1.png" width="20px" height="20px" alt="">
                    <img src="image/shopcart/gwbiao2.png" width="20px" height="20px" alt="">
                    <img src="image/shopcart/gwbiao3.png" width="20px" height="20px" alt="">

                </div>

            </div>
            <div class="mm3">
                <p good_id="<%=good.getGood_id()%>" class="mm3p1">￥<%=good.getOriginalPrice() %></p>
                <p  class="mm3p2">￥<span  good_id="<%=good.getGood_id()%>"><%=good.getDiscountedPrice() %></span></p>
            </div>
            <div class="mm4">
                <input type="hidden" good_id="<%=good.getGood_id()%>" name="inventory" class="inventory" value="<%=good.getInventory()%>"/>
                <span class="DiscountedPrice" hidden><%=good.getDiscountedPrice() %></span>
                <a href="#nowhere" good_id="<%=good.getGood_id()%>" class="numMinus">-</a>
                <input good_id="<%=good.getGood_id()%>" class="orderIteNumberSetting" name="good_num" autocomplete="off" value="1">
                <a href="#nowhere" good_id="<%=good.getGood_id()%>" class="numPlus" stock="90">+</a>

            </div>
            <div   class="mm5">￥<span good_id="<%=good.getGood_id()%>" class="goodspaytol"><%=(int)good.getDiscountedPrice() %></span>
            	<input type="hidden" good_id="<%=good.getGood_id()%>" name="goodpaytol" value="<%=(int)good.getDiscountedPrice()%>">
            </div>
            <div  good_id="<%=good.getGood_id()%>"  class="mm6">
                <p  good_id="<%=good.getGood_id()%>" user_id=<%=session.getAttribute("user_id") %>>删除</p>
            </div>

        </div>
         		<%	
         	}
        
        %>
 
        <div class="middle_footer">
            <div class="mf1"><input type="checkbox" name="choose" id="chooseAll2" >
            
            <input type="hidden" name="good_num" autocomplete="off" value="0">全选</div>
            <div class="mf2">已选商品&nbsp;<span class="mf2_span1">0</span>&nbsp;件 &nbsp;&nbsp;&nbsp;合计（不含运费）:<span>￥<i>0</i></span>
            	<input class="mf2_input1" type="hidden" name="allcountnum" value="1">
                <input class="mf2_input2" type="hidden" name="allcountpay" value="1">
            </div>
            
            <div class="mf3"> <input type="submit" value="结&nbsp;&nbsp;&nbsp;算" id="sub" ></div>
        </div>

        </form>
        </div>


</body>

</html>