$(function() {

	var storeId;

	// 모달창 오픈/클로즈
	$('.storeMoreInfoBtn').click(function() {
		//선택 스토어 정보 삽입
		storeId = $(this).closest('.newStoreTableRow').find('td:first').text();
        $('.modalStoreIdInfo').val(storeId);
        
		$(".storeMoreInfoModalWrap").fadeIn(200);
		$(".storeMoreInfoModal").slideDown(200);
	});
	$('.modalCloseBtn').click(function() {
		$(".storeMoreInfoModal").slideUp(200);
		$(".storeMoreInfoModalWrap").fadeOut(200);
	});
});