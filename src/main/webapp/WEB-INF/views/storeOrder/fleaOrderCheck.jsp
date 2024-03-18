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
	padding: 8px;
}

th {
	background-color: #ADEFD1;
	text-align: center;
	height: 30px;
}

td {
	border-bottom: 2px solid #ADEFD1;
	text-align: center;
}

tr:hover {
	background-color: #ddd;
}

tbody>tr>td {
	border-bottom: 2px solid #ADEFD1;
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

/* Modal css */
/* Modal 기본 css*/
.storeOrderModal {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.4);
	/*   display: none; */
	text-align: center;
}

.storeOrderModal.show {
	display: block;
}

.storeOrderModalBody {
	margin-top: 70px;
	position: absolute;
	top: 50%;
	left: 50%;
	width: 700px;
	height: 400px;
	padding: 40px 20px 40px 40px;
	text-align: center;
	background-color: rgb(255, 255, 255);
	border-radius: 10px;
	box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);
	transform: translateX(-50%) translateY(-50%);
	position: absolute;
}

.storeOrderModalTitle {
	display: flex;
	/*  width: 100px; */
	height: 20px;
	align-items: center;
}

/*Modal Main Title CSS*/
/* SUJE 로고 CSS*/
.modalTitle {
	margin-right: 40px;
	font-size: 20px;
	font-weight: bold;
	width: 300px;
	height: 20px;
}

.modalNo {
	margin-right: 20px;
	font-size: 15px;
	font-weight: bold;
	width: 200px;
	height: 20px;
}

/*Modal Main Content CSS*/
.modalMainContent {
	margin-top: 50px;
	font-size: 12px;
	justify-content: space-around;
}
.first{
	width:400px;
	height:30px;
	margin-left: 40px;
	display: flex;
	
}
.secound{
	width:700px;
	height:30px;
	margin-top:10px;
	margin-left:40px;
		display: flex;
}
.third{
	width:700px;
	height:30px;
	margin-left: 40px;
	margin-top:10px;
	display: flex;
}

.fourth{
	width:700px;
	height:30px;
	margin-left: 40px;
	margin-top:50px;
	display: flex;	
}
.modalMainContent input[type="text"],
.modalMainContent textarea {
    width: 200px;
    padding: 8px;
    border-radius: 5px;
    border: 1px solid #ADEFD1;
    box-sizing: border-box;
    margin-top: 5px; /* 상단 여백 추가 */
}


/* 텍스트 영역(텍스트 상자 아래) 스타일 */
.modalMainContent textarea {
    width: 500px;
     height: 70px; 
    padding: 8px;
    border-radius: 5px;
    border: 1px solid #ADEFD1;
    box-sizing: border-box;
    margin-top: 5px; 
   
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
					class="storeFirstCategoryBtn checkedStateFirstCategory">&nbsp;&nbsp;&nbsp;주문
						관리</a>
					<ul class="storeSecondCategoryArea">
						<li class="storeSecondCategoryBtn"><a href="#"> <span>스토어
									주문요청 관리</span>
						</a></li>
						<li class="storeSecondCategoryBtn "><a href="#"> <span>스토어
									최종주문 조회</span>
						</a></li>
						<li class="storeSecondCategoryBtn checkedStateSecondCategory"><a
							href="#"> <span>플리마켓 주문 조회</span>
						</a></li>
					</ul></li>
				<li class="storeFirstCategoryArea"><a href="#"
					class="storeFirstCategoryBtn">&nbsp;&nbsp;&nbsp;정산 관리</a></li>
			</ul>
		</div>
		<!-- storeSubMenuBox -->
		<div class="storeContentsBox">
			<h1 class="title">플리마켓 주문 조회</h1>
			<hr class="hr">
			<div class="table-wrapper">
				<table>
					<thead>
						<tr>
							<th>주문번호</th>
							<th>상품 내용</th>
							<th>주문 수량</th>
							<th>결제금액</th>
							<th>주문일자</th>
							<th>구매확정일자</th>
							<th>구매확정일자</th>
							<th>배송정보</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>123456</td>
							<td>빵빵이</td>
							<td>1</td>
							<td>11,900</td>
							<td>2024-03-16</td>
							<td>N</td>
							<td>2024-03-16</td>
							<td><button class="check">조회</button></td>
						</tr>
						<tr>
							<td>123456</td>
							<td>빵빵이</td>
							<td>1</td>
							<td>11,900</td>
							<td>2024-03-16</td>
							<td>N</td>
							<td>2024-03-16</td>
							<td><button class="check">조회</button></td>
						</tr>
						<tr>
							<td>123456</td>
							<td>빵빵이</td>
							<td>1</td>
							<td>11,900</td>
							<td>2024-03-16</td>
							<td>N</td>
							<td>2024-03-16</td>
							<td><button class="check">조회</button></td>
						</tr>
						<tr>
							<td>123456</td>
							<td>빵빵이</td>
							<td>1</td>
							<td>11,900</td>
							<td>2024-03-16</td>
							<td>N</td>
							<td>2024-03-16</td>
							<td><button class="check">조회</button></td>
						</tr>
						<tr>
							<td>123456</td>
							<td>빵빵이</td>
							<td>1</td>
							<td>11,900</td>
							<td>2024-03-16</td>
							<td>N</td>
							<td>2024-03-16</td>
							<td><button class="check">조회</button></td>
						</tr>
						<tr>
							<td>123456</td>
							<td>빵빵이</td>
							<td>1</td>
							<td>11,900</td>
							<td>2024-03-16</td>
							<td>N</td>
							<td>2024-03-16</td>
							<td><button class="check">조회</button></td>
						</tr>
						<tr>
							<td>123456</td>
							<td>빵빵이</td>
							<td>1</td>
							<td>11,900</td>
							<td>2024-03-16</td>
							<td>N</td>
							<td>2024-03-16</td>
							<td><button class="check">조회</button></td>
						</tr>
						<tr>
							<td>123456</td>
							<td>빵빵이</td>
							<td>1</td>
							<td>11,900</td>
							<td>2024-03-16</td>
							<td>N</td>
							<td>2024-03-16</td>
							<td><button class="check">조회</button></td>
						</tr>
						<!-- 추가적인 공지사항 행을 필요한 만큼 추가할 수 있습니다 -->

					</tbody>
				</table>
			</div>
		</div>
		<!-- Modal 출력 부분 -->
		<div class="storeOrderModal">
			<div class="storeOrderModalBody">
				<!-- 상단 제목 부분 -->
				<div class="storeOrderModalTitle">
					<div class="logoImg">
						<img width="100px" height="20px" alt=""
							src="./resources/img/sujeStoreLogo.png" />
					</div>
					<h3 class="modalTitle">최종 주문서 조회</h3>
					<label class="modalNo">최종주문번호</label> <input class="textbox3"
						type="text" />
				</div>

				<!-- 메인 우측 Content -->
				<div class="modalMainContent">
					<!-- Content 첫번째 열 -->
					<div class = "first">
						<label for="Cartegory">상품 카테고리</label>
						<select>
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option selected="selected">5</option>
						</select>
						<select>
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option selected="selected">5</option>
						</select>
					</div>
					<!-- Content 두번째 열 -->
					<div class = "secound">
						<label for="OrderCount">주문 수량</label> <input type="text" />
						<label for="OrderSize">주문 사이즈</label> <input type="text" />
					</div>
					<!-- Content 세번째 열 -->
					<div class = "third">
						<label for="OrderSel">주문 금액</label> <input type="text" />
						<label for="delivery">배송 형태</label> <input type="text" />
					</div>
					<!-- Content 네번째 열 -->
					<div class = "fourth">
						<label for="requirements">요구 사항</label>
						<textarea></textarea>
					</div>
				</div>

			</div>
		</div>

	</div>
	<!-- storeContentsBox -->
	</div>
	<!-- storeContentsWrap -->
</body>
</html>