
$(function(){
	
	
	$(".List tr td:nth-child(8)").click(function(){
		
		
		var orderNo = $(this).parent().children(0).eq(0).text();
		
		$(".reviewInsertModal").css("display","block");
		$(".reviewInsertTitle div:nth-child(3) input").val(orderNo);
	});
	



});