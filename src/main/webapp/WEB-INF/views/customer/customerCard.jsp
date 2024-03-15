<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Suje - 카드 등록/수정</title>

<!-- 폰트링크 -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap"
	rel="stylesheet" />

<!-- css 파일 연결 -->
<link rel="stylesheet" href="./resources/css/resetStyle.css" />
<link rel="stylesheet" href="./resources/css/customer/customerCard.css" />

<!-- 자바스크립트 연결 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="./resources/js/customer/customerCard.js"></script>
</head>
<body>

	<jsp:include page="/WEB-INF/views/headerHtml/memberHeader.jsp"></jsp:include>
	<div class="main">
	
		<!-- 좌측 서브 메뉴 버튼 -->
		<div class="mainContentleft">
			<div>
				<img width=120px height=120px alt="" src="./resources/img/basicProfileIcon.png">
			</div>
			<div>abc123</div>
			<div class="subTitle mypagebtn"><a href="">마이페이지</a></div>
			<div class="subTitle"><a href="">카드 등록/수정</a></div>
			<div class="subTitle"><a href="">계좌 등록/수정</a></div>
			<div class="subTitle"><a href="">주문 내역 조회</a></div>
			<div class="subTitle"><a href="">후기 작성</a></div>
			<div class="subTitle"><a href="">SUJE 톡톡</a></div>
			<div class="subTitle"><a href="">Q&A 작성</a></div>
		</div>
		
		<!-- 화면 메인 Content 부분 -->
		<div class="mainContentright">
			<!-- Content 제목 -->
			<div class="subtitle">카드 등록/수정</div>
			<div class="myPageLine"></div>
			
			<div class="mainInputFormTitle">
				<!-- 각 입력부분 제목 -->
				<div>
					<div>카드사</div>
					<div>카드 번호</div>
					<div>유효기간</div>
					<div>CVC</div>
					<div>비밀번호</div>
				</div>
				<!-- 각 입력부분 -->
				<div>
					<!-- 카드사 선택부분 -->
					<div>
						<select>
							<option value="woori">우리카드</option>
							<option value="hyundai">현대카드</option>
							<option value="shinhan">신한카드</option>
							<option value="kakao">카카오카드</option>
						</select>
					</div>
					
					<!-- 카드번호 입력부분 -->
					<div>
						<input type="text" />
					</div>
					
					<!-- 유효기간 입력부분 -->
					<div>
						<input type="text" />
					</div>
					
					<!-- CVC 입력부분 -->
					<div>
						<input type="text" />
					</div>
					
					<!-- 비밀번호 입력부분 -->
					<div>
						<input type="text" /> ● ●
					</div>
				</div>
			</div>
			<div class="modifyBtn"><input type="button" value="등록 / 수정하기" /></div>
			<div class="myPageLine"></div>
		</div>
		
	</div>
	
</body>
</html>
