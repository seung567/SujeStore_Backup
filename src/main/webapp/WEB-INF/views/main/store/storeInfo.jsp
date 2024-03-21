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
<link href="./resources/css/main/store/storeInfoStyle.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<%@ include file="../../headerHtml/memberHeader.jsp" %>
<div class="contentsWrap">
	<div class="storeCategory">
		<div class="allCategory">전체</div>
		<img src="././resources/img/mainSubMenuBtn.png">
		<div class="category">FIRST CATEGORY</div>
	</div> <!-- storeCategory -->
	<div class="storeTitle">스토어 후기</div>
	<div class="titleLine"></div>
	<div class="reviewArea">
		<table class="eachReview">
			<tr>
				<td colspan="2" class="reviewImgTd"><div class="reviewImgArea"><img src="././resources/img/exImg.png"></div></td>
			</tr>
			<tr>
				<td colspan="2" class="reviewContentsTd">정말 예쁘고 너무 맛있었습니다! 선물 받은 친구가 너무 좋아했어요~!</td>
			</tr>
			<tr>
				<td colspan="2" class="reviewWriterTd">SUJE123</td>
			</tr>
			<tr class="reviewScoreTr">
				<td>
					<span>5.0</span>
					<img src="././resources/img/mainReviewStarImg.png"/>
				</td>
				<td>
					<img src="././resources/img/mainReviewThumbsUpImg.png"/>
					<span>0</span>
				</td>
			</tr>
		</table>
		<table class="eachReview">
			<tr>
				<td colspan="2" class="reviewImgTd"><div class="reviewImgArea"><img src="././resources/img/exImg.png"></div></td>
			</tr>
			<tr>
				<td colspan="2" class="reviewContentsTd">정말 예쁘고 너무 맛있었습니다! 선물 받은 친구가 너무 좋아했어요~!</td>
			</tr>
			<tr>
				<td colspan="2" class="reviewWriterTd">SUJE123</td>
			</tr>
			<tr class="reviewScoreTr">
				<td>
					<span>5.0</span>
					<img src="././resources/img/mainReviewStarImg.png"/>
				</td>
				<td>
					<img src="././resources/img/mainReviewThumbsUpImg.png"/>
					<span>0</span>
				</td>
			</tr>
		</table>
		<table class="eachReview">
			<tr>
				<td colspan="2" class="reviewImgTd"><div class="reviewImgArea"><img src="././resources/img/exImg.png"></div></td>
			</tr>
			<tr>
				<td colspan="2" class="reviewContentsTd">정말 예쁘고 너무 맛있었습니다! 선물 받은 친구가 너무 좋아했어요~!</td>
			</tr>
			<tr>
				<td colspan="2" class="reviewWriterTd">SUJE123</td>
			</tr>
			<tr class="reviewScoreTr">
				<td>
					<span>5.0</span>
					<img src="././resources/img/mainReviewStarImg.png"/>
				</td>
				<td>
					<img src="././resources/img/mainReviewThumbsUpImg.png"/>
					<span>0</span>
				</td>
			</tr>
		</table>
		<table class="eachReview">
			<tr>
				<td colspan="2" class="reviewImgTd"><div class="reviewImgArea"><img src="././resources/img/exImg.png"></div></td>
			</tr>
			<tr>
				<td colspan="2" class="reviewContentsTd">정말 예쁘고 너무 맛있었습니다! 선물 받은 친구가 너무 좋아했어요~!</td>
			</tr>
			<tr>
				<td colspan="2" class="reviewWriterTd">SUJE123</td>
			</tr>
			<tr class="reviewScoreTr">
				<td>
					<span>5.0</span>
					<img src="././resources/img/mainReviewStarImg.png"/>
				</td>
				<td>
					<img src="././resources/img/mainReviewThumbsUpImg.png"/>
					<span>0</span>
				</td>
			</tr>
		</table>
		<table class="eachReview">
			<tr>
				<td colspan="2" class="reviewImgTd"><div class="reviewImgArea"><img src="././resources/img/exImg.png"></div></td>
			</tr>
			<tr>
				<td colspan="2" class="reviewContentsTd">정말 예쁘고 너무 맛있었습니다! 선물 받은 친구가 너무 좋아했어요~!</td>
			</tr>
			<tr>
				<td colspan="2" class="reviewWriterTd">SUJE123</td>
			</tr>
			<tr class="reviewScoreTr">
				<td>
					<span>5.0</span>
					<img src="././resources/img/mainReviewStarImg.png"/>
				</td>
				<td>
					<img src="././resources/img/mainReviewThumbsUpImg.png"/>
					<span>0</span>
				</td>
			</tr>
		</table>
	</div> <!-- reviewArea -->
	<div class="pageingArea">
		<a href="#"><img src="././resources/img/pageLeftBtn.png"/></a>
		<a href="#">1</a>
		<a href="#">2</a>
		<a href="#">3</a>
		<a href="#"><img src="././resources/img/pageRightBtn.png"/></a>
	</div> <!-- pageingArea -->
	<div class="storeTitle">스토어 정보</div>
	<div class="titleLine"></div>
	<div class="storeInfoWrap">
		<div class="mapArea"></div>
		<div class="storeInfoArea">
			<div class="storeTotalScoreArea">
				<img src="././resources/img/mainReviewStarImg.png"/>
				<span>5.0</span>
				<img src="././resources/img/mainReviewCountImg.png"/>
				<span>100</span>
			</div>
			<div class="storeName">STORE NAME</div>
			<a href="#" class="storePageBtn">스토어 페이지 보러가기</a>
			<div class="storeInfo">STORE 간단 소개가 삽입되는 영역입니다. STORE 간단 소개가 삽입되는 영역입니다.</div>
			<div class="storeDetailInfoTitle">주소</div>
			<div class="storeDetailInfo">서울특별시 구로구 구로1동 구로빌딩 101호</div>
			<div class="storeDetailInfoTitle">전화번호</div>
			<div class="storeDetailInfo">02-123-1234</div>
		</div>
	</div>
</div> <!-- contentsWrap -->
<footer></footer>
</body>
</html>