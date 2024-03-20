<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- css 파일 연결 -->
<link rel="stylesheet" href="./resources/css/resetStyle.css" />
<link rel="stylesheet" href="./resources/css/customer/Modal/orderInfoModal.css" />

</head>

<body>
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
			<div class="OrderInfomodalMainContent">
				<!-- 메인 좌측 Content Title -->
				<div class="OrderInfoContentLefit">
					<div>상품 카테고리</div>
					<div>주문 수량</div>
					<div>주문 금액</div>
					<div>요구사항</div>
				</div>

				<!-- 메인 우측 Content -->
				<div class="OrderInfoContentRight">
					<!-- Content 첫번째 라인 -->
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
					<!-- Content 두번째 라인 -->
					<div>
						<div>
							<input type="text" />${vo.testval }
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
								<option selected="selected">배송</option>
								<option>픽업</option>
							</select>
						</div>
					</div>
					<!-- Content 네번째 라인 -->
					<div>
						<input type="text" />
					</div>
				</div>
			</div>

			<div class="OrderInfoinsertbtn">
				<div>
					<input class="insertBtnRes" type="button" value="등록하기">
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