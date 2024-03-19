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
<link href="./resources/css/main/maincummu/mainCommStyle.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="./resources/js/main/mainCommmainNaviJs.js"></script>
</head>
<body>
<%@ include file="../../headerHtml/memberHeader.jsp" %>
<div class="contentsWrap">
<div class="subMenuArea">
	<ul class="mainNavi">
		<li class="selectedMainNavi"><a href="#">전체</a></li>
		<li><a href="#">궁금해요</a></li>
		<li><a href="#">추천해요</a></li>
		<li><a href="#">꿀팁공유</a></li>
		<li><a href="#">비하인드</a></li>
		<li><a href="#">일상</a></li>
	</ul>
</div> <!-- subMenuArea -->
<div class="mainContentsArea">
	<div class="mainTitleArea">
		<div class="mainTitle">커뮤니티 최신 글</div>
		<div class="categoryArea">
			<div class="allCategory">전체</div>
			<img src="././resources/img/mainSubMenuBtn.png">
			<div class="mainCategory">CATEGORY</div>
		</div>
		<a href="#" class="contentsWriteBtn">작성하기</a>
	</div>
	<div class="AreaLine"></div>
	<div class="contentsArea">
		<a href="#" class="contentsLinkArea">
			<table class="EachContents">
				<tr><td class="contentsCategoryTd" colspan="5">CATEGORY</td></tr>
				<tr><td class="contentsTitleTd" colspan="5">커뮤니티 콘텐츠 제목 영역 입니다.</td></tr>
				<tr>
					<td class="contentsWriterTd">SUJE123</td>
					<td class="commViewsTd"><img src="././resources/img/commViewsIcon.png">0</td>
					<td class="commLikeTd"><img src="././resources/img/commLikeBeforeIcon.png">0</td>
					<td class="commCommentTd"><img src="././resources/img/commCommentIcon.png">0</td>
					<td class="commDateTd">2024/01/01</td>
				</tr>
			</table>
		</a>
		<a href="#" class="contentsLinkArea">
			<table class="EachContents">
				<tr><td class="contentsCategoryTd" colspan="5">CATEGORY</td></tr>
				<tr><td class="contentsTitleTd" colspan="5">커뮤니티 콘텐츠 제목 영역 입니다.</td></tr>
				<tr>
					<td class="contentsWriterTd">SUJE123</td>
					<td class="commViewsTd"><img src="././resources/img/commViewsIcon.png">0</td>
					<td class="commLikeTd"><img src="././resources/img/commLikeBeforeIcon.png">0</td>
					<td class="commCommentTd"><img src="././resources/img/commCommentIcon.png">0</td>
					<td class="commDateTd">2024/01/01</td>
				</tr>
			</table>
		</a>
		<a href="#" class="contentsLinkArea">
			<table class="EachContents">
				<tr><td class="contentsCategoryTd" colspan="5">CATEGORY</td></tr>
				<tr><td class="contentsTitleTd" colspan="5">커뮤니티 콘텐츠 제목 영역 입니다.</td></tr>
				<tr>
					<td class="contentsWriterTd">SUJE123</td>
					<td class="commViewsTd"><img src="././resources/img/commViewsIcon.png">0</td>
					<td class="commLikeTd"><img src="././resources/img/commLikeBeforeIcon.png">0</td>
					<td class="commCommentTd"><img src="././resources/img/commCommentIcon.png">0</td>
					<td class="commDateTd">2024/01/01</td>
				</tr>
			</table>
		</a>
		<a href="#" class="contentsLinkArea">
			<table class="EachContents">
				<tr><td class="contentsCategoryTd" colspan="5">CATEGORY</td></tr>
				<tr><td class="contentsTitleTd" colspan="5">커뮤니티 콘텐츠 제목 영역 입니다.</td></tr>
				<tr>
					<td class="contentsWriterTd">SUJE123</td>
					<td class="commViewsTd"><img src="././resources/img/commViewsIcon.png">0</td>
					<td class="commLikeTd"><img src="././resources/img/commLikeBeforeIcon.png">0</td>
					<td class="commCommentTd"><img src="././resources/img/commCommentIcon.png">0</td>
					<td class="commDateTd">2024/01/01</td>
				</tr>
			</table>
		</a>
		<a href="#" class="contentsLinkArea">
			<table class="EachContents">
				<tr><td class="contentsCategoryTd" colspan="5">CATEGORY</td></tr>
				<tr><td class="contentsTitleTd" colspan="5">커뮤니티 콘텐츠 제목 영역 입니다.</td></tr>
				<tr>
					<td class="contentsWriterTd">SUJE123</td>
					<td class="commViewsTd"><img src="././resources/img/commViewsIcon.png">0</td>
					<td class="commLikeTd"><img src="././resources/img/commLikeBeforeIcon.png">0</td>
					<td class="commCommentTd"><img src="././resources/img/commCommentIcon.png">0</td>
					<td class="commDateTd">2024/01/01</td>
				</tr>
			</table>
		</a>

	</div>
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