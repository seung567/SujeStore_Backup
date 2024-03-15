<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">
<link href="./resources/css/resetStyle.css" rel="stylesheet" type="text/css">
<link href="./resources/css/headerStyle.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function() {
	$('.headerCategoryBtn').click(function(){
		$('.headerSubMenu').slideToggle(200);
	});
});
</script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SUJE</title>
</head>
<body>
<header>
<div class="header">
	<div class="firstHeaderNavi">
		<div class="headerLogo"><a href="./index.jsp"><img src="./resources/img/sujeLogo.png"/></a></div>
		<div class="beforeLoginArea hide">
			<a href="#" class="headerLoginBtn">로그인</a>
			<a href="#" class="headerNewMemBtn">회원가입</a>
			<a href="#" class="headerStoreNewMemBtn">스토어 입점신청</a>
		</div>
		<div class="afterLoginArea">
			<input type="text" disabled="disabled" value="SUJE123" class="headerId"/>
			<span>님</span>
			<a href="#" class="headerMypageBtn"><img src="./resources/img/basicProfileIcon.png"/></a>
			<button class="headerLogoutBtn">로그아웃</button>
		</div>
	</div>
	<div class="firstHeaderLine"></div>
	<div class="secondHeaderNavi">
		<button class="headerCategoryBtn"><img src="./resources/img/headeHambergerMenu.png"/><span>전체 카테고리</span></button>
		<a href="#" class="headerRankingPageBtn">인기랭킹</a>
		<a href="#" class="headerReviewPageBtn">실시간 후기</a>
		<a href="#" class="headerCommunityPageBtn">커뮤니티</a>
		<a href="#" class="headerFleaMarketPageBtn">플리마켓</a>
	</div>
	<div class="secondHeaderLine"></div>
	<div class="headerSubMenu">
		<ul class="headerFirstCategory">
			<li>디저트</li>
			<li>전통간식</li>
			<li>반려동물식품</li>
			<li>의류</li>
			<li>주얼리</li>
			<li>수공예품</li>
			<li>잡화</li>
			<li>홈리빙</li>
		</ul>
		<div class="headerSecondCategoryArea">
			<ul class="headerSecondCategory">
				<li>베이커리</li>
				<li>케이크</li>
				<li>마카롱</li>
				<li>타르트</li>
				<li>쿠키</li>
			</ul>
			<ul class="headerSecondCategory">
				<li>약과</li>
				<li>떡</li>
				<li>양갱</li>
			</ul>
			<ul class="headerSecondCategory">
				<li>애견간식</li>
				<li>애견쿠키</li>
				<li>애견케이크</li>
			</ul>
			<ul class="headerSecondCategory">
				<li>여성</li>
				<li>남성</li>
				<li>남녀공용</li>
				<li>키즈</li>
			</ul>
			<ul class="headerSecondCategory">
				<li>반지</li>
				<li>목걸이</li>
				<li>팔찌</li>
			</ul>
			<ul class="headerSecondCategory">
				<li>생활소품</li>
				<li>주방공예</li>
				<li>인테리어</li>
			</ul>
			<ul class="headerSecondCategory">
				<li>문구</li>
				<li>기념일</li>
				<li>일러스트</li>
			</ul>
			<ul class="headerSecondCategory">
				<li>가구</li>
				<li>패브릭</li>
				<li>방향제</li>
			</ul>
		</div>
	</div>
</div>
</header>
<div class="headerWrap"></div>
</body>
</html>