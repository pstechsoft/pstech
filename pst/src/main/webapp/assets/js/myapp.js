$(function() {
	// solving the active menu problem
	switch (menu) {
	case 'About Us':
		$('#about').addClass('active');
		break;
	case 'My Account':
		$('#myaccount').addClass('active');
		break;
	case 'category.getName':
		$('#categoryProducts').addClass('active');
		break;
	case 'My Cart':
		$('#cart').addClass('active');
		break;
	default:
		$('#home').addClass('active');
		$('a_'+menu).addClass('active');
	break;
	}
});