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
	border: 1px solid #ADEFD1;
}

th, td {
	border-bottom: 1px solid #ADEFD1;;
	padding: 8px;
}

th {
	background-color: #ADEFD1;
	text-align: center;
}

td {
	text-align: center;
}
tr:nth-child(even) {
	background-color: #ADEFD1;
}

tr:hover {
	background-color: #ddd;
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

.total-amount {
	font-size: 20px;
	font-weight: bold;
}

.month-selector {
	margin-bottom: 20px;
	margin-left: 30px;
}

.month-selector label {
	font-size: 30px;
	margin-left: 30px;
	font-weight: bold;
}

.month-selector select {
	padding: 5px;
	font-size: 16px;
	border: 1px solid #ADEFD1;
	border-radius: 5px;
	margin-left: 100px;
	text-align:center;
	width: 150px;
	height: 50px;
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
					class="storeFirstCategoryBtn">&nbsp;&nbsp;&nbsp;스토어 관리</a>
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
					class="storeFirstCategoryBtn ">&nbsp;&nbsp;&nbsp;주문
						관리</a>
					<ul class="storeSecondCategoryArea">
						<li class="storeSecondCategoryBtn"><a href="#"> <span>스토어
									주문요청 관리</span>
						</a></li>
						<li class="storeSecondCategoryBtn"><a
							href="#"> <span>스토어 최종주문 조회</span>
						</a></li>
						<li class="storeSecondCategoryBtn"><a href="#"> <span>플리마켓
									주문 조회</span>
						</a></li>
					</ul></li>
				<li class="storeFirstCategoryArea"><a href="#"
					class="storeFirstCategoryBtn checkedStateFirstCategory">&nbsp;&nbsp;&nbsp;정산 관리</a></li>
			</ul>
		</div>
		<!-- storeSubMenuBox -->
		<div class="storeContentsBox">
			<h1 class="title">정산 관리</h1>
			<hr class="hr">
			<div class="month-selector" style="display: inline-block;">
				<label for="month">월별 조회</label> <select id="month" name="month">
					<option value="01">1월</option>
					<option value="02">2월</option>
					<option value="03">3월</option>
					<option value="04">4월</option>
					<option value="05">5월</option>
					<option value="06">6월</option>
					<option value="07">7월</option>
					<option value="08">8월</option>
					<option value="09">9월</option>
					<option value="10">10월</option>
					<option value="11">11월</option>
					<option value="12">12월</option>
				</select>
			</div>
			<div class="table-wrapper">
				<table>
					<thead>
						<tr>
							<th>주문유형</th>
							<th>주문번호</th>
							<th>결제금액</th>
							<th>구매확정일자</th>
							<th>정산일자</th>
							<th>수수료</th>
							<th>정산 금액</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>123456</td>
							<td>123456</td>
							<td>11,900</td>
							<td>2024-03-16</td>
							<td>2024-03-16</td>
							<td>1,900</td>
							<td>10,000</td>
						</tr>
						<tr>
							<td>123456</td>
							<td>123456</td>
							<td>11,900</td>
							<td>2024-03-16</td>
							<td>2024-03-16</td>
							<td>1,900</td>
							<td>10,000</td>
						</tr>
						<tr>
							<td>123456</td>
							<td>123456</td>
							<td>11,900</td>
							<td>2024-03-16</td>
							<td>2024-03-16</td>
							<td>1,900</td>
							<td>10,000</td>
						</tr>
						<tr>
							<td>123456</td>
							<td>123456</td>
							<td>11,900</td>
							<td>2024-03-16</td>
							<td>2024-03-16</td>
							<td>1,900</td>
							<td>10,000</td>
						</tr>
						<tr>
							<td>123456</td>
							<td>123456</td>
							<td>11,900</td>
							<td>2024-03-16</td>
							<td>2024-03-16</td>
							<td>1,900</td>
							<td>10,000</td>
						</tr>
						<tr>
							<td>123456</td>
							<td>123456</td>
							<td>11,900</td>
							<td>2024-03-16</td>
							<td>2024-03-16</td>
							<td>1,900</td>
							<td>10,000</td>
						</tr>
						<tr>
							<td>123456</td>
							<td>123456</td>
							<td>11,900</td>
							<td>2024-03-16</td>
							<td>2024-03-16</td>
							<td>1,900</td>
							<td>10,000</td>
						</tr>
						<tr>
							<td>123456</td>
							<td>123456</td>
							<td>11,900</td>
							<td>2024-03-16</td>
							<td>2024-03-16</td>
							<td>1,900</td>
							<td>10,000</td>
						</tr>
						<!-- 추가적인 공지사항 행을 필요한 만큼 추가할 수 있습니다 -->
						<tr>
							<td colspan="6" style="text-align: center;"><strong><span
									class="total-amount">총 정산 금액</span></strong></td>
							<td><strong><span class="total-amount">$총 금액</span></strong></td>
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