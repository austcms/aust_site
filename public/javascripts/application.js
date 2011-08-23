$(document).ready(function(){
	$('a[scroll_to]').click(function(){
		$.scrollTo($(this).attr('scroll_to'), 500);
		
		if( $(this).attr('scroll_to') != '#global' && $(this).attr('scroll_to') != '#body_tag' )
			setTimeout(hightlightClickedLink, 250, $(this).attr('scroll_to'));
		
		return false;
	});
	
	$(window).scroll(function () { 
		var backLink = $('#back_to_top_link');
		if( $(window).scrollTop() > 90 && !backLink.is(':visible') )
			$('#back_to_top_link').fadeIn();
		else if( $(window).scrollTop() <= 90 && backLink.is(':visible') )
			$('#back_to_top_link').fadeOut();
    });
	
});

function hightlightClickedLink(_elementId){
	var _element = $(_elementId);
	var _global = $('.main_section');
	_global.not(_elementId).animate({opacity: 0.2}, 250);

	/*
	_global.animate({opacity: 0.2}, 200);
	_element.animate({opacity: 1}, 500);
	*/
	setTimeout(function(){
		$('.main_section').animate({opacity: 1}, 1000);
	}, 2000);
	return false;
}