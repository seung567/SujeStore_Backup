<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제하기</title>
<!-- 폰트링크 -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap"
	rel="stylesheet" />

<!-- css 파일 연결 -->
<link rel="stylesheet" href="./resources/css/resetStyle.css" />
<link rel="stylesheet"
	href="./resources/css/customer/Modal/payModal.css" />

<!-- 데이터피커 CSS 연결 -->
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<!-- 자바스크립트 연결 -->
<!-- 자바 라이브러리 -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- JS 연결 -->
<script type="text/javascript"
	src="./resources/js/customer/customerReview.js"></script>
</head>

<body>
	<!-- Modal 출력 부분 -->
	<!-- Order join content 부분 -->
	<div class="payMent">
		<div class="payMentListModalBody">
			<!-- 상단 제목 부분 -->
			<div class="payMentOrderListTitle">
				<div>
					<img width=62px height=20px src="./resources/img/sujeLogo.png" />
				</div>
				<div>결제하기</div>
			</div>

			<div class="payMentsubtitle">주문정보</div>
			<hr />
			<!-- MainContent 부분(1) -->
			<div class="payMentmodalMainContent">
				<!-- 메인 좌측 Content Title -->
				<div class="payMentContentLefit">
					<div>최종주문번호</div>
					<div>상품 카테고리</div>
					<div>주문 수량</div>
					<div>주문 금액</div>
					<div>요구 사항</div>
				</div>

				<!-- 메인 우측 Content -->
				<div class="payMentContentRight">
					<!-- Content 1번째 라인 -->
					<div>
						<input type="text" />
					</div>
					<!-- Content 2번째 라인 -->
					<div>
						<div>
							<select>
								<option>베이커리</option>
								<option selected="selected">케이크</option>
								<option>마카롱</option>
								<option>타르트</option>
								<option>쿠키</option>
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
								<option selected="selected">치즈케이크</option>
								<option>일반마카롱</option>
								<option>뚱카롱</option>
							</select>
						</div>
					</div>
					<!-- Content 3번째 라인 -->
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
					<!-- Content 4번째 라인 -->
					<div>
						<div>
							<input type="text" />
						</div>
						<div>원</div>

						<div>배송 형태</div>
						<div>
							<select>
								<option selected="selected">배송</option>
								<option>픽업</option>
							</select>
						</div>
					</div>
					<!-- Content 5번째 라인 -->
					<div>
						<input type="text" />
					</div>
				</div>
			</div>

			<div class="payMentsubtitle">결제정보</div>
			<hr />

			<!-- MainContent 부분(2) -->
			<div class="payMentmodalMainContent2">
				<!-- 메인 좌측 Content Title -->
				<div class="payMentContentLefit2">
					<div>결제 방식</div>
					<div>결제 금액</div>
				</div>

				<!-- 메인 우측 Content -->
				<div class="payMentContentRight2">
					<!-- Content 1번째 라인 -->
					<div>
						<select>
							<option selected="selected">카드</option>
							<option>계좌이체</option>
						</select>
					</div>

					<!-- Content 2번째 라인 -->

					<div>
						<div>
							<input type="text" />
						</div>
						<div>원</div>

						<div>결제일자</div>
						<div>
							<input type="text" />
						</div>
					</div>

				</div>
			</div>


			<div class="payMentsubtitle">배송정보</div>
			<hr />


			<!-- MainContent 부분(3) -->
			<div class="payMentmodalMainContent3">
				<!-- 메인 좌측 Content Title -->
				<div class="payMentContentLefit3">
					<div>수령자명</div>
					<div>수령자 전화번호</div>
					<div>배송 주소</div>
					<div>배송 메모</div>
				</div>

				<!-- 메인 우측 Content -->
				<div class="payMentContentRight3">
					<!-- Content 1번째 라인 -->
					<div>
						<input type="text" />
					</div>
					<!-- Content 2번째 라인 -->
					<div>
						<input type="text" />
					</div>
					<!-- Content 3번째 라인 -->
					<div>
						<input type="text" />
					</div>
					<!-- Content 4번째 라인 -->
					<div>
						<input type="text" />
					</div>
					<!-- 버튼-->
				</div>
			</div>
			<div class="payMentinsertbtn">
				<div>
					<input type="button" value="결제하기">
				</div>
				<div>
					<input class="viewCancel" type="button" value="취소">
				</div>
			</div>
			<!-- Order join content 부분 -->
</body>
</html>