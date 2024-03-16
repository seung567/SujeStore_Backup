<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>SUJE - 후기작성</title>

<!-- 폰트링크 -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap"
	rel="stylesheet" />

<!-- css 파일 연결 -->
<link rel="stylesheet" href="./resources/css/resetStyle.css" />
<link rel="stylesheet"
	href="./resources/css/customer/customerReview.css" />

<!-- 자바스크립트 연결 -->
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript"
	src="./resources/js/customer/customerReview.js"></script>
</head>
<body>

	<!-- 상단메뉴바 호출 -->
	<jsp:include page="/WEB-INF/views/headerHtml/memberHeader.jsp"></jsp:include>
	
	<div class="main">
	
		<!-- 좌측 서브 메뉴 버튼 호출 -->
		<jsp:include page="/WEB-INF/views/customer/customerMenuBar.jsp"></jsp:include>

		<!-- 화면 메인 Content 부분 -->
		<div class="mainContentright">
			<!-- 주문제작 결제 내역 부분 -->
			<div class="subtitle">후기작성</div>
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
						<td>후기작성</td>
						<td>후기작성일자</td>
					</tr>
					<tr>
						<td>000000001</td>
						<td>123456789</td>
						<td>2024/03/01</td>
						<td>2024/03/01</td>
						<td>11,900</td>
						<td>N</td>
						<td>2024/03/01</td>
						<td><input type="button" value="작성"></td>
						<td>2024/03/01</td>
					</tr>
					<tr>
						<td>000000002</td>
						<td>123456789</td>
						<td>2024/03/01</td>
						<td>2024/03/01</td>
						<td>11,900</td>
						<td>N</td>
						<td>2024/03/01</td>
						<td><input type="button" value="작성"></td>
						<td>2024/03/01</td>
					</tr>
					<tr>
						<td>000000003</td>
						<td>123456789</td>
						<td>2024/03/01</td>
						<td>2024/03/01</td>
						<td>11,900</td>
						<td>N</td>
						<td>2024/03/01</td>
						<td><input type="button" value="작성"></td>
						<td>2024/03/01</td>
					</tr>
					<tr>
						<td>000000004</td>
						<td>123456789</td>
						<td>2024/03/01</td>
						<td>2024/03/01</td>
						<td>11,900</td>
						<td>N</td>
						<td>2024/03/01</td>
						<td><input type="button" value="작성"></td>
						<td>2024/03/01</td>
					</tr>
					<tr>
						<td>000000005</td>
						<td>123456789</td>
						<td>2024/03/01</td>
						<td>2024/03/01</td>
						<td>11,900</td>
						<td>N</td>
						<td>2024/03/01</td>
						<td><input type="button" value="작성"></td>
						<td>2024/03/01</td>
					</tr>
				

				</table>
				<div class="pageing">< 1 2 3 ></div>
			</div>
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
					<div><img width=30px height=30px alt="" src="./resources/img/Star1Customer.png" /></div>
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
						<div>작성일자</div>
						<div><input type="text"/></div>
					</div>
					<!-- Content 두번째 라인 -->
					<div>
						<div><input type="text"/></div>
						<div><input type="button" value="불러오기"/></div>
					</div>
					<!-- Content 세번째 라인 -->
					<div>
						<div><input type="text"/></div>
					</div>
				</div>
			</div>
			
			<!-- 등록하기 버튼 -->
			<div class="insertbtn">
				<div><input type="button" value="등록하기"></div>
				<div><a href=testPageSet.do?page=ysm&site=customer/customerReview><input type="button" value="취소"></a></div>
			</div>
		</div>
	</div>

</body>
</html>
