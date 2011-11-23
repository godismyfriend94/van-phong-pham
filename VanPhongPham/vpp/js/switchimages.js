function switch_images(imgurl) {
	/* Change the variable below to the appropriate location for the directory in 
	which your images reside if you are not keeping this HTML file in the same directory. */
	var imgsDir = '';
	/* Uncomment the two lines below and adjust the loadImg variable to the 
	actual location of your loading image if you want to use an image to 
	indicate the real picture is loading. */
	// var loadImg = imgsDir+'ajax-loader.gif';
	// document.getElementById('fullsize').src = loadImg;
	/* Adjust the variables below to specify the width and height of the full-sized images */
	var h = 250;
	var w = 250;
	/* Adjust the variable below to match the location of the full-sized images */
	var imSrc = (imgsDir+imgurl);
	var newImg = Image(w,h); // The two numbers in the Image function are optional. They specify the width and height
	newImg.onload = function() {
		document.getElementById('big_image').src = newImg.src;
	}
	newImg.src = imSrc;
	return false;
} 