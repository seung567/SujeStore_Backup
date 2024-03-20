$(function() {
	// 모달창 오픈/클로즈
	$('.storeMoreInfoBtn').click(function() {
		$(".storeMoreInfoModalWrap").fadeIn(200);
		$(".storeMoreInfoModal").slideDown(200);
	});
	$('.modalCloseBtn').click(function() {
		$(".storeMoreInfoModal").slideUp(200);
		$(".storeMoreInfoModalWrap").fadeOut(200);
	});
});