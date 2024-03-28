<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="icon" type="image/png" href="./resources/img/faviconLogoIcon.png">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">
<link href="./resources/css/resetStyle.css" rel="stylesheet" type="text/css">
<link href="./resources/css/menuForm/headerStyle.css" rel="stylesheet" type="text/css">
<!-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> -->
<script type="text/javascript">
$(function() {
	$('.headerCategoryBtn').click(function(){
		$('.headerSubMenu').slideToggle(200);
	});
});
</script>
<title>SUJE</title>
<% 
String mainId = (String)session.getAttribute("mainId");
%>
</head>
<body>
<header>
<div class="header">
	<div class="firstHeaderNavi">
		<div class="headerLogo"><a href="memberMain.do"><img src="./resources/img/sujeLogo.png"/></a></div>
		
		<!-- 세션에 계정정보가 존재하지 않을 시 로그인 하기 버튼 영역(beforeLogin) 호출 -->
		<c:if test="${mainId eq null}">
			<div class="beforeLoginArea">
				<a href="mainLogin.do" class="headerLoginBtn">로그인</a>
				<a href="mainNewMember.do" class="headerNewMemBtn">회원가입</a>
				<a href="mainNewStore.do" class="headerStoreNewMemBtn">스토어 입점신청</a>
			</div>
		</c:if>
		
		<!-- 세션에 계정정보가 존재할 시 계정 영역(afterLogin) 호출 -->
		<c:if test="${mainId ne null}">
			<div class="afterLoginArea">
				<input type="text" disabled="disabled" value="${mainId}" class="headerId"/>
				<span>님</span>
				<a href="customerMyPage.do?id=<%=mainId %>" class="headerMypageBtn"><img src="./resources/img/basicProfileIcon.png"/></a>
				<a href="mainLogout.do" class="headerLogoutBtn">로그아웃</a>
			</div>
		</c:if>
		
	</div>
	<div class="firstHeaderLine"></div>
	<div class="secondHeaderNavi">
		<button class="headerCategoryBtn"><img src="./resources/img/headeHambergerMenu.png"/><span>전체 카테고리</span></button>
		<a href="mainPopularRank.do" class="headerRankingPageBtn">인기랭킹</a>
		<a href="viewRealTimeReview.do" class="headerReviewPageBtn">실시간 후기</a>
		<a href="viewMainComm.do" class="headerCommunityPageBtn">커뮤니티</a>
		<a href="viewFleaMarket.do" class="headerFleaMarketPageBtn">플리마켓</a>
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