<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SUJE - Q&A 작성</title>

<!-- 폰트링크 -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap"
	rel="stylesheet" />

<!-- css 파일 연결 -->
<link rel="stylesheet" href="./resources/css/resetStyle.css" />
<link rel="stylesheet" href="./resources/css/customer/customerQnAQ.css" />

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

	<!-- 상단메뉴바 호출 -->
	<jsp:include page="/WEB-INF/views/headerHtml/memberHeader.jsp"></jsp:include>

	<div class="main">

		<!-- 좌측 서브 메뉴 버튼 호출 -->
		<jsp:include page="/WEB-INF/views/customer/customerMenuBar.jsp"></jsp:include>

		<!-- 화면 메인 Content 부분 -->
		<div class="mainContentright">
			<!-- Q&A 작성 내역 부분 -->
			<div>
			<div class="subtitle">Q&A 작성</div>
			<div><input type="button" value="작성하기"></div>
			</div>
			<div class="myPageLine"></div>

			<div class="mainInputFormTitle">
				<!-- Q&A 데이터 테이블 -->
				<table class="List">
					<tr class="QnAListTitle">
						<td>Q&A 게시물번호</td>
						<td>제목</td>
						<td>작성일자</td>
						<td>답변일자</td>
						<td>답변 조회</td>
					</tr>

					<tr>
						<td>000000001</td>
						<td>3/14까지 주문 가능할까요?</td>
						<td>2024/03/01</td>
						<td>2024/03/02</td>
						<td><input type="button" value="조회"></td>
					</tr>

					<tr>
						<td>000000002</td>
						<td>특이한 색상도 제작 가능한가요?</td>
						<td>2024/03/02</td>
						<td>2024/03/03</td>
						<td><input type="button" value="조회"></td>
					</tr>

					<tr>
						<td>000000003</td>
						<td>제작 범위 관련해서 문의 드립니다!</td>
						<td>2024/03/03</td>
						<td>2024/03/04</td>
						<td><input type="button" value="조회"></td>
					</tr>


				</table>
				<div class="pageing">< 1 2 3 ></div>
			</div>
		</div>
	</div>


	<!-- Modal 출력 부분 -->
	<div class="qnaInsertModal">
		<div class="qnaInsertModalBody">
			<!-- 상단 제목 부분 -->
			<div class="qnaInsertTitle">
				<div>SUJE</div>
				<div>Q&A 답변</div>
				<div>
					게시물번호 <input type="text" />
				</div>
					</div>

				<!-- Modal 메인 Content -->
				<div class="modalMainContent">
					<!-- 메인 좌측 Content Title -->
					<div class="ContentLefit">
						<div>제목</div>
						<div>답변일자</div>
						<div>내용</div>
					</div>


			<!-- 메인 우측 Content -->
			<div class="ContentRight">
				<!-- Content 첫번째 라인 -->
				<div>
					<input type="text" />
				</div>
				<!-- Content 두번째 라인 -->
				<div>
					<input type="text" />
				</div>
				<!-- Content 세번째 라인 -->
				<div>
					<input type="text" />
				</div>

				<!-- 등록하기 버튼 -->
				<div class="insertbtn">
					<div>
						<input type="button" value="확인">
					</div>

				</div>
			</div>
		</div>
		</div>
		
			</div>
			</div>
</body>
</html>