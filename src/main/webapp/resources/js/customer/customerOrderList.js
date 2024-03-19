/*
 * 
 */

$(function(){
	
	// 상세정보 보기 이벤트
	$(".List tr td:nth-child(8)").click(function() {
      $(".orderListWrap").fadeIn(200);
      $(".orderInfoModal").slideDown(200);
   });
   
   $(".viewCancel").click(function() {
      $(".orderInfoModal").slideUp(200);
      $(".orderListWrap").fadeOut(200);
   });
   
   // 결제 취소 보기 이벤트
  	$(".List tr td:nth-child(9)").click(function() {
      $(".orderListWrap").fadeIn(200);
      $(".payCancelModalView").slideDown(200);
   });
   
   $(".viewCancel").click(function() {
      $(".payCancelModalView").slideUp(200);
      $(".orderListWrap").fadeOut(200);
   });
   
   // 반품요청 보기 이벤트
  	$(".List tr td:nth-child(10)").click(function() {
      $(".orderListWrap").fadeIn(200);
      $(".returnModalView").slideDown(200);
   });
   
   $(".viewCancel").click(function() {
      $(".returnModalView").slideUp(200);
      $(".orderListWrap").fadeOut(200);
   });
   
});