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
<link href="./resources/css/storeEach/storeEachPageStyle.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="./resources/js/storeEach/storeEachPageJs.js"></script>
<title>SUJE</title>
</head>
<body>
<%@ include file="../headerHtml/memberHeader.jsp" %>
<div class="storeInfoArea">
	<img src="././resources/img/exImg.png" class="coverImg">
	<div class="coverImgShadow"></div>
	<div class="storeProfileImg"><img src="././resources/img/basicProfileIconBig.png"></div>
	<div class="storeName">STORE NAME</div>
	<div class="storeText">STORE 소개가 작성되는 영역입니다. STORE 소개가 작성되는 영역입니다.</div>
</div>
<div class="contentsWrap">
	<div class="storeNotiArea">
		<a href="#" class="storeEachNoti">
			<div class="notiType">공지사항</div>
			<div class="noticontent">공지사항 상세 내용이 작성되는 영역입니다. 공지사항 상세 내용이 작성되는 영역입니다. 공지사항 상세 내용이 작성되는 영역입니다.</div>
			<img src="././resources/img/pageRightBtn.png"/>
		</a>
		<a href="#" class="storeEachNoti">
			<div class="notiType">공지사항</div>
			<div class="noticontent">공지사항 상세 내용이 작성되는 영역입니다. 공지사항 상세 내용이 작성되는 영역입니다. 공지사항 상세 내용이 작성되는 영역입니다.</div>
			<img src="././resources/img/pageRightBtn.png"/>
		</a>
		<a href="#" class="storeEachNoti">
			<div class="notiType">공지사항</div>
			<div class="noticontent">공지사항 상세 내용이 작성되는 영역입니다. 공지사항 상세 내용이 작성되는 영역입니다. 공지사항 상세 내용이 작성되는 영역입니다.</div>
			<img src="././resources/img/pageRightBtn.png"/>
		</a>
	</div>
	<div class="mainTitle">스토어 피드</div>
	<div class="mainLine"></div>
	<div class="storeFeedArea">
		<a href="#" class="storeEachFeed"><img src="././resources/img/exImg.png"/></a>
		<a href="#" class="storeEachFeed"><img src="././resources/img/exImg.png"/></a>
		<a href="#" class="storeEachFeed"><img src="././resources/img/exImg.png"/></a>
		<a href="#" class="storeEachFeed"><img src="././resources/img/exImg.png"/></a>
		<a href="#" class="storeEachFeed"><img src="././resources/img/exImg.png"/></a>
		<a href="#" class="storeEachFeed"><img src="././resources/img/exImg.png"/></a>
		<a href="#" class="storeEachFeed"><img src="././resources/img/exImg.png"/></a>
		<a href="#" class="storeEachFeed"><img src="././resources/img/exImg.png"/></a>
	</div>
	<div class="mainLine"></div>
	<button class="orderBtn">+</button>	
</div> <!-- contentsWrap -->
<footer></footer>

<!-- 모달 -->

<!-- 주문하기 모달 -->
<div class="customerOrderListModal">
	<div class="customerOrderListModalBody">
		<%@ include file="./Modal/orderModal.jsp" %>
	</div>
</div>

<!-- 스토어 피드 모달 -->
<div class="customerFeedListModal">
	<div class="customeFeedListModalBody">
		<%@ include file="./Modal/feedModal.jsp" %>
	</div>
</div>

<!-- 공지사항 모달 -->
<div class="customerinfoListModal">
	<div class="customeinfoListModalBody">
		<%@ include file="./Modal/infoModal.jsp" %>
	</div>
</div>

</body>
</html>