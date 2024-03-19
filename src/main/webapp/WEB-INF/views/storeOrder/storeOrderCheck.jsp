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
<link href="./resources/css/subMenuStyles.css" rel="stylesheet"
	type="text/css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SUJE</title>
<style type="text/css">
.title {
	font-size: 30px; /* 화면 너비에 대해 상대적인 크기 */
	margin-left: 1.5%; /* 왼쪽 여백을 화면 너비의 5%로 설정 */
	margin-top: 1.5%;
}

.subtitle {
	font-size: 30px; /* 화면 너비에 대해 상대적인 크기 */
	margin-left: 2%; /* 왼쪽 여백을 화면 너비의 5%로 설정 */
	margin-top: 5%;
}

.hr {
	border-top: 5px solid #d9d9d9; /* 위쪽 테두리 설정 */
	margin-top: 20px; /* 위쪽 여백 설정 */
	margin-bottom: 20px; /* 아래쪽 여백 설정 */
}

.hr2 {
	border-top: 2px solid #ADEFD1; /* 위쪽 테두리 설정 */
	margin-top: 20px; /* 위쪽 여백 설정 */
	margin-bottom: 20px; /* 아래쪽 여백 설정 */
}

table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	border: 1px solid #ADEFD1;
	padding: 8px;
}

th {
	background-color: #ADEFD1;
	text-align: center;

	
}

td {
	text-align: center;
	border-bottom: 3px solid #ADEFD1
}



tr:hover {
	background-color: #ddd;
}

.table-wrapper {
	margin-top: 50px; /* 원하는 만큼의 상단 여백을 설정합니다 */
}

.check {
	background-color: #ADEFD1; /* 배경색 */
	color: black; /* 글자색 */
	border: none; /* 테두리 없음 */
	padding: 10px 20px; /* 내부 여백 */
	font-size: 16px; /* 글자 크기 */
	cursor: pointer; /* 마우스 커서를 포인터로 변경 */
	border-radius: 5px; /* 버튼 모서리를 둥글게 */
}

.check:hover {
	background-color: #7BB5AF; /* 마우스를 올렸을 때의 배경색 */
}

</style>
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
					class="storeFirstCategoryBtn">&nbsp;&nbsp;&nbsp;스토어
						관리</a>
					<ul class="storeSecondCategoryArea">
						<li class="storeSecondCategoryBtn "><a href="#"> <span>스토어
									페이지 관리</span>
						</a></li>
						<li class="storeSecondCategoryBtn"><a href="#"> <span>스토어
									공지 조회/수정</span>
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
					class="storeFirstCategoryBtn checkedStateFirstCategory">&nbsp;&nbsp;&nbsp;주문
						관리</a>
					<ul class="storeSecondCategoryArea">
						<li class="storeSecondCategoryBtn"><a href="#"> <span>스토어
									주문요청 관리</span>
						</a></li>
						<li class="storeSecondCategoryBtn checkedStateSecondCategory"><a
							href="#"> <span>스토어 최종주문 조회</span>
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
			<h1 class="title">스토어 최종주문 조회</h1>
			<hr class="hr">
			<h2 class="title">주문 결제정보</h2>
			<div class="table-wrapper">
				<table border="1">
					<thead>
						<tr>
							<th>결제번호</th>
							<th>최종주문번호</th>
							<th>주문일자</th>
							<th>결제일자</th>
							<th>결제금액</th>
							<th>구매확정</th>
							<th>구매확정일자</th>
							<th>상세주문정보</th>
							<th>배송형태</th>
							<th>배송정보</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>123456</td>
							<td>123456</td>
							<td>2024-03-15</td>
							<td>2024-03-16</td>
							<td>11,900</td>
							<td>N</td>
							<td></td>
							<td><button class="check">조회</button></td>
							<td>픽업</td>
							<td><button class="check">조회</button></td>
						</tr>
						<tr>
							<td>123456</td>
							<td>123456</td>
							<td>2024-03-15</td>
							<td>2024-03-16</td>
							<td>11,900</td>
							<td>N</td>
							<td></td>
							<td><button class="check">조회</button></td>
							<td>픽업</td>
							<td><button class="check">조회</button></td>
						</tr>
						<tr>
							<td>123456</td>
							<td>123456</td>
							<td>2024-03-15</td>
							<td>2024-03-16</td>
							<td>11,900</td>
							<td>N</td>
							<td></td>
							<td><button class="check">조회</button></td>
							<td>픽업</td>
							<td><button class="check">조회</button></td>
						</tr>
						<tr>
							<td>123456</td>
							<td>123456</td>
							<td>2024-03-15</td>
							<td>2024-03-16</td>
							<td>11,900</td>
							<td>N</td>
							<td></td>
							<td><button class="check">조회</button></td>
							<td>픽업</td>
							<td><button class="check">조회</button></td>
						</tr>
						<tr>
							<td>123456</td>
							<td>123456</td>
							<td>2024-03-15</td>
							<td>2024-03-16</td>
							<td>11,900</td>
							<td>N</td>
							<td></td>
							<td><button class="check">조회</button></td>
							<td>픽업</td>
							<td><button class="check">조회</button></td>
						</tr>
						<tr>
							<td>123456</td>
							<td>123456</td>
							<td>2024-03-15</td>
							<td>2024-03-16</td>
							<td>11,900</td>
							<td>N</td>
							<td></td>
							<td><button class="check">조회</button></td>
							<td>픽업</td>
							<td><button class="check">조회</button></td>
						</tr>
						<tr>
							<td>123456</td>
							<td>123456</td>
							<td>2024-03-15</td>
							<td>2024-03-16</td>
							<td>11,900</td>
							<td>N</td>
							<td></td>
							<td><button class="check">조회</button></td>
							<td>픽업</td>
							<td><button class="check">조회</button></td>
						</tr>
						<tr>
							<td>123456</td>
							<td>123456</td>
							<td>2024-03-15</td>
							<td>2024-03-16</td>
							<td>11,900</td>
							<td>N</td>
							<td></td>
							<td><button class="check">조회</button></td>
							<td>픽업</td>
							<td><button class="check">조회</button></td>
						</tr>
						<!-- 추가적인 공지사항 행을 필요한 만큼 추가할 수 있습니다 -->
					</tbody>
				</table>
			</div>
			<br /> <br />
			<hr class="hr">
			<h2 class="title">결제취소정보</h2>
			<div class="table-wrapper">
				<table>
					<thead>
						<tr>
							<th>결제취소번호</th>
							<th>최종주문번호</th>
							<th>취소일자</th>
							<th>취소사유</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>123456</td>
							<td>123456</td>
							<td>2024-03-16</td>
							<td>그냥</td>
						</tr>
						<tr>
							<td>123456</td>
							<td>123456</td>
							<td>2024-03-16</td>
							<td>그냥</td>
						</tr>
						<tr>
							<td>123456</td>
							<td>123456</td>
							<td>2024-03-16</td>
							<td>그냥</td>
						</tr>
					</tbody>
				</table>
			</div>
			<hr class="hr">
			<h2 class="title">반품요청정보</h2>
			<div class="table-wrapper">
				<table>
					<thead>
						<tr>
							<th>결제취소번호</th>
							<th>최종주문번호</th>
							<th>반품일자</th>
							<th>반품사유</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>123456</td>
							<td>123456</td>
							<td>2024-03-16</td>
							<td>그냥</td>
						</tr>
						<tr>
							<td>123456</td>
							<td>123456</td>
							<td>2024-03-16</td>
							<td>그냥</td>
						</tr>
						<tr>
							<td>123456</td>
							<td>123456</td>
							<td>2024-03-16</td>
							<td>그냥</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>


	</div>
	<!-- storeContentsBox -->
	</div>
	<!-- storeContentsWrap -->
</body>
</html>