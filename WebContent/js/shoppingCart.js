
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
            var message_good_id="";
            var message_good_num="";
            $("input[name2='choose']:checked").each(function(){
                var good_id=$(this).attr("good_id");
                
                var price=$(".goodspaytol[good_id="+good_id+"]").text();
                pay += new Number(price);
                var num=$(".orderIteNumberSetting[good_id="+good_id+"]").attr("value");
                message_good_id =message_good_id+good_id+","
                message_good_num=message_good_num+num+","
                sum += new Number(num)
            });

            $(".mf2_span1").html(sum);
            $(".mf2 i").html(pay);
            $(".mf2_input1").val(sum);
            $(".mf2_input2").val(pay);
            $(".mf2_input3").val(message_good_id);
            $(".mf2_input5").val(message_good_num);
            
            
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