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

	<jsp:include page="/WEB-INF/views/headerHtml/memberHeader.jsp"></jsp:include>
	<div class="main">

		<!-- 좌측 서브 메뉴 버튼 -->
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
						<td>123456789</td>
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
						<td>123456789</td>
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
						<td>123456789</td>
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
						<td>123456789</td>
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
						<td>123456789</td>
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

</body>
</html>
