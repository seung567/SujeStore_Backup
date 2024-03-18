<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 폰트링크 -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap"
	rel="stylesheet" />

<!-- css 파일 연결 -->
<link rel="stylesheet" href="./resources/css/resetStyle.css" />
<link rel="stylesheet" href="./resources/css/customer/Modal/orderInfo.css" />

<!-- 데이터피커 CSS 연결 -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<!-- 자바스크립트 연결 -->
<!-- 자바 라이브러리 -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- JS 연결 -->
<script type="text/javascript"	src="./resources/js/customer/customerReview.js"></script>
</head>

<body>eeeee
<!-- Modal 출력 부분 -->
	<!-- Order join content 부분 -->
	<div class="customerOrderListModal">
		<div class="customerOrderListModalBody">
			<!-- 상단 제목 부분 -->
			<div class="customerOrderListTitle">
				<div><img width=62px height=20px src="./resources/img/sujeLogo.png"/></div>
				<div>최종 주문서 조회</div>
				<div>
					최종주문번호 <input type="text" />
				</div>
			</div>

			<!-- MainContent 부분 -->
			<div class="modalMainContent">
				<!-- 메인 좌측 Content Title -->
				<div class="ContentLefit">
					<div>상품 카테고리</div>
					<div>주문 수량</div>
					<div>주문 금액</div>
					<div>요구사항</div>
				</div>

				<!-- 메인 우측 Content -->
				<div class="ContentRight">
					<!-- Content 첫번째 라인 -->
					<div>
						<div>
							<select>
								<option>베이커리</option>
								<option>케이크</option>
								<option>마카롱</option>
								<option>타르트</option>
								<option>쿠키</option>
								<option selected="selected">케이크</option>
							</select>
						</div>

						<div>
							<select>
								<option>롤케이크</option>
								<option>버터크림빵</option>
								<option>마늘빵</option>
								<option>슈크림빵</option>
								<option>프레지에</option>
								<option>생크림케이크</option>
								<option>쉬폰케이크</option>
								<option>치즈케이크</option>
								<option>일반마카롱</option>
								<option>뚱카롱</option>
								<option selected="selected">치즈케이크</option>
							</select>
						</div>
					</div>
					<!-- Content 두번째 라인 -->
					<div>
						<div>
							<input type="text" />
						</div>
						<div>개</div>

						<div>주문 사이즈</div>
						<div>
							<input type="text" />
						</div>
					</div>
					<!-- Content 세번째 라인 -->
					<div>
						<div>
							<input type="text" />
						</div>
						<div>원</div>

						<div>배송형태</div>
						<div>
							<select>
								<option>배송</option>
								<option>픽업</option>
								<option selected="selected">배송</option>
							</select>
						</div>
					</div>
					<!-- Content 네번째 라인 -->
					<div>
						<input type="text" />
					</div>
				</div>
			</div>

			<div class="insertbtn">
				<div>
					<input type="button" value="등록하기">
				</div>
				<div>
						<input class="viewCancel" type="button" value="취소">
				</div>
			</div>
		</div>
	</div>
	<!-- Order join content 부분 -->
</body>
</html>