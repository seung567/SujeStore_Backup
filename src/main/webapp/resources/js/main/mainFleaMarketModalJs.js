$(function() {

	var storeName;
	var itemInfo;
	var finalCount;
	var finalPrice;
	
	// 플리마켓 구매하기 모달창 오픈/클로즈
	$('.buyBtn').click(function() {
		// 구매 정보 모달 삽입
		storeName = $('.itemStore').text();
		$('.ContentRight>div:nth-child(1) input').val(storeName);
		itemInfo = $('.itemName').text();
		$('.ContentRight>div:nth-child(2) input').val(itemInfo);
		finalCount = $('.itemCount').text();
		$('.ContentRight>div:nth-child(3)>div:nth-child(1) input').val(finalCount);
		finalPrice = $('.finalPrice span:first-child').text();
		$('.ContentRight2>div:nth-child(2)>div:first-child input').val(finalPrice);
		
		$(".customerOrderListModal").fadeIn(200);
		$(".customerOrderListModalBody").slideDown(200);
	});
	$('.viewCancel').click(function() {
		$(".customerOrderListModalBody").slideUp(200);
		$(".customerOrderListModal").fadeOut(200);
	});
	
	//결제일자 삽입하기
    function getCurrentDate() {  //현재날짜 가져오기
		var date = new Date();
		var year = date.getFullYear();
		var month = (date.getMonth() + 1 < 10 ? '0' : '') + (date.getMonth() + 1);
		var day = (date.getDate() < 10 ? '0' : '') + date.getDate();
		return year + '/' + month + '/' + day;
	}
    $('.modalMainContent2 .ContentRight2 input[type="text"]').last().val(getCurrentDate());
	
});