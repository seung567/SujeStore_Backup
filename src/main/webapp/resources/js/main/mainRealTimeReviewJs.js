$(function() {
	// 모달창 오픈/클로즈
	$('.eachReviewPayNumTd button').click(function() {
		$(".finalOrderModalWrap").fadeIn(200);
		$(".finalOrderModal").slideDown(200);
	});
	$('.modalCloseBtn').click(function() {
		$(".finalOrderModal").slideUp(200);
		$(".finalOrderModalWrap").fadeOut(200);
	});
});