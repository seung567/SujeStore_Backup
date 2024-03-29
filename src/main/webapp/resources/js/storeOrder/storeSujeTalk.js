/**
 * 
 */
 
 $(function() {
	    
    $(".customerInfoList").parent().click(function(){
		
		/* 주문 상세 요청 내역 비동기 처리 */
		$.ajax({
		    type : "post",
			url : "storeSujeTalkEtc.do",
			data : {
			    storeOrderNO : $(this).find("input").val()
			},
			dataType : "json",
			contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
			beforeSend : function(){
 			    if( $(".orderMainDetail") != ""){
					$(".orderMainDetail").remove();
			    }
			},
			success : function(data){
			    
			    // Talk 상단 정보 표시
			    $(".storeTopInfo>div:nth-child(1)>div:nth-child(2)").text(data['etcList'][0].m_id); // 고객명
			    $(".storeTopInfo>div:nth-child(2)").text(data['etcList'][0].o_date); // 주문 요청일
			    $(".activeTalkTitle>div:nth-child(2) input").val(data['etcList'][0].o_code); // 주문번호
			    
				 // 주문 접수 요청 사항
				orderRegedit(data['etcList']);    
				    
			    /* 주문 요청사항 출력 함수 */
				$(data['etcList']).each(function(index,item){
				    if(item.etc_content != null){
						orderEtc(item);
				    }
				});
			   	
			    // 최종 주문서 출력
			    if(data['finalOrder'] != null){
						finalOrderEtc(data['finalOrder'],data['etcList'][0].s_id);
			    }
			},
			error : function(status){
	
			}   
		});
	
    });
    
});


// 주문 접수 요청 사항
function orderRegedit(item){
    
    /* 메인 프레임 */
    var orderDetailMainFram = $(".orderMainContentInner");
    
    /* 각각 서브 프레임 */
    var mainContent = $("<div class=orderMainDetail></div>");
    var chatContent = $("<div class=chatDetail></div>");
    
    orderDetailMainFram.append(mainContent);
    mainContent.append(chatContent);
    
	// 대화 사용자 사진
	chatContent.append("	<div><img src='./resources/img/custmerLogo.png'></div>");
	
	//대화 사용자명
	chatContent.append("	<div>" + item[0].m_id + "</div>");
	
	//최종 주문서 확인 버튼
    mainContent.append("<div><input id='orderCheck' type='text' value='"+item[0].o_content+"' /></div>");
	
	//뒷 말풍선 배경
    mainContent.append("<img src='./resources/img/wordballoon.png'>");
	//날짜
    mainContent.append("<div class='dateDetail'>주문 제작 요청</div>");
    
    $(".orderMainContent").css("overflow" , "auto");
    $(".orderMainContent").scrollTop($(".orderMainContent")[0].scrollHeight);
    
}

/* 주문 요청 상세사항 출력 함수 */
function orderEtc(item){
    
    /* 메인 프레임 */
    var orderDetailMainFram = $(".orderMainContentInner");
    
    /* 각각 서브 프레임 */
    var mainContent = $("<div class=orderMainDetail></div>");
    var chatContent = $("<div class=chatDetail></div>");
    
    orderDetailMainFram.append(mainContent);
    mainContent.append(chatContent);
    
	// 대화 사용자 사진
	if(item.etc_type_code == 77000){
		chatContent.append("	<div><img src='./resources/img/custmerLogo.png'></div>");
	}else{
		chatContent.append("	<div><img alt='' src='./resources/img/sujetalkstoreimg.png'></div>");    
	}
	
	//대화 사용자명
	if(item.etc_type_code == 77000){
		chatContent.append("	<div>" + item.m_id + "</div>");
	}else{
		chatContent.append("<div>" + item.s_id + "</div>");    
	}
	
	//최종 주문서 확인 버튼
    mainContent.append("<div><input id='orderCheck' type='text' value='"+item.content+"' /></div>");
	
	//뒷 말풍선 배경
    mainContent.append("<img src='./resources/img/wordballoon.png'>");
	//날짜
    mainContent.append("<div class='dateDetail'>" + item.etc_date + "</div>");
	
    $(".orderMainContent").scrollTop($(".orderMainContent")[0].scrollHeight);
    
}

// 최종 주문서 출력 부분
function finalOrderEtc(item,storeID){
    
    /* 메인 프레임 */
    var orderDetailMainFram = $(".orderMainContentInner");
    
    /* 각각 서브 프레임 */
    var mainContent = $("<div class=orderMainDetail></div>");
    var chatContent = $("<div class=chatDetail></div>");
    
    orderDetailMainFram.append(mainContent);
    mainContent.append(chatContent);
    
	// 대화 사용자 사진
	chatContent.append("	<div><img alt='' src='./resources/img/sujetalkstoreimg.png'></div>"); 
	
	//대화 사용자명
	chatContent.append("<div>" + storeID + "</div>");    
	
	//최종 주문서 확인 버튼
    mainContent.append("<div><input id='orderCheck' type='button' value='최종 주문서 확인' onclick='getFinalOrder()'/></div>");
	
	//뒷 말풍선 배경
    mainContent.append("<img src='./resources/img/wordballoon.png'>");
	//날짜
    mainContent.append("<div class='dateDetail'>주문 제작서 확인 요청</div>");
	
    $(".orderMainContent").scrollTop($(".orderMainContent")[0].scrollHeight);
    
}