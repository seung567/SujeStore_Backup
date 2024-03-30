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
			    	 $(".orderInsertBtn").css("display","none");
					finalOrderEtc(data['finalOrder'],data['etcList'][0].s_id);
			    }else{
			    	 $(".orderInsertBtn").css("display","block");
			    }
			},
			error : function(status){
	
			}   
		});
	
    });
    
    // 최종 주문서 등록 이벤트
	 $(".orderInsertBtn").click(function(){
	
		let orderNO = $(".activeTalkTitle>div:nth-child(2) input").val();
		console.log(orderNO);
		if(orderNO != ""){
		 	// 모달 출력 이벤트
		    $(".modalWrap").fadeIn(200);
		    $(".storeOrderInsertModal").slideDown(200);
			$('.modalNo_textbox').val(orderNO);
			$('.formTagClass').attr("action","fianlOrderController.do");
			$('.storeID').val($('.idInfo').val());
		}else{
		    alert("주문요청건을 선택하여 주세요");
		}
			
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


function getFinalOrder(){
		console.log($('.orderNum').val());
		$.ajax({
		    type : "post",
		    url : "getStoreFinalOrder.do",
		    data : {
				orderNO : $('.orderNum').val()
		    },
		    dataType : "json",
		    contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
			beforeSend : function(){
				    $(".modalWrap").fadeIn(200);
				    $(".storeOrderInsertModal").slideDown(200); 
			},
			success : function(data){
			    
			    // 모달 Tag 속성 정의
			    $('.insertBtnRes').val("수정하기");
			    $(".orderInsertBtn").css("display","none");
			    $('.storeID').val($('.idInfo').val());
			    
			    
			    $('.modalNo_textbox').val(data.fo_code); // 최종 주문서 번호 
			    $("#countInput").val(data.fo_num); // 주문 수량
			    $("#sizeInput").val(data.fo_size); // 주문 사이즈
			    $('#price').val(data.fo_sum); // 주문 금액
			    $('#content').val(data.fo_etc); // 주문 요청 사항
			    
			    // 상품 카테고리 
			    let firstCate = $('.cateFirst option');
			    let secondCate = $('.cateSecond option');
			    let deliveryCode = $('.deli option');
			    
			    // 카테고리 중분류 , 카테고리 소분류 , 배송방식 선택
			    itemSelectBox(firstCate,data.catemm_name);
			    itemSelectBox(secondCate,data.cates_name);
			    itemSelectBox(deliveryCode,data.deli_type);
			    
			    // 각 태그 속성 부여
			    $('.insertBtnRes').attr("onclick","updateFinalOrderinfo()");
			    $('.formTagClass').attr("action","updateFinalOrderinfo.do");
			    $('.modalNo_textbox').attr("name","fo_code");
			},
			    error: function(request, status, error) {
				alert("통신 에러가 발생했습니다 : "+request+"/"+status+"/"+error);
			}
		});
}

// 선택박스 처리 함수
function itemSelectBox(scope, itemName){
    scope.each(function(){
		if($(this).text() == itemName){
		    $(this).prop('selected', true);
		}
    });
}

// 최종 주문서 수정처리 함수
function updateFinalOrderinfo(){
    console.log("수정");
}