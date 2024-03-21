$(function() {

	//호버 시 버튼 Text 변경
    var originalText = $('.orderBtn').text();

    $('.orderBtn').hover(function() {
        $(this).text('+ 주문하기');
    }, function() {
        $(this).text(originalText);
    });
    
    //공지사항 영역 미리보기
    $('.noticontent').each(function() {
        var text = $(this).text();
        if (text.length > 60) {
            text = text.substring(0, 60) + '...';
            $(this).text(text);
        }
    });
    
	//주문하기 모달창 오픈/클로즈
	$('.orderBtn').click(function() {
		$(".customerOrderListModal").fadeIn(200);
		$(".customerOrderListModalBody").slideDown(200);
		
		//결제일자 삽입하기
	    $('.ContentRight>div:nth-child(2) input').val(getCurrentDate());
	});
	$('.viewCancel').click(function() {
		$(".customerOrderListModalBody").slideUp(200);
		$(".customerOrderListModal").fadeOut(200);
	});
	
    function getCurrentDate() {  //현재날짜 가져오기
		var date = new Date();
		var year = date.getFullYear();
		var month = (date.getMonth() + 1 < 10 ? '0' : '') + (date.getMonth() + 1);
		var day = (date.getDate() < 10 ? '0' : '') + date.getDate();
		return year + '/' + month + '/' + day;
	}
	
	//스토어 피드 모달창 오픈/클로즈
	$('.storeFeedArea a').click(function() {
		$(".customerFeedListModal").fadeIn(200);
		$(".customeFeedListModalBody").slideDown(200);
	});
	$('.insertFeedbtn input').click(function() {
		$(".customeFeedListModalBody").slideUp(200);
		$(".customerFeedListModal").fadeOut(200);
	});
	
	//공지사항 모달창 오픈/클로즈
	$('.storeEachNoti').click(function() {
		$(".customerinfoListModal").fadeIn(200);
		$(".customeinfoListModalBody").slideDown(200);
	});
	$('.insertInfobtn input').click(function() {
		$(".customeinfoListModalBody").slideUp(200);
		$(".customerinfoListModal").fadeOut(200);
	});
	
});
