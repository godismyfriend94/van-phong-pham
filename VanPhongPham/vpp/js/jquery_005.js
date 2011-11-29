(function($) {
	$.fn.thumbPopup = function(options)
	{
		if(options.indicator) {
			var image = new Image();
			image.src = options.indicator;
		}
		//Combine the passed in options with the default settings
		settings = jQuery.extend({
			popupId: "thumbPopup",
			popupCSS: {'border': '1px solid #AA6262', 'background': '#FFFFFF', 'z-index': '9999999'},
			imgSmallFlag: "_t",
			imgLargeFlag: "_l",
			indicator: "",
			cursorTopOffset: 15,
			cursorLeftOffset: 15,
			//loadingHtml: "<span style='padding: 5px;'>Loading</span>"
			loadingHtml: "<div style='padding: 4px;'>Loading <img align='absmiddle' src='"+options.indicator+"'></div>"
		}, options);
		
		
		//Create our popup element
		popup =
		$("<div />")
		.css(settings.popupCSS)
		.attr("id", settings.popupId)
		.css("position", "absolute")
		.appendTo("body").hide();
		
		//Attach hover events that manage the popup
		$(this)
		.hover(setPopup)
		.mousemove(updatePopupPosition)
		.mouseout(hidePopup);
		
		function setPopup(event)
		{
			var self = $(this);
			var fullImgURL = $(this).attr("src").replace(settings.imgSmallFlag, settings.imgLargeFlag);
			
			$(this).data("hovered", true);
			
			
			//Load full image in popup
			$("<img />")
			.bind("load", {thumbImage: this}, function(event)
			{
				
				//Only display the larger image if the thumbnail is still being hovered
				if ($(event.data.thumbImage).data("hovered") == true) {
					$(popup).empty().append(this);
					updatePopupPosition(event, self);
					//setTimeout to replay display that will allow browser detech size of popup
					setTimeout(function() {
						$(popup).fadeIn('slow');
					},200)
					
				}
				$(event.data.thumbImage).data("cached", true);
				
				
			})
			.attr("src", fullImgURL);
			
			
			
			//If no image has been loaded yet then place a loading message
			if ($(this).data("cached") != true) {
				$(popup).append($(settings.loadingHtml));
				$(popup).fadeIn('slow');
				
			}
			
				
			updatePopupPosition(event, self);
			
				
		}
		
		function updatePopupPosition(event, self)
		{
			var objTarget = findTargetObject(event);
			var offsetTop = findPosY(objTarget);
			var posx = 0;
			var posy = 0;
			var height = $(this).height();
			e = event;
			if (!e) var e = window.event;
			if (e.pageX || e.pageY) 	{
				posx = e.pageX;
				posy = e.pageY;
			}
			else if (e.clientX || e.clientY) 	{
				posx = e.clientX + document.body.scrollLeft
					+ document.documentElement.scrollLeft;
				posy = e.clientY + document.body.scrollTop
					+ document.documentElement.scrollTop;
			}

			
			var windowSize = getWindowSize();
			var popupSize = getPopupSize();
			if (windowSize.width + windowSize.scrollLeft < event.pageX + popupSize.width + settings.cursorLeftOffset){
				$(popup).css("left", event.pageX - popupSize.width - settings.cursorLeftOffset);
			} else {
				$(popup).css("left", event.pageX + settings.cursorLeftOffset);
			}
			
			$(popup).css("top", offsetTop -  popupSize.height/4 - 20);
			
//			if (windowSize.height + windowSize.scrollTop < event.pageY + popupSize.height + settings.cursorTopOffset){
//				$(popup).css("top", event.pageY - popupSize.height - settings.cursorTopOffset);
//			} else {
//				$(popup).css("top", event.pageY + settings.cursorTopOffset);
//			}
		}
		
		function findPosY(obj)
		{
		    var curtop = 0;
		    if(obj.offsetParent)
		        while(1)
		        {
		          curtop += obj.offsetTop;
		          if(!obj.offsetParent)
		            break;
		          obj = obj.offsetParent;
		        }
		    else if(obj.y)
		        curtop += obj.y;
		    return curtop;
		}

		function findTargetObject(e) {
			var targ;
			if (!e) var e = window.event;
			if (e.target) targ = e.target;
			else if (e.srcElement) targ = e.srcElement;
			if (targ.nodeType == 3) // defeat Safari bug
				targ = targ.parentNode;
			return targ;
		}

		function hidePopup(event)
		{
			$(this).data("hovered", false);
			$(popup).empty().hide();
		}
		
		function getWindowSize() {
			return {
				scrollLeft: $(window).scrollLeft(),
				scrollTop: $(window).scrollTop(),
				width: $(window).width(),
				height: $(window).height()
			};
		}
		
		function getPopupSize() {
			return {
				width: $(popup).width(),
				height: $(popup).height()
			};
		}

		//Return original selection for chaining
		return this;
	};
})(jQuery);