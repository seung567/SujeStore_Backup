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
<link rel="stylesheet" href="./resources/css/storeAdmin/storeProfile.css" />
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
				<li class="storeSecondCategoryBtn checkedStateSecondCategory"><a href="#">
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
			<a href="#" class="storeFirstCategoryBtn">&nbsp;&nbsp;&nbsp;플리마켓 관리</a>
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
		</div>
		<!-- storeSubMenuBox --> 
		<div class="storeContentsBox">

			<h1 class="title">스토어 페이지 관리</h1>
			<hr>

			<form class="form-container">
				<label for="storeName">스토어명</label> 
				<input type="text" 
					id="storeName" name="storeName" class="text-box" value="${vo.s_id}" disabled/>
			</form>

			<form class="form-container">
				<label for="storeCategory">스토어 카테고리</label> 
				<select name="storeCategory" class="text-box">
					<option value="option1">카테고리 1</option>
					<option value="option2">카테고리 2</option>
					<option value="option3">카테고리 3</option>
					<!-- 필요한 만큼 옵션을 추가할 수 있습니다. -->
				</select>
			</form>

			<div class="image-container">
				<label for="storeProfile">스토어 프로필 이미지</label> <img
					id="profilePreview" src="#" alt="프로필 이미지 미리보기">
				<button onclick="document.getElementById('storeProfile').click()">불러오기</button>
			</div>

			<div class="image-container">
				<label for="storeBackimg">스토어 배경 이미지</label> <img
					id="backimgPreview" src="#" alt="배경 이미지 미리보기">
				<button onclick="document.getElementById('storeBackimg').click()">불러오기</button>
			</div>

			<form class="form-container">
				<label for="storeDescription">스토어 소개문구</label> <input type="text"
					name="storeDescription" class="text-box2" value="${vo.s_text}" disabled/> <span
					style="color: gray; font-size: 12px;">(100자 이하)</span>
				 <div class="button-container">
				<button>수정하기</button>
				</div>
			</form>
		</div>
		<!-- storeContentsBox -->
	</div>
	<!-- storeContentsWrap -->
	<footer></footer>
</body>
</html>