<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>SUJE - 주문 내역 조회</title>

<!-- 폰트링크 -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap"
	rel="stylesheet" />

<!-- css 파일 연결 -->
<link rel="stylesheet" href="./resources/css/resetStyle.css" />
<link rel="stylesheet" href="./resources/css/customer/customerOrderList.css" />

<!-- 자바스크립트 연결 -->
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript"
	src="./resources/js/customer/customerOrderList.js"></script>
</head>
<body>

	<jsp:include page="/WEB-INF/views/headerHtml/memberHeader.jsp"></jsp:include>
	<div class="main">

		<!-- 좌측 서브 메뉴 버튼 -->
		<jsp:include page="/WEB-INF/views/customer/customerMenuBar.jsp"></jsp:include>

		<!-- 화면 메인 Content 부분 -->
		<div class="mainContentright">
			<!-- 주문제작 결제 내역 부분 -->
			<div class="subtitle">주문제작 결제 내역</div>
			<div class="myPageLine"></div>

			<div class="mainInputFormTitle">
				<!-- 주문제작 결제 내역 테이터 테이블 -->
				<table class="List">
					<tr class="orderListTitle">
						<td>결제 번호</td>
						<td>최종주문번호</td>
						<td>주문 일자</td>
						<td>결제 일자</td>
						<td>결제 금액</td>
						<td>구매확정</td>
						<td>구매확정일자</td>
						<td>상세주문정보</td>
						<td>결제취소</td>
						<td>반품요청</td>
					</tr>
					<tr>
						<td>123456789</td>
						<td>123456789</td>
						<td>2024/03/01</td>
						<td>2024/03/01</td>
						<td>11,900</td>
						<td>N</td>
						<td>2024/03/01</td>
						<td><input type="button" value="조회"></td>
						<td><input type="button" value="요청"></td>
						<td><input type="button" value="요청"></td>
					</tr>
					<tr>
						<td>123456789</td>
						<td>123456789</td>
						<td>2024/03/01</td>
						<td>2024/03/01</td>
						<td>11,900</td>
						<td>N</td>
						<td>2024/03/01</td>
						<td><input type="button" value="조회"></td>
						<td><input type="button" value="요청"></td>
						<td><input type="button" value="요청"></td>
					</tr>
					<tr>
						<td>123456789</td>
						<td>123456789</td>
						<td>2024/03/01</td>
						<td>2024/03/01</td>
						<td>11,900</td>
						<td>N</td>
						<td>2024/03/01</td>
						<td><input type="button" value="조회"></td>
						<td><input type="button" value="요청"></td>
						<td><input type="button" value="요청"></td>
					</tr>
					<tr>
						<td>123456789</td>
						<td>123456789</td>
						<td>2024/03/01</td>
						<td>2024/03/01</td>
						<td>11,900</td>
						<td>N</td>
						<td>2024/03/01</td>
						<td><input type="button" value="조회"></td>
						<td><input type="button" value="요청"></td>
						<td><input type="button" value="요청"></td>
					</tr>
					<tr>
						<td>123456789</td>
						<td>123456789</td>
						<td>2024/03/01</td>
						<td>2024/03/01</td>
						<td>11,900</td>
						<td>N</td>
						<td>2024/03/01</td>
						<td><input type="button" value="조회"></td>
						<td><input type="button" value="요청"></td>
						<td><input type="button" value="요청"></td>
					</tr>

				</table>
				<div class="pageing">< 1 2 3 ></div>
			</div>

			<!-- 플리마켓 결제 내역 부분 -->
			<div class="subtitle2">플리마켓 결제 내역</div>
			<div class="myPageLine"></div>
			<table class="List">
				<!-- 플리마켓 결제 내역 테이터 테이블 -->
				<tr class="orderListTitle">
					<td>결제 번호</td>
					<td>스토어명</td>
					<td>상품 정보</td>
					<td>결제수량</td>
					<td>결제일자</td>
					<td>결제금액</td>
					<td>구매확정</td>
					<td>구매확정일자</td>
					<td>결제취소</td>
				</tr>
				<tr>
					<td>123456789</td>
					<td>아띠랑스</td>
					<td>천연담수진주 귀걸이, 피어싱</td>
					<td>1</td>
					<td>2024/03/01</td>
					<td>60,000</td>
					<td>N</td>
					<td>2024/03/31</td>
					<td><input type="button" value="요청"></td>
				</tr>
				<tr>
					<td>123456789</td>
					<td>아띠랑스</td>
					<td>천연담수진주 귀걸이, 피어싱</td>
					<td>1</td>
					<td>2024/03/01</td>
					<td>60,000</td>
					<td>N</td>
					<td>2024/03/31</td>
					<td><input type="button" value="요청"></td>
				</tr>
				<tr>
					<td>123456789</td>
					<td>아띠랑스</td>
					<td>천연담수진주 귀걸이, 피어싱</td>
					<td>1</td>
					<td>2024/03/01</td>
					<td>60,000</td>
					<td>N</td>
					<td>2024/03/31</td>
					<td><input type="button" value="요청"></td>
				</tr>
				<tr>
					<td>123456789</td>
					<td>아띠랑스</td>
					<td>천연담수진주 귀걸이, 피어싱</td>
					<td>1</td>
					<td>2024/03/01</td>
					<td>60,000</td>
					<td>N</td>
					<td>2024/03/31</td>
					<td><input type="button" value="요청"></td>
				</tr>
				<tr>
					<td>123456789</td>
					<td>아띠랑스</td>
					<td>천연담수진주 귀걸이, 피어싱</td>
					<td>1</td>
					<td>2024/03/01</td>
					<td>60,000</td>
					<td>N</td>
					<td>2024/03/31</td>
					<td><input type="button" value="요청"></td>
				</tr>
			</table>
			<div class="pageing">< 1 2 3 ></div>
			
			<!-- 결제 취소 부분 -->
			<div class="subtitle2">결제취소 내역</div>
			<div class="myPageLine"></div>
			<table class="List">
				<tr class="orderListTitle">
					<td>결제취소번호</td>
					<td>최종주문번호</td>
					<td>취소 일자</td>
					<td>취소 사유</td>
				</tr>
				<tr>
					<td>123456789</td>
					<td>123456789</td>
					<td>2024/03/01</td>
					<td>재결제를 위해 결제 취소</td>
				</tr>
				<tr>
					<td>123456789</td>
					<td>123456789</td>
					<td>2024/03/01</td>
					<td>재결제를 위해 결제 취소</td>
				</tr>
				<tr>
					<td>123456789</td>
					<td>123456789</td>
					<td>2024/03/01</td>
					<td>재결제를 위해 결제 취소</td>
				</tr>
			</table>
			<div class="pageing">< 1 2 3 ></div>
			
			<!-- 반품 요청 내역 -->
			<div class="subtitle2">반품 요청 내역</div>
			<div class="myPageLine"></div>
			<table class="List">
				<tr class="orderListTitle">
					<td>반품번호</td>
					<td>최종주문번호</td>
					<td>반품일자</td>
					<td>반품사유</td>
				</tr>
				<tr>
					<td>123456789</td>
					<td>123456789</td>
					<td>2024/03/01</td>
					<td>주문한 디자인과 실물 디자인이 너무 다름</td>
				</tr>
				<tr>
					<td>123456789</td>
					<td>123456789</td>
					<td>2024/03/01</td>
					<td>주문한 디자인과 실물 디자인이 너무 다름</td>
				</tr>
				<tr>
					<td>123456789</td>
					<td>123456789</td>
					<td>2024/03/01</td>
					<td>주문한 디자인과 실물 디자인이 너무 다름</td>
				</tr>
			</table>
			<div class="pageing">< 1 2 3 ></div>
			
		</div>


	</div>
		<!-- Modal 출력 부분 -->
	<div class="reviewInsertModal">
		<div class="reviewInsertModalBody">
			<!-- 상단 제목 부분 -->
			<div class="reviewInsertTitle">
				<div>SUJE</div>
				<div>주문제작 후기 작성</div>
				<div>
					제작주문결제번호 <input type="text" />
				</div>
			</div>

			<!-- Modal 메인 Content -->
			<div class="modalMainContent">
				<!-- 메인 좌측 Content Title -->
				<div class="ContentLefit">
					<div>
						<img width=30px height=30px alt="" src="./resources/img/Star1Customer.png" />
					</div>
					<div>이미지 등록</div>
					<div>내용</div>
				</div>

				<!-- 메인 우측 Content -->
				<div class="ContentRight">
					<!-- Content 첫번째 라인 -->
					<div>
						<div>
							<select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option selected="selected">5</option>
							</select>
						</div>
						<div>점</div>
						<div><label for="date">작성일자</label></div>
						<div>
							<input id="datepicker" type="text" />
						</div>
					</div>
					<!-- Content 두번째 라인 -->
					<div>
						<div>
							<input type="text" />
						</div>
						<div>
							<input type="button" value="불러오기" />
						</div>
					</div>
					<!-- Content 세번째 라인 -->
					<div>
						<div>
							<input type="text" />
						</div>
					</div>
				</div>
			</div>

			<!-- 등록하기 버튼 -->
			<div class="insertbtn">
				<div>
					<input type="button" value="등록하기">
				</div>
				<div>
					<a href=testPageSet.do?page=ysm&site=customer/customerReview>
						<input type="button" value="취소">
					</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
