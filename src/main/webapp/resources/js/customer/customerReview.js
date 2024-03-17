
$(function(){
	
	
	$(".List tr td:nth-child(8)").click(function(){
		
		var orderNo = $(this).parent().children(0).eq(0).text();
		
		$(".reviewInsertModal").css("display","block");
		$(".reviewInsertTitle div:nth-child(3) input").val(orderNo);
	
	});
	
	//datepicker 인풋 태그 클릭시 달력 송출
	$.datepicker.setDefaults($.datepicker.regional["ko"]);
	$("#datepicker").datepicker({
		showAnim: "slideDown",
		showOn: "button",
		buttonImage: "./resources/img/calendar.gif",
		buttonImageOnly: true,
		showButtonPanel : true
	});

});