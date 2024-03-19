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
<link href="./resources/css/main/fleaMarket/mainFleaMarketStyle.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="./resources/js/main/mainFleaMarketmainNaviJs.js"></script>
<title>SUJE</title>
</head>
<body>
<%@ include file="../../headerHtml/memberHeader.jsp" %>
<div class="contentsWrap">
<div class="subMenuArea">
	<ul class="mainNaviWrap">
		<li class="mainNavi selectedMainNavi"><a href="#">전체</a></li>
		<li class="mainNavi"><a href="#">디저트<img src="././resources/img/mainSubMenuBtn.png"/></a>
			<ul class="subNaviWrap">
				<li><a href="#">&nbsp;&nbsp;베이커리</a></li>
				<li><a href="#">&nbsp;&nbsp;케이크</a></li>
				<li><a href="#">&nbsp;&nbsp;마카롱</a></li>
				<li><a href="#">&nbsp;&nbsp;타르트</a></li>
				<li><a href="#">&nbsp;&nbsp;쿠키</a></li>
			</ul>
		</li>
		<li class="mainNavi"><a href="#">전통간식<img src="././resources/img/mainSubMenuBtn.png"/></a>
			<ul class="subNaviWrap">
				<li><a href="#">&nbsp;&nbsp;약과</a></li>
				<li><a href="#">&nbsp;&nbsp;떡</a></li>
				<li><a href="#">&nbsp;&nbsp;양갱</a></li>
			</ul>
		</li>
		<li class="mainNavi"><a href="#">반려동물식품<img src="././resources/img/mainSubMenuBtn.png"/></a>
			<ul class="subNaviWrap">
				<li><a href="#">&nbsp;&nbsp;애견간식</a></li>
				<li><a href="#">&nbsp;&nbsp;애견쿠키</a></li>
				<li><a href="#">&nbsp;&nbsp;애견케이크</a></li>
			</ul>
		</li>
		<li class="mainNavi"><a href="#">의류<img src="././resources/img/mainSubMenuBtn.png"/></a>
			<ul class="subNaviWrap">
				<li><a href="#">&nbsp;&nbsp;여성</a></li>
				<li><a href="#">&nbsp;&nbsp;남성</a></li>
				<li><a href="#">&nbsp;&nbsp;남녀공용</a></li>
				<li><a href="#">&nbsp;&nbsp;키즈</a></li>
			</ul>
		</li>
		<li class="mainNavi"><a href="#">주얼리<img src="././resources/img/mainSubMenuBtn.png"/></a>
			<ul class="subNaviWrap">
				<li><a href="#">&nbsp;&nbsp;반지</a></li>
				<li><a href="#">&nbsp;&nbsp;목걸이</a></li>
				<li><a href="#">&nbsp;&nbsp;팔찌</a></li>
			</ul>
		</li>
		<li class="mainNavi"><a href="#">수공예품<img src="././resources/img/mainSubMenuBtn.png"/></a>
			<ul class="subNaviWrap">
				<li><a href="#">&nbsp;&nbsp;생활소품</a></li>
				<li><a href="#">&nbsp;&nbsp;주방공예</a></li>
				<li><a href="#">&nbsp;&nbsp;인테리어</a></li>
			</ul>
		</li>
		<li class="mainNavi"><a href="#">잡화<img src="././resources/img/mainSubMenuBtn.png"/></a>
			<ul class="subNaviWrap">
				<li><a href="#">&nbsp;&nbsp;문구</a></li>
				<li><a href="#">&nbsp;&nbsp;기념품</a></li>
				<li><a href="#">&nbsp;&nbsp;일러스트</a></li>
			</ul>
		</li>
		<li class="mainNavi"><a href="#">홈리빙<img src="././resources/img/mainSubMenuBtn.png"/></a>
			<ul class="subNaviWrap">
				<li><a href="#">&nbsp;&nbsp;가구</a></li>
				<li><a href="#">&nbsp;&nbsp;패브릭</a></li>
			</ul>
		</li>
	</ul>
</div> <!-- subMenuArea -->
<div class="mainContentsArea">
	<div class="mainTitleArea">
		<div class="mainTitle">전체</div>
		<select class="mainFilter">
			<option selected="selected">기본 정렬순</option>
			<option>최신순</option>
			<option>가격 높은순</option>
			<option>가격 낮은순</option>
		</select>
	</div>
	<div class="AreaLine"></div>
	<div class="itemArea">
		<a href="#" class="EachItemLinkArea">
			<table class="EachItem">
				<tr class="itemImgTr"><td><div class="itemImgArea"><img src="././resources/img/exImg.png"/></div></td></tr>
				<tr class="itemStoreTr"><td>STORE NAME</td></tr>
				<tr class="itemNameTr"><td>ITEM NAME ITEM NAME ITEM NAME</td></tr>
				<tr class="itemPriceTr"><td><span>10,000</span>원</td></tr>
			</table>
		</a>
		<a href="#" class="EachItemLinkArea">
			<table class="EachItem">
				<tr class="itemImgTr"><td><div class="itemImgArea"><img src="././resources/img/exImg.png"/></div></td></tr>
				<tr class="itemStoreTr"><td>STORE NAME</td></tr>
				<tr class="itemNameTr"><td>ITEM NAME ITEM NAME ITEM NAME</td></tr>
				<tr class="itemPriceTr"><td><span>10,000</span>원</td></tr>
			</table>
		</a>
		<a href="#" class="EachItemLinkArea">
			<table class="EachItem">
				<tr class="itemImgTr"><td><div class="itemImgArea"><img src="././resources/img/exImg.png"/></div></td></tr>
				<tr class="itemStoreTr"><td>STORE NAME</td></tr>
				<tr class="itemNameTr"><td>ITEM NAME ITEM NAME ITEM NAME</td></tr>
				<tr class="itemPriceTr"><td><span>10,000</span>원</td></tr>
			</table>
		</a>
		<a href="#" class="EachItemLinkArea">
			<table class="EachItem">
				<tr class="itemImgTr"><td><div class="itemImgArea"><img src="././resources/img/exImg.png"/></div></td></tr>
				<tr class="itemStoreTr"><td>STORE NAME</td></tr>
				<tr class="itemNameTr"><td>ITEM NAME ITEM NAME ITEM NAME</td></tr>
				<tr class="itemPriceTr"><td><span>10,000</span>원</td></tr>
			</table>
		</a>
	</div>
	<div class="AreaLine"></div>
	<div class="pageingArea">
		<a href="#"><img src="././resources/img/pageLeftBtn.png"/></a>
		<a href="#">1</a>
		<a href="#">2</a>
		<a href="#">3</a>
		<a href="#"><img src="././resources/img/pageRightBtn.png"/></a>
	</div>
</div>
</div> <!-- contentsWrap -->
<footer></footer>
</body>
</html>