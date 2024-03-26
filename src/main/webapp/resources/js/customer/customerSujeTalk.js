/**
 * 
 */
 
 $(function(){
 	
 	// 최종 주문서 확인 이벤트

 	$("#orderCheck").click(function() {
 	
    $(".modalWrap").fadeIn(200);
    $(".orderCheckModal").slideDown(200);
    $(".insertBtnRes").val("결제하기");
      
     });
    
    //취소 이벤트
    $(".viewCancel").click(function() {
    
      $(".orderCheckModal").slideUp(200);
      $(".modalWrap").fadeOut(200);

   });
 
	$(".insertBtnRes").click(function(){
	
	 	$(".modalWrap").fadeIn(200);
	    $(".payResultModal").slideDown(200);
	    
	 });
 
	$(".viewCancel").click(function() {
	
      $(".payResultModal").slideUp(200);
      $(".modalWrap").fadeOut(200);

   });
   
  /* 	$(".storeSimpleInfo").parent().click(function() {

			    $.ajax({
					type : "post",
					url : "orderDetailContext.do",
					data : {
					    orderNumReuslt : $(this).find("input").val()
					},
					dataType : "json",
					contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
					success : function(data) {

							$(data).each(function(){
							
							    var mainDiv = $(".orderMainContentInner");
							    var mainDetailDiv = $(<div class="orderMainDetail"></div>);
						    
							    var chatDetail = $(<div class="charDetail"></div>);
						    
						    	mainDiv.append(mainDetailDiv);
						    	mainDetailDiv.append(chatDetail);
							
							});

					},
					error : function(status) {
					    console.log(status);
					}
			});

		}); */
   
 });
 
 
 function chatPom(data){
 
 
 
 
 }