<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">
<link href="./resources/css/resetStyle.css" rel="stylesheet" type="text/css">
<link href="./resources/css/main/fleaMarket/mainFleaMarketDetailStyle.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="./resources/js/main/mainFleaMarketDetailJs.js"></script>
<!-- <script src="./resources/js/main/mainFleaMarketModalJs.js"></script> -->
<script type="text/javascript">
$(function() {
	var storeName;
	var itemInfo;
	var finalCount;
	var finalPrice;
	var mainId;
	
	// 플리마켓 구매하기 모달창 오픈/클로즈
	$('.buyBtn').click(function() {
		if($('.mainId').val() === "") {
			alert("로그인 후 이용 가능한 서비스입니다.");
			location.href = "mainLogin.do";
		} else {
			modalOpen();
		}
	});
	$('.viewCancel').click(function() {
		$(".customerOrderListModalBody").slideUp(200);
		$(".customerOrderListModal").fadeOut(200);
	});
	
	// 구매 정보 모달 삽입
	function modalOpen() {
		storeName = $('.itemStore').text();
		$('.ContentRight>div:nth-child(1) input').val(storeName);  //스토어명
		itemInfo = $('.itemName').text();
		$('.ContentRight>div:nth-child(2) input').val(itemInfo);  //상품 정보
		finalCount = $('.itemCount').text();
		$('.ContentRight>div:nth-child(3)>div:nth-child(1) input').val(finalCount);  //구매 수량
		finalPrice = $('.finalPrice span:first-child').text();
		$('.ContentRight2>div:nth-child(2)>div:first-child input').val(finalPrice);  //결제 금액
		$('.ContentRight2 input[type="text"]').last().val(getCurrentDate());  //결제 일자
		mainId = $('.mainId').val();  //구매자 ID
		
		//구매자 기본 정보 삽입
		$.ajax({
			url : "fleaBuyingMemberInfo.do",
			type : "post",
			data: { m_id : mainId },
			dataType : "json",
			contentType:'application/x-www-form-urlencoded; charset=UTF-8',
			success : function(memberInfo){
				$('.ContentRight3>div:nth-child(1) input').val(memberInfo.m_name);  //수령자명
				$('.ContentRight3>div:nth-child(2) input').val(memberInfo.m_tel);  //전화번호
				$(".customerOrderListModal").fadeIn(200);
				$(".customerOrderListModalBody").slideDown(200);
			},
			error: function(err) {
				alert("통신 에러가 발생했습니다 : "+err);
			}
		});
	}
	
	//결제일자 삽입하기
    function getCurrentDate() {  //현재날짜 가져오기
		var date = new Date();
		var year = date.getFullYear();
		var month = (date.getMonth() + 1 < 10 ? '0' : '') + (date.getMonth() + 1);
		var day = (date.getDate() < 10 ? '0' : '') + date.getDate();
		return year + '/' + month + '/' + day;
	}
});
</script>
<title>SUJE</title>
</head>
<body>
<%@ include file="../../headerHtml/memberHeader.jsp" %>
<div class="contentsWrap">
	<div class="itemImageArea">
		<ul class="itemImage">
			<li><img src="././resources/DB/${fleaDetail.f_ppath}"/></li>
			<c:forEach items="${fleaDetailSubImg}" var="MainFleaMarketVO">
				<li><img src="././resources/DB/${MainFleaMarketVO.fs_ppath}"/></li>
			</c:forEach>
		</ul>
	</div> <!-- itemImageArea -->
	<button class="imgLeftMove"><img src="././resources/img/moveIcon.png"/></button>
	<button class="imgRightMove"><img src="././resources/img/moveIcon.png"/></button>
	<div class="itemInfoArea">
		<div class="itemCategory">
			<div class="allCategory">전체</div>
			<img src="././resources/img/mainSubMenuBtn.png">
			<div class="category">${fleaDetail.catem_name}</div>
			<img src="././resources/img/mainSubMenuBtn.png">
			<div class="category">${fleaDetail.catemm_name}</div>
		</div>
		<div class="itemStore">${fleaDetail.s_name}</div>
		<div class="itemName">${fleaDetail.f_content}</div>
		<div class="itemPrice">
			<span>${fleaDetail.f_sum}</span>
			<span>원</span>
		</div>
		<div class="itemCountArea">
			<div class="itemCountBox">
				<button class="CountMinus">-</button>
				<div class="itemCount">1</div>
				<button class="CountPlus">+</button>
			</div>
			<div class="finalPrice">
				<span><!-- itemPrice 값이 자동으로 들어오도록 JS 설정됨 --></span>
				<span>원</span>
			</div>
		</div>
		<input class="itemNum" type="text" value="${fleaDetail.f_num}" readonly="readonly" style="display:none;">
		<button class="buyBtn">구매하기</button>
	</div> <!-- itemInfoArea -->
</div> <!-- contentsWrap -->
<footer></footer>

<!-- 모달 -->
<div class="customerOrderListModal">
	<div class="customerOrderListModalBody">
		<%@ include file="./Modal/buyModal.jsp" %>
	</div> <!-- customerOrderListModalBody -->
</div> <!-- customerOrderListModal -->
</body>
</html>