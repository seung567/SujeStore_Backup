
    $(function() {
	
		$(".storeSimpleInfo").parent().click(function() {
		    	
		    $.ajax({
				type : "post",
				url : "orderDetailContext.do",
				data : {
				    customerOrderNO : $(this).find("input").val()
				},
				dataType : "json",
				contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
				beforeSend : function(){
				    
	 			    if( $(".orderMainDetail") != ""){
						$(".orderMainDetail").remove();
				    }
				},
				success : function(data) {
				    
				    /* 상단 메인 스토어명 표기 */
				   	$(".customerInfo>div:first-child>div:nth-child(2)").text(data['etcList'][0].s_id); 
				    $(".customerInfo>div:nth-child(2)").text(data['etcList'][0].o_date); // 주문 요청일
				    $(".activeTalkTitle>div:nth-child(2) input").val(data['etcList'][0].o_code); // 주문번호
				    
				    
				    
				    /* 최초 주문사항 출력 */
				    firstOrder(data['etcList']);
						
				    /* 주문 요청 사항 메인 출력*/
				    $(data['etcList']).each(function(index,item){
				        if(item.etc_content != null){
				    		mainContent(item);
				    	 }
					}); 
			    	/*최종 주문서 출력*/
			    	if(data['finalVO'] !=null){
				    	finalOrder(data['finalVO'],data['etcList'][0].s_id);
			    	}
				},
				error : function(status) {
				    console.log(status);
				}
			});
		});
	});

	function firstOrder(data){
		    
		    var mainDiv = $(".orderMainContentInner");
		    var mainDetailDiv = $("<div class=orderMainDetail></div>");
	    
		    var chatDetail = $("<div class=charDetail></div>");
	    
	    	mainDiv.append(mainDetailDiv);
	    	mainDetailDiv.append(chatDetail);
	    	
	    	chatDetail.append("	<div><img src='./resources/img/custmerLogo.png'></div>");
	    	
	    	chatDetail.append("<div>" + data[0].m_id + "</div>");    
	    	
	    	mainDetailDiv.append("<div><input id='orderCheck' type='text' value='"+data[0].o_content+"' /></div>"); 
	    	mainDetailDiv.append("<img src='./resources/img/wordballoon.png'>");
	    	mainDetailDiv.append("<div class='dateDetail'>주문 제작 요청</div>");
	    	
	    	$(".orderMainContent").css("overflow" , "auto");
	    	$(".orderMainContent").scrollTop($(".orderMainContent")[0].scrollHeight);

	 }
	
	
	    
	function mainContent(item){
	    
		    $(".orderNum").val(item.o_code);
		    
		    var mainDiv = $(".orderMainContentInner");
		    var mainDetailDiv = $("<div class=orderMainDetail></div>");
	    
		    var chatDetail = $("<div class=charDetail></div>");
	    
	    	mainDiv.append(mainDetailDiv);
	    	mainDetailDiv.append(chatDetail);
	    	
	    	// 대화 사용자 사진
	    	if(item.etc_type_code == 77001){
	    		chatDetail.append("	<div><img alt='' src='./resources/img/sujetalkstoreimg.png'></div>");   
	    	}else{
	    		chatDetail.append("	<div><img src='./resources/img/custmerLogo.png'></div>");
	    	}
	    	
	    	//대화 사용자명
	    	if(item.etc_type_code == 77001){
	    		chatDetail.append("	<div>" + item.s_id + "</div>");
	    	}else{
	    		chatDetail.append("<div>" + item.m_id + "</div>");    
	    	}	
			
	    	/* mainDetailDiv.append("<div><input id='orderCheck' type='button' value='"+item.content+"' /></div>"); */
	    	
	    	mainDetailDiv.append("<div><input id='orderCheck' type='text' value='"+item.content+"' /></div>"); 
	    	mainDetailDiv.append("<img src='./resources/img/wordballoon.png'>");
	    	mainDetailDiv.append("<div class='dateDetail'>" + item.etc_date + "</div>");
	    	
	    	$(".orderMainContent").css("overflow" , "auto");
	    	$(".orderMainContent").scrollTop($(".orderMainContent")[0].scrollHeight);
	 
		}
	 
function finalOrder(data,storeID){
	    
 	    var mainDiv = $(".orderMainContentInner");
	    var mainDetailDiv = $("<div class=orderMainDetail></div>");
    
	    var chatDetail = $("<div class=charDetail></div>");
    
    	mainDiv.append(mainDetailDiv);
    	mainDetailDiv.append(chatDetail);
    	
    	chatDetail.append("	<div><img alt='' src='./resources/img/sujetalkstoreimg.png'></div>"); 
    	
    	chatDetail.append("<div>" + storeID + "</div>");    
    	
    	mainDetailDiv.append("<div><input id='orderCheck' type='button' value='최종 주문서 확인' onclick='finalOroderCheck()'/></div>");
    	mainDetailDiv.append("<img src='./resources/img/wordballoon.png'>");
    	mainDetailDiv.append("<div class='dateDetail'>주문 제작서 확인 요청</div>");
		
		$(".dateDetail").append("<input class='finalOrderCode' type='hidden' value='" +  data.fo_code + "' />");
		
		$(".orderMainContent").css("overflow" , "auto");
    	$(".orderMainContent").scrollTop($(".orderMainContent")[0].scrollHeight);
 }
 
 // 최종 주문서 조회 함수
function finalOroderCheck(){
    
    $.ajax({
	
		type : "get",
		url : "finalOrderInfo.do",
		data : {foCode : $('.finalOrderCode').val()},
		dataType : "json",
		contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
		beforeSend : function(){
		    $(".modalWrap").fadeIn(200);
		    $(".orderCheckModal").slideDown(200); 
		},
		success : function(data){
		    
		    const itemInfo = data;
		    
		    // 최종 주문 번호
		    $(".customerOrderListTitle input").val(data.fo_code);
		    
		    //상품 카테고리 1
		    $('.cateFirst option').each(function(){
				if($(this).text() == data.cates_name){
				    $(this).prop('selected', true);
				}
		    });
		    
		    //상품 카테고리 2
		    $('.cateSecond option').each(function(){
				if($(this).text() == data.catemm_name){
				    $(this).prop('selected', true);
				}
		    });
		    
		    // 수량
		    $('#countInput').val(data.fo_num);
		    
		    // 주문 사이즈
		    $('#sizeInput').val(data.fo_size);
		    
		    //주문 금액
		    $('#price').val(data.fo_sum);
		    
		    //배송형태
		    if(data.deli_code == 7003){
				$('#delivery').prop('selected', true);
		    }else{
				$('#pickup').prop('selected', true);
		    }
		    
		    //요구사항
		    $('#content').val(data.fo_etc);
		    
		    $('.insertBtnRes').val("결제하기");
		    
		    $('.insertBtnRes').click(function(){
		    
					$(".orderCheckModal").slideUp(200);
					payMent();	
		    
		    });
		}	
    });
}

// 결제 하기 모달
function payMent(orderInfoList){
    
    $(".payResultModal").slideDown(200); 
    
    $.ajax({
	
		type : "post",
		type : "get",
		url : "finalOrderInfo.do",
		data : {foCode : $('.finalOrderCode').val()},
		dataType : "json",
		contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
		success : function(data){
		    
		    $("#foCode").val(data.fo_code); // 최종 주문 번호
		    
		    
		    $('.cateFirst option').each(function(){ //상품 카테고리 1
				if($(this).text() == data.cates_name){
				    $(this).prop('selected', true);
				}
		    });
		    
		    
		    $('.cateSecond option').each(function(){ //상품 카테고리 2
				if($(this).text() == data.catemm_name){
				    $(this).prop('selected', true);
				}
		    });
		    
		    $('#foCount').val(data.fo_num); // 수량
		    $('#foSize').val(data.fo_size); // 주문 사이즈
		    $('#foPrice').val(data.fo_sum);  //주문 금액
		   
		    if(data.deli_code == 7003){  //배송형태
				$('#payDelivery').prop('selected', true);
		    }else{
				$('#payPickup').prop('selected', true);
		    }
		    
		    $('#payEtc').val(data.fo_etc); //요구사항
		    $('#payMentPrice').val(data.fo_sum);
		    
		    let today = new Date();   

		    let year = today.getFullYear(); // 년도
		    let month = today.getMonth() + 1;  // 월
		    let date = today.getDate();  // 날짜
		    let day = today.getDay();  // 요일
		    
		    $("#payMentDate").val(year + '/' + month + '/' + date);
		    $(".idInfoPay").val($(".idInfo").val());
		}
	
    });
    
};
 

 
 