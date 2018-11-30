$(document).on('turbolinks:load',function(){

	$(".show_get_button_container").click(function(){
		$(".post_show_modal_bg").show();
		$(".post_show_modal_frame").show();
		$(".post_show_modal_picture").css("filter","none");
	});



	$(".post_show_modal_slide ul").prepend($(".post_show_modal_slide li:last-child"));
	$(".post_show_modal_slide ul").css("left", -800);

	$(".nextBtn").click(function(){
		$(".post_show_modal_slide ul").animate({"left" : "-=800px"},
			function(){
				$(".post_show_modal_slide ul").append($(".post_show_modal_slide li:first-child"));
				$(".post_show_modal_slide ul").css("left", -800);
			}
		);
	});

	$(".prevBtn").click(function(){
		$(".post_show_modal_slide ul").animate({"left" : "+=800px"},
			function(){
				$(".post_show_modal_slide ul").prepend($(".post_show_modal_slide li:last-child"));
				$(".post_show_modal_slide ul").css("left", -800);
			}
		);
	});

	$(".post_show_modal_close").click(function(){
		$(".post_show_modal_bg").hide();
		$(".post_show_modal_frame").hide();
		$(".post_show_modal_picture").css("filter","brightness(0)");
	})

});