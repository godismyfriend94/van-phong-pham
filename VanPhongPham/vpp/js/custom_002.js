jQuery(document).ready(function($) {
	$("#basic_combo,#basic_combo_nav,#basic_combo_left_01,#basic_combo_left_02,#basic_combo_left_03").sexyCombo();	
	jQuery('.your_cart_bottom h2.title').click(function(){
		  if ($(".content_your_cart_bottom").is(":hidden")) {
			$(".content_your_cart_bottom").slideDown("slow");
			$(this).addClass('down_arrow')
		  } else {
			$(".content_your_cart_bottom").slideUp("slow");
			$(this).removeClass('down_arrow')
		  }
		  return false;
	});
	jQuery('.content_testimonials .slide_content') 
		.cycle({ 
		fx:     'fade',
		speed:  1000, 
		timeout: 0,
		next:   '.content_testimonials a.next_testimonials', 
		prev:   '.content_testimonials a.prev_testimonials'	
	});
});


function interfloraRenderCart() {
	var objCartBlock = jQuery('#divStayBottomLeft');
	if ($(".content_your_cart_bottom").is(":hidden")) {
		$(".content_your_cart_bottom").slideDown("slow");
		objCartBlock.addClass('down_arrow');
	}

}