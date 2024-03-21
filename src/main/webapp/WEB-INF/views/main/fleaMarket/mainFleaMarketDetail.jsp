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
<script src="./resources/js/main/mainFleaMarketModalJs.js"></script>
<title>SUJE</title>
</head>
<body>
<%@ include file="../../headerHtml/memberHeader.jsp" %>
<div class="contentsWrap">
	<div class="itemImageArea">
		<ul class="itemImage">
			<li><img src="././resources/img/exImg.png"/></li>
			<li><img src="././resources/img/exImg.png"/></li>
			<li><img src="././resources/img/exImg.png"/></li>
			<li><img src="././resources/img/exImg.png"/></li>
		</ul>
	</div> <!-- itemImageArea -->
	<button class="imgLeftMove"><img src="././resources/img/moveIcon.png"/></button>
	<button class="imgRightMove"><img src="././resources/img/moveIcon.png"/></button>
	<div class="itemInfoArea">
		<div class="itemCategory">
			<div class="allCategory">전체</div>
			<img src="././resources/img/mainSubMenuBtn.png">
			<div class="category">FIRST CATEGORY</div>
			<img src="././resources/img/mainSubMenuBtn.png">
			<div class="category">SECOND CATEGORY</div>
		</div>
		<div class="itemStore">STORE NAME</div>
		<div class="itemName">ITEM NAME ITEM NAME ITEM NAME</div>
		<div class="itemPrice">
			<span>10000</span>
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