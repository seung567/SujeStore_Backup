<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap"
	rel="stylesheet">
<link href="./resources/css/resetStyle.css" rel="stylesheet"
	type="text/css">
<link href="./resources/css/menuForm/subMenuStyle.css" rel="stylesheet" type="text/css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SUJE</title>
<link href="./resources/css/storeAdmin/storeNotice.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file="../../views/headerHtml/storeHeader.jsp"%>
	<div class="storeContentsWrap">
		<div class="storeSubMenuBox">
			<a href="#" class="storeProfileBox"><img
				src="./resources/img/basicProfileIconBig.png" /></a>
			<textarea rows="2" disabled="disabled" class="storeNameBox">STORE NAME AREA</textarea>
			<ul class="storeCategoryArea">
				<li class="storeFirstCategoryArea"><a href="#"
					class="storeFirstCategoryBtn checkedStateFirstCategory">&nbsp;&nbsp;&nbsp;스토어
						관리</a>
					<ul class="storeSecondCategoryArea">
						<li class="storeSecondCategoryBtn "><a href="#"> <span>스토어
									페이지 관리</span>
						</a></li>
						<li class="storeSecondCategoryBtn checkedStateSecondCategory"><a
							href="#"> <span>스토어 공지 조회/수정</span>
						</a></li>
						<li class="storeSecondCategoryBtn"><a href="#"> <span>스토어
									공지 등록</span>
						</a></li>
						<li class="storeSecondCategoryBtn"><a href="#"> <span>스토어
									작품 조회/수정</span>
						</a></li>
						<li class="storeSecondCategoryBtn"><a href="#"> <span>스토어
									작품 등록</span>
						</a></li>
					</ul></li>
				<li class="storeFirstCategoryArea"><a href="#"
					class="storeFirstCategoryBtn">&nbsp;&nbsp;&nbsp;플리마켓 관리</a>
					<ul class="storeSecondCategoryArea">
						<li class="storeSecondCategoryBtn"><a href="#"> <span>플리마켓
									상품 조회/수정</span>
						</a></li>
						<li class="storeSecondCategoryBtn"><a href="#"> <span>플리마켓
									상품 등록</span>
						</a></li>
					</ul></li>
				<li class="storeFirstCategoryArea"><a href="#"
					class="storeFirstCategoryBtn">&nbsp;&nbsp;&nbsp;주문 관리</a>
					<ul class="storeSecondCategoryArea">
						<li class="storeSecondCategoryBtn"><a href="#"> <span>스토어
									주문요청 관리</span>
						</a></li>
						<li class="storeSecondCategoryBtn"><a href="#"> <span>스토어
									최종주문 조회</span>
						</a></li>
						<li class="storeSecondCategoryBtn"><a href="#"> <span>플리마켓
									주문 조회</span>
						</a></li>
					</ul></li>
				<li class="storeFirstCategoryArea"><a href="#"
					class="storeFirstCategoryBtn">&nbsp;&nbsp;&nbsp;정산 관리</a></li>
			</ul>
		</div>
		<!-- storeSubMenuBox -->
		<div class="storeContentsBox">
			<h1 class="title">스토어 공지 조회/수정</h1>
			<hr class="hr">
			<div class="table-wrapper">
				<table>
					<thead>
						<tr>
							<th>공지 유형</th>
							<th>공지 내용</th>
							<th>등록일자</th>
							<th>수정일자</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>공지 유형 1</td>
							<td>공지 내용이 여기에 들어갑니다.</td>
							<td>2024-03-15</td>
							<td>2024-03-16</td>
						</tr>
						<tr>
							<td>공지 유형 2</td>
							<td>공지 내용이 여기에 들어갑니다.</td>
							<td>2024-03-14</td>
							<td>2024-03-15</td>
						</tr>
						<!-- 추가적인 공지사항 행을 필요한 만큼 추가할 수 있습니다 -->
					</tbody>
				</table>
			</div>
			<br /> <br />
			<hr class="hr">
			<h1 class="store_mainTitle">스토어 공지 수정</h1>
			<form class="store_mainInfo">
				<div class="store_subCategory">
					<label class="store_subTitle">공지 유형</label> <select
						class="notiInfo_selectBox">
						<option value="choice">======= 선택 =======</option>
						<option value="1">공지사항</option>
						<option value="2">배송안내</option>
						<option value="3">주문안내</option>
					</select>
				</div>
				<div class="store_subCategory">
					<label class="store_subTitle">공지 작성 내용</label><br />
					<textarea class="notiInfo_content">내용을 작성하세요</textarea>
				</div>

				<button type="submit" class="submitBtn" name="submitBtn">등록하기</button>
			</form>
		</div>


	</div>
	<!-- storeContentsBox -->
	</div>
	<!-- storeContentsWrap -->
</body>
</html>