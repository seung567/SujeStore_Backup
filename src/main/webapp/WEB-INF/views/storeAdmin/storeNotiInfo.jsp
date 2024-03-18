<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">
<link href="./resources/css/resetStyle.css" rel="stylesheet" type="text/css">
<link href="./resources/css/menuForm/subMenuStyle.css" rel="stylesheet" type="text/css">
<style type="text/css">

hr {
    border-top: 5px solid #d9d9d9; /* 위쪽 테두리 설정 */
    margin-top: 50px; /* 위쪽 여백 설정 */
    margin-bottom: 20px; /* 아래쪽 여백 설정 */
}


.store_mainTitle {
	font-size: 30px;
	margin-top: 50px;
	margin-left: 20px;
	
}


.store_mainInfo {
	margin-top: 50px;

}


.store_subTitle {
	display: block;
	float: left;
	line-height: 50px;
	font-size: 20px;
	margin-left: 20px;
	width: 200px;
	height: 50px; 
	
}


.notiInfo_selectBox {
	font-size: 20px;
	width: 300px;
	height: 50px;
	border: 5px solid #ADEFD1;
	border-radius: 5px;
	text-align:center;
}

.notiInfo_selectBox:focus {
	outline: 2px solid #ADEFD1;
	border: 1px solid #ADEFD1;
	cursor: pointer;
}


.notiInfo_selectBox option:focus {
	cursor: pointer;
}


.notiInfo_content {
	border: 5px solid #ADEFD1;
	width: 1130px; 
	height: 200px;
	margin-top: 10px;
	margin-left: 20px;
	font-size: 20px;
	
}


.notiInfo_content:focus {
	outline: 2px solid #ADEFD1;
	border: 1px solid #ADEFD1;
}


.store_subCategory{
	margin-top: 50px;
}

.submitBtn {
	background-color: #ADEFD1;
	width: 300px;
	height: 50px;
	border-radius: 10px;
	margin-top: 30px;
	margin-left: 20px;
	
}

</style> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SUJE</title>
</head>
<body>
<%@ include file="../../views/headerHtml/storeHeader.jsp" %>
<div class="storeContentsWrap">
<div class="storeSubMenuBox">
	<a href="#" class="storeProfileBox"><img src="./resources/img/basicProfileIconBig.png"/></a>
	<textarea rows="2" disabled="disabled" class="storeNameBox" >STORE NAME AREA</textarea>
	<ul class="storeCategoryArea">
		<li class="storeFirstCategoryArea">
			<a href="#" class="storeFirstCategoryBtn checkedStateFirstCategory">&nbsp;&nbsp;&nbsp;스토어 관리</a>
			<ul class="storeSecondCategoryArea">
				<li class="storeSecondCategoryBtn"><a href="#">
					<span>스토어 페이지 관리</span>
				</a></li>
				<li class="storeSecondCategoryBtn"><a href="#">
					<span>스토어 공지 조회/수정</span>
				</a></li>
				<li class="storeSecondCategoryBtn checkedStateSecondCategory"><a href="#">
					<span>스토어 공지 등록</span>
				</a></li>
				<li class="storeSecondCategoryBtn"><a href="#">
					<span>스토어 작품 조회/수정</span>
				</a></li>
				<li class="storeSecondCategoryBtn"><a href="#">
					<span>스토어 작품 등록</span>
				</a></li>
			</ul>
		</li>
		<li class="storeFirstCategoryArea">
			<a href="#" class="storeFirstCategoryBtn ">&nbsp;&nbsp;&nbsp;플리마켓 관리</a>
			<ul class="storeSecondCategoryArea">
				<li class="storeSecondCategoryBtn"><a href="#">
					<span>플리마켓 상품 조회/수정</span>
				</a></li>
				<li class="storeSecondCategoryBtn"><a href="#">
					<span>플리마켓 상품 등록</span>
				</a></li>
			</ul>
		</li>
		<li class="storeFirstCategoryArea">
			<a href="#" class="storeFirstCategoryBtn">&nbsp;&nbsp;&nbsp;주문 관리</a>
			<ul class="storeSecondCategoryArea">
				<li class="storeSecondCategoryBtn"><a href="#">
					<span>스토어 주문요청 관리</span>
				</a></li>
				<li class="storeSecondCategoryBtn"><a href="#">
					<span>스토어 최종주문 조회</span>
				</a></li>
				<li class="storeSecondCategoryBtn"><a href="#">
					<span>플리마켓 주문 조회</span>
				</a></li>
			</ul>
		</li>
		<li class="storeFirstCategoryArea">
			<a href="#" class="storeFirstCategoryBtn">&nbsp;&nbsp;&nbsp;정산 관리</a>
		</li>
	</ul>
</div> <!-- storeSubMenuBox -->

		<div class="storeContentsBox">
			<h1 class="store_mainTitle">스토어 공지 등록</h1>
			<hr/>

			<form class="store_mainInfo">
			<div class= "store_subCategory">
				<label class="store_subTitle">공지 유형</label> 
				<select class="notiInfo_selectBox">
					<option selected="selected">======= 선택 =======</option>
					<option>공지사항</option>
					<option>배송안내</option>
					<option>주문안내</option>
				</select>
			</div>
			<div class= "store_subCategory">
				<label class="store_subTitle">공지 작성 내용</label><br />
				<textarea class="notiInfo_content">내용을 작성하세요</textarea>
			</div>
				
				<button type="submit" class="submitBtn" name="submitBtn">등록하기</button>
			</form>
		</div>
		<!-- storeContentsBox -->
	</div> <!-- storeContentsWrap -->
</body>
</html>