 function checkaddr(){
            var addr=$("textarea[name=deAddr]").val();
            var span=$("#mi1_right_div");
            if(addr==""){
            	span.html("地址不能为空");
                return false;
            }else{
            	span.html("<img src='image/shopcart/duigou2.png' width='15px' height='15px'>");
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
