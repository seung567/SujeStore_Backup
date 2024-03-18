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
<link href="./resources/css/menuForm/subMenuStyle.css" rel="stylesheet" type="text/css">
<link href="./resources/css/admincss/adminmanage.css" rel="stylesheet" type="text/css">
<link href="./resources/css/admincss/storeMoreInfoModal.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="./resources/js/adminjs/adminmanageJs.js"></script>
<title>SUJE</title>
</head>
<body>
<%@ include file="../../views/headerHtml/adminHeader.jsp"%>
<div class="adminContentsWrap">
<div class="adminSubMenuBox">
	<ul class="adminCategoryArea">
		<li class="adminFirstCategoryArea">
			<a href="#" class="adminFirstCategoryBtn checkedStateFirstCategory">&nbsp;&nbsp;&nbsp;스토어 입점 관리</a>
		</li>
		<li class="storeFirstCategoryArea">
			<a href="#" class="adminFirstCategoryBtn">&nbsp;&nbsp;&nbsp;스토어 벌점 관리</a>
		</li>
		<li class="adminFirstCategoryArea">
			<a href="#" class="storeFirstCategoryBtn">&nbsp;&nbsp;&nbsp;Q&A 관리</a>
		</li>
		<li class="adminFirstCategoryArea">
			<a href="#" class="storeFirstCategoryBtn">&nbsp;&nbsp;&nbsp;통계</a>
		</li>
	</ul>
</div> <!-- adminSubMenuBox -->
<div class="adminContentsBox">
	<h2 class="adminQnaMainTitle">스토어 입점 관리</h2>
	<hr class="adminLine">
	<table class="newStoreTable">
		<thead>
			<tr class="newStoreTableRow">
				<th>스토어 아이디</th>
				<th>스토어 카테고리</th>
				<th>스토어명</th>
				<th>사업자등록번호</th>
				<th>스토어 상세정보</th>
				<th>입점여부</th>
				<th>입점여부 추가정보</th>
				<th>업데이트 일자</th>
			</tr>
		</thead>
		<tbody>
			<tr class="newStoreTableRow">
				<td>STORE123</td>
				<td>스토어 카테고리 값</td>
				<td>STORE NAME</td>
				<td>12341234</td>
				<td><button class="storeMoreInfoBtn">조회</button></td>
				<td>Y</td>
				<td>추가 정보</td>
				<td>2024/01/01</td>
			</tr>
			<tr class="newStoreTableRow">
				<td>STORE123</td>
				<td>스토어 카테고리 값</td>
				<td>STORE NAME</td>
				<td>12341234</td>
				<td><button class="storeMoreInfoBtn">조회</button></td>
				<td>Y</td>
				<td>추가 정보</td>
				<td>2024/01/01</td>
			</tr>
			<tr class="newStoreTableRow">
				<td>STORE123</td>
				<td>스토어 카테고리 값</td>
				<td>STORE NAME</td>
				<td>12341234</td>
				<td><button class="storeMoreInfoBtn">조회</button></td>
				<td>Y</td>
				<td>추가 정보</td>
				<td>2024/01/01</td>
			</tr>
			<tr class="newStoreTableRow">
				<td>STORE123</td>
				<td>스토어 카테고리 값</td>
				<td>STORE NAME</td>
				<td>12341234</td>
				<td><button class="storeMoreInfoBtn">조회</button></td>
				<td>Y</td>
				<td>추가 정보</td>
				<td>2024/01/01</td>
			</tr>
			<tr class="newStoreTableRow">
				<td>STORE123</td>
				<td>스토어 카테고리 값</td>
				<td>STORE NAME</td>
				<td>12341234</td>
				<td><button class="storeMoreInfoBtn">조회</button></td>
				<td>Y</td>
				<td>추가 정보</td>
				<td>2024/01/01</td>
			</tr>
		</tbody>
	</table>
	<div class="pageingArea">
		<a href="#"><img src="././resources/img/pageLeftBtn.png"/></a>
		<a href="#">1</a>
		<a href="#">2</a>
		<a href="#">3</a>
		<a href="#"><img src="././resources/img/pageRightBtn.png"/></a>
	</div>
</div> <!-- adminContentsBox -->
</div> <!-- adminContentsWrap -->
<footer></footer>
<div class="storeMoreInfoModalWrap">
	<div class="storeMoreInfoModal">
		<div class="storeMoreInfoModalHead">
			<img src="././resources/img/sujeAdminLogo.png" class="storeMoreInfoModalLogo">
			<div class="modalMainTitle">입점 여부 등록</div>
			<label class="modalStoreIdTitle">스토어 아이디</label>
			<input type="text" name="storeName" disabled="disabled" class="modalStoreIdInfo">
		</div>
		<h2 class="modalSubTitle">스토어 정보</h2>
		<hr class="adminLine">
		<div class="modalContentsBox">
			<label class="modalContentsTitle">스토어 카테고리</label> 
			<select class="modalCategory" disabled="disabled">
				<option value="dessert">디저트</option>
				<option value="snack">전통간식</option>
				<option value="petFood">반려동물식품</option>
				<option value="clothing">의류</option>
				<option value="jewelry">주얼리</option>
				<option value="handicraft">수공예품</option>
				<option value="accessory">잡화</option>
				<option value="homeLiving">홈리빙</option>
			</select>
		</div>
		<div class="modalContentsBox">
			<label class="modalContentsTitle">스토어명</label>
			<input type="text" name="storeName" disabled="disabled" class="modalContentsInfo">
			<label class="modalContentsTitle marginModalContentsTitle">사업자등록번호</label> 
			<input type="text" name="businessNumber" disabled="disabled" class="modalContentsInfo">
		</div>
		<div class="modalContentsBox">
			<label class="modalContentsTitle">이메일</label> 
			<input type="email" name="email" disabled="disabled" class="modalContentsInfo">
			<label class="modalContentsTitle marginModalContentsTitle">전화번호</label>
			<input type="tel" name="phoneNumber" disabled="disabled" class="modalContentsInfo">
		</div>
		<div class="modalContentsBox">
			<label class="modalContentsTitle">주소</label>
			<input type="text" name="address" disabled="disabled" class="modalContentsInfoLong">
		</div>
		<div class="modalContentsBox">
			<label class="modalContentsTitle">은행명</label>
			<select class="modalCategory" disabled="disabled">
				<option value="우리은행">우리은행</option>
				<option value="기업은행">기업은행</option>
				<option value="신한은행">신한은행</option>
				<option value="카카오뱅크">카카오뱅크</option>
			</select>
		</div>
		<div class="modalContentsBox">
			<label class="modalContentsTitle">계좌번호</label> 
			<input name="accountNumber" class="modalContentsInfo">
		</div>
		<h2 class="modalSubTitle">입점 여부 등록</h2>
		<hr class="adminLine">
		<form action="#">
			<div class="modalContentsBox">
				<label for="approvalStatus" class="modalContentsTitle">입점여부</label>
				<select id="approvalStatus" class="modalApprovalStatusInfo">
					<option selected="selected">====== 선택 ======</option>
					<option value="approve">승인</option>
					<option value="reject">반려</option>
				</select>
			</div>
			<div class="modalContentsBox">
				<label for="reason" class="modalContentsTitle">사유</label>
				<input type="text" id="reason" name="reason" class="modalReasonInfo">
			</div>
			<div class="modalBtnBox">
				<input type="submit" value="승인하기" class="modalSubmitBtn">
				<input type="button" value="취소" class="modalCloseBtn">
			</div>
		</form>
	</div> <!-- storeMoreInfoModal -->
</div> <!-- storeMoreInfoModalWrap -->
</body>
</html>