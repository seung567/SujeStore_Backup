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
<link rel="stylesheet"
	href="./resources/css/customer/Modal/orderListModal2.css" />

<!-- 자바스크립트 연결 -->
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<!-- <script type="text/javascript"
	src="./resources/js/customer/customerOrderList.js"></script> -->

</head>
<body>
	<div class="payCancleModal">
		<div class="payCancleBody">
			<!-- 상단 제목 부분 -->
			<div class="payCancleTitle">
				<div>
					<img width=62px height=20px src="./resources/img/sujeLogo.png" />
				</div>
				<div>결제 취소 요청</div>
				<div>
					결제번호 <input type="text" />
				</div>
			</div>

			<!-- MainContent 부분 -->
			<div class="modalMainContent">
				<!-- 메인 좌측 Content Title -->
				<div class="payCancleContentLefit">
					<div>취소일자</div>
					<div>취소사유</div>
				</div>

				<!-- 메인 우측 Content -->
				<div class="payCancleContentRight">
					<!-- Content 첫번째 라인 -->
					<div>
						<div>
							<input type="text" />
						</div>
					</div>
					<!-- Content 두번째 라인 -->
					<div>
						<div>
							<input type="text" />
						</div>

					</div>
				</div>
			</div>

			<div class="payCancleinsertbtn">
				<div>
					<input type="button" value="요청하기">
				</div>
				<div>
						<input class="viewCancel" type="button" value="취소">
				</div>
			</div>
		</div>
	</div>
	-->
	<!-- Order join content 부분 -->
</body>
</html>