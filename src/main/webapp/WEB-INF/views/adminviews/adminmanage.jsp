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
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="./resources/js/adminjs/adminModalJs.js"></script>
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
				<td>STORE1238</td>
				<td>스토어 카테고리 값</td>
				<td>STORE NAME</td>
				<td>12341234</td>
				<td><button class="storeMoreInfoBtn">조회</button></td>
				<td>Y</td>
				<td>추가 정보</td>
				<td>2024/01/01</td>
			</tr>
			<tr class="newStoreTableRow">
				<td>STORE1237</td>
				<td>스토어 카테고리 값</td>
				<td>STORE NAME</td>
				<td>12341234</td>
				<td><button class="storeMoreInfoBtn">조회</button></td>
				<td>Y</td>
				<td>추가 정보</td>
				<td>2024/01/01</td>
			</tr>
			<tr class="newStoreTableRow">
				<td>STORE1236</td>
				<td>스토어 카테고리 값</td>
				<td>STORE NAME</td>
				<td>12341234</td>
				<td><button class="storeMoreInfoBtn">조회</button></td>
				<td>Y</td>
				<td>추가 정보</td>
				<td>2024/01/01</td>
			</tr>
			<tr class="newStoreTableRow">
				<td>STORE1235</td>
				<td>스토어 카테고리 값</td>
				<td>STORE NAME</td>
				<td>12341234</td>
				<td><button class="storeMoreInfoBtn">조회</button></td>
				<td>Y</td>
				<td>추가 정보</td>
				<td>2024/01/01</td>
			</tr>
			<tr class="newStoreTableRow">
				<td>STORE1234</td>
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

<!-- 모달 -->
<div class="storeMoreInfoModalWrap">
	<div class="storeMoreInfoModal">
		<%@ include file="./Modal/manage.jsp"%>
	</div> <!-- storeMoreInfoModal -->
</div> <!-- storeMoreInfoModalWrap -->
</body>
</html>