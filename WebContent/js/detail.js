/*
* fancy v1.0
* Date 2012.5.8
* Author koen_lee
*/
$(function(){
	var stock =$(".inventory").val();
	$(".productNumberSetting").keyup(function(){
		var num= $(".productNumberSetting").val();
		num = parseInt(num);
		if(isNaN(num))
			num= 1;
		if(num<=0)
			num = 1;
		if(num>stock)
			num = stock;
		$(".productNumberSetting").val(num);
	});
	
	$(".increaseNumber").click(function(){
		
		var num= $(".productNumberSetting").val();
		num++;
		if(num>stock)
			num = stock;
		$(".productNumberSetting").val(num);
	});
	$(".decreaseNumber").click(function(){
		var num= $(".productNumberSetting").val();
		--num;
		if(num<=0)
			num=1;
		$(".productNumberSetting").val(num);
	});
	

	$("img.smallImage").mouseenter(function(){
		var bigImageURL = $(this).attr("bigImageURL");
        $("img.bigImg").attr("src",bigImageURL);
	});
	$(".addCartButton").click(function(){
		
		var user_id=$("#user_id").val();
		var good_id=$("#good_id").val();
		var choose=confirm("确认加入购物车吗");
		if(choose==true){
			$.ajax({
				url:'AddCartServlet',
				type:'get',
				data:{
					'user_id': user_id,
					'good_id': good_id
				},
				success:function(result){
					if($.trim(result)=="1"){
						alert("添加成功");
					}else if($.trim(result)=="2"){
						alert("所选商品已在购物车");
					}else{
						alert("添加失败");
					}
				}
				
			
				
			});
		}
		
	});
	
	
	
	
});