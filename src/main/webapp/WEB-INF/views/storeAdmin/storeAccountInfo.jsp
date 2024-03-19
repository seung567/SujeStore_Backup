<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">
<link href="./resources/css/resetStyle.css" rel="stylesheet" type="text/css">
<link href="./resources/css/menuForm/subMenuStyle.css" rel="stylesheet" type="text/css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SUJE</title>
<link href="./resources/css/storeAdmin/storeAccountInfo.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@ include file="../../views/headerHtml/storeHeader.jsp" %>
<div class="storeContentsWrap">
<div class="storeSubMenuBox">
	<a href="#" class="storeProfileBox"><img src="./resources/img/basicProfileIconBig.png"/></a>
	<textarea rows="2" disabled="disabled" class="storeNameBox" >STORE NAME AREA</textarea>
	<ul class="storeCategoryArea">
		<li class="storeFirstCategoryArea">
			<a href="#" class="storeFirstCategoryBtn">&nbsp;&nbsp;&nbsp;스토어 관리</a>
			<ul class="storeSecondCategoryArea">
				<li class="storeSecondCategoryBtn"><a href="#">
					<span>스토어 페이지 관리</span>
				</a></li>
				<li class="storeSecondCategoryBtn"><a href="#">
					<span>스토어 공지 조회/수정</span>
				</a></li>
				<li class="storeSecondCategoryBtn"><a href="#">
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
			<h1 class="store_mainTitle">계정 정보</h1>
			<hr/>

			<form action="#" class="storeAcc_mainInfo">
				
				<label class="storeAcc_subTitle">아이디</label> 
				<input type="text" required="required" autofocus="autofocus" class="storeAcc_textbox1" />
				<button class="idCheckBtn">중복확인</button>

				<label class="storeAcc_subTitle">비밀번호</label> 
				<input type="password" required="required" class="storeAcc_textbox1" /> 
				
				<label class="storeAcc_subTitle">이메일</label> 
				<input type="text" required="required" class="storeAcc_textbox1" /> 
				
				<label class="storeAcc_subTitle">전화번호</label> 
				<input type="text" required="required" class="storeAcc_textbox1" /> 
				
				<label class="storeAcc_subTitle">주소</label> 
				<input type="text" required="required" class="storeAcc_textbox2" /> 
				
				<label class="storeAcc_subTitle">사업자등록번호</label> 
				<input type="text" required="required" class="storeAcc_textbox2" /> 
				
				<label class="storeAcc_subTitle">은행명</label> 
					<select	class="storeAcc_selectBox">
						<option selected="selected">=== 은행 선택 ===</option>
						<option>우리은행</option>
						<option>기업은행</option>
						<option>신한은행</option>
						<option>카카오뱅크</option>
					</select> 
				<label class="storeAcc_subTitle">계좌번호</label> 
				<input type="text" required="required" class="storeAcc_textbox2" /> 
				<button type="submit" class="submitBtn" name="submitBtn">수정하기</button>
			</form>
		</div> <!-- storeContentsBox -->
	</div> <!-- storeContentsWrap -->
</body>
</html>