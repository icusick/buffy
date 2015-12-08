console.log('linked');

// var $atag 

$(document).ready(function() {

var $atag = $('a');
console.log($atag);


$atag.mouseover(function() {
	console.log('IS THIS WORKING??');
	$(this).addClass('animated pulse');
	console.log($(this));
});

});