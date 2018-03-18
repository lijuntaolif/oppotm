$(function() {
		//            顶部开始
		//            首页顶部top_up开始
		$(".top_up_left_text a").hover(function() {
			$(this).css({
				"color" : "red",
				"text-decoration" : "underline"
			});
		}, function() {
			$(this).css({
				"color" : "#999999",
				"text-decoration" : "none"
			});
		})
		//首页顶部top_up结束
		//首页顶部top_bottom开始
		$(".top_bottom a").hover(function() {
			$(this).css("color", "#999999");
		}, function() {
			$(this).css("color", "black");
		})
		$("#top_bottom_li4").hover(function() {
			$("#top_bottom_xf").show();
		}, function() {
			$("#top_bottom_xf").hide();
		})
		$("#top_bottom_li5").hover(function() {
			$("#top_bottom_xf1").show();
		}, function() {
			$("#top_bottom_xf1").hide();
		})
		$(".middle_fenlei_under .top a").hover(function() {
			$(this).css("color", "red");
		}, function() {
			$(this).css("color", "#666666");
		})
		$(".middle_fenlei_under .bottom a").hover(function() {
			$(this).css("color", "red");
		}, function() {
			$(this).css("color", "#666666");
		})

		$("#top_bottom_xf").hover(function() {
			$(this).show();
		}, function() {
			$(this).hide();
		})
		$("#top_bottom_xf1").hover(function() {
			$(this).show();
		}, function() {
			$(this).hide();
		})
		//首页顶部top_bottom结束
		//            顶部结束
		$("#mflt_suoyou").toggle(function() {
			$("#mflb_suoyou").css("display", "none");
		}, function() {
			$("#mflb_suoyou").css("display", "block");
		})
		$("#mflt_R").toggle(function() {
			$("#mflb_R").css("display", "none");
		}, function() {
			$("#mflb_R").css("display", "block");
		})
		$("#mflt_A").toggle(function() {
			$("#mflb_A").css("display", "none");
		}, function() {
			$("#mflb_A").css("display", "block");
		})
		$("#mflt_shouji").toggle(function() {
			$("#mflb_shouji").css("display", "none");
		}, function() {
			$("#mflb_shouji").css("display", "block");
		})
		$("#mflt_wangluo").toggle(function() {
			$("#mflb_wangluo").css("display", "none");
		}, function() {
			$("#mflb_wangluo").css("display", "block");
		})
		$("#mflt_jiage").toggle(function() {
			$("#mflb_jiage").css("display", "none");
		}, function() {
			$("#mflb_jiage").css("display", "block");
		})
	})