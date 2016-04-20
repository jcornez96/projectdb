/* ----------------------------- 
Pre Loader
----------------------------- */
$(window).load(function() {
	'use strict';
	$('.loading-icon').delay(500).fadeOut();
	$('#preloader').delay(800).fadeOut('slow');
});

/* ----------------------------- 
Backgroung slider
----------------------------- */
$(window).ready(function() {
	'use strict';
	$.vegas('slideshow', {
	  backgrounds:[
		{ src:'images/bg-slider/db-images/bg-1.jpg', fade:1500 },
		{ src:'images/bg-slider/db-images/bg-2.jpg', fade:1500 },
		{ src:'images/bg-slider/db-images/bg-3.jpg', fade:1500 },
		{ src:'images/bg-slider/db-images/bg-4.jpg', fade:1500 }
	  ]
	})();
});
