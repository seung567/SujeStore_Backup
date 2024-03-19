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
<link href="./resources/css/main/mainRealTimeReviewStyle.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="./resources/js/main/mainRealTimeReviewJs.js"></script>
<title>SUJE</title>
</head>
<body>
<%@ include file="../headerHtml/memberHeader.jsp" %>
<div class="contentsWrap">
	<div class="contentsTitle">실시간 후기</div>
	<div class="contentsLine"></div>
	<div class="contentsReviewArea">
		<table class="eachReviewTable">
			<tr>
				<td rowspan="4" class="eachReviewImgTd"><div><img src="././resources/img/exImg.png"/></div></td>
				<td colspan="2" class="eachReviewStoreProfileTd">
					<img src="././resources/img/basicProfileIcon.png"/>
					<span>STORE NAME</span>
				</td>
				<td class="eachReviewStoreBtnTd"><a href="">스토어 바로가기</a></td>
			</tr>
			<tr>
				<td colspan="3" class="eachReviewPayNumTd">
					<span>주문번호</span>
					<button>12341234</button>
				</td>
			</tr>
			<tr>
				<td colspan="2" class="eachReviewMemberIdTd">STORE123</td>
				<td class="eachReviewScoreTd">
					<img src="././resources/img/mainReviewStarImg.png"/>
					<span>5.0</span>
					<img src="././resources/img/mainReviewThumbsUpImg.png"/>
					<span>0</span>
				</td>
			</tr>
			<tr>
				<td colspan="3" class="eachReviewContentsTd">정말 예쁘고 너무 맛있었습니다! 선물 받은 친구가 너무 좋아했어요~!</td>
			</tr>
		</table>
		<table class="eachReviewTable">
			<tr>
				<td rowspan="4" class="eachReviewImgTd"><div><img src="././resources/img/exImg.png"/></div></td>
				<td colspan="2" class="eachReviewStoreProfileTd">
					<img src="././resources/img/basicProfileIcon.png"/>
					<span>STORE NAME</span>
				</td>
				<td class="eachReviewStoreBtnTd"><a href="">스토어 바로가기</a></td>
			</tr>
			<tr>
				<td colspan="3" class="eachReviewPayNumTd">
					<span>주문번호</span>
					<button>12341234</button>
				</td>
			</tr>
			<tr>
				<td colspan="2" class="eachReviewMemberIdTd">STORE123</td>
				<td class="eachReviewScoreTd">
					<img src="././resources/img/mainReviewStarImg.png"/>
					<span>5.0</span>
					<img src="././resources/img/mainReviewThumbsUpImg.png"/>
					<span>0</span>
				</td>
			</tr>
			<tr>
				<td colspan="3" class="eachReviewContentsTd">정말 예쁘고 너무 맛있었습니다! 선물 받은 친구가 너무 좋아했어요~!</td>
			</tr>
		</table>
	</div>
	<div class="pageingArea">
		<a href="#"><img src="././resources/img/pageLeftBtn.png"/></a>
		<a href="#">1</a>
		<a href="#">2</a>
		<a href="#">3</a>
		<a href="#"><img src="././resources/img/pageRightBtn.png"/></a>
	</div>
</div> <!-- contentsWrap -->
<footer></footer>
<div class="finalOrderModalWrap">
	<div class="finalOrderModal">
		<div class="finalOrderModalHead">
			<img src="././resources/img/sujeLogo.png" class="finalOrderModalLogo">
			<div class="modalMainTitle">최종 주문서 조회</div>
			<label class="finalOrderCodeTitle">최종주문번호</label>
			<input type="text" disabled="disabled" class="finalOrderCode">
		</div>
		<div class="modalContentsBox marginmodalContentsBox">
			<label class="modalContentsTitle">상품 카테고리</label> 
			<select class="modalCategory" disabled="disabled">
				<option value="dessert">디저트</option>
				<option value="snack">전통간식</option>
				<option value="petFood">반려동물식품</option>
				<option value="clothing">의류</option>
				<option value="jewelry">주얼리</option>
				<option value="handicraft">수공예품</option>
				<option value="accessory">잡화</option>
				<option value="homeLiving">홈리빙</option>
			</select>
			<select class="modalCategory" disabled="disabled">
				<option>베이커리</option>
				<option>케이크</option>
				<option>마카롱</option>
				<option>타르트</option>
				<option>쿠키</option>
				<option>약과</option>
				<option>떡</option>
				<option>양갱</option>
				<option>애견간식</option>
				<option>애견케이크</option>
				<option>여성</option>
				<option>남성</option>
				<option>남녀공용</option>
				<option>키즈</option>
				<option>반지</option>
				<option>목걸이</option>
				<option>팔찌</option>
				<option>생활소품</option>
				<option>인테리어</option>
				<option>문구</option>
				<option>기념일</option>
				<option>일러스트</option>
				<option>가구</option>
				<option>패브릭</option>
				<option>방향제</option>
			</select>
		</div>
		<div class="modalContentsBox">
			<label class="modalContentsTitle">주문 수량</label>
			<input type="text" disabled="disabled" class="modalContentsInfo"><div class="orderCount">개</div>
			<label class="modalContentsTitle marginModalContentsTitle">주문 사이즈</label> 
			<input type="text" disabled="disabled" class="modalContentsInfo">
		</div>
		<div class="modalContentsBox">
			<label class="modalContentsTitle">주문 금액</label> 
			<input type="text" disabled="disabled" class="modalContentsInfo"><div class="orderCount">원</div>
			<label class="modalContentsTitle marginModalContentsTitle">배송 형태</label>
			<select class="modalContentsInfo" disabled="disabled">
				<option>픽업</option>
				<option>배송</option>
			</select>
		</div>
		<div class="modalContentsBigBox">
			<label class="modalContentsTitle">요구사항</label> 
			<textarea disabled="disabled" class="modalContentsLongInfo"></textarea>
		</div>
		<button class="modalCloseBtn">확인</button>
	</div> <!-- storeMoreInfoModal -->
</div> <!-- storeMoreInfoModalWrap -->
</body>
</html>