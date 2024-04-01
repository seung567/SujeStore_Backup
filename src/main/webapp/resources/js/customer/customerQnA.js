// Modal QnA 작성하기 부분
$(function(){		
	$(".regit").click(function(){
		$(".qnaqInsertModal").css("display","block");		
	});
});

// Modal QnA 답변조회 부분
$(function(){		
	$(".answer").click(function(){
		$(".qnaaInsertModal").css("display","block");		
	});	
});



$(function() {
	
	/* QnA 작성하기 */
	$(".regit").click(regit);
	 
	 /* QnA 답변 불러오기 */
	$(".answer").click(answer);
	
	/*  모달 창 닫기 */
	 $('.viewCancel').click(function(){		 
		 $(".qnaqModal").slideUp(200);
		 $(".qnaaModal").slideUp(200);		 
	 });
});

function regit() {
   $(".qnaqModal").slideDown(200);  
}

function answer() {
	var resultAnserNo = $(this).parent().parent().children().eq(0).text();
	$.ajax({
		url : "customerQnAAModal.do", 
		type : "get",
		data : {resultAnserNo:resultAnserNo},
		dataType : "json",
		contentType : 'application/json; charset=UTF-8',
        beforeSend : function(){
            $(".qnaaModal").slideDown(200);            
          },
          success : function(data) { 
				console.log(data.qna_code);
				$(".contentNO").val(data.qna_code);
				$(".contentTitle").val(data.qna_title);
				$(".contentDate").val(data.qna_adate);
				$(".content").val(data.qna_reply);
            }		
	});
}
