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
<script src="./resources/js/main/mainRealTimeReviewModalJs.js"></script>
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
					<button>1111</button>
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
					<button>2222</button>
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
					<button>3333</button>
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
					<button>4444</button>
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

<!-- 모달 -->
<div class="finalOrderModalWrap">
	<div class="finalOrderModal">
		<%@ include file="./Modal/review.jsp" %>
	</div>
</div>
</body>
</html>