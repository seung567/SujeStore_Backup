<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>SUJE - 마이페이지</title>

<!-- 폰트링크 -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap"
	rel="stylesheet" />

<!-- css 파일 연결 -->
<link rel="stylesheet" href="./resources/css/resetStyle.css" />
<link rel="stylesheet" href="./resources/css/customer/customerMyPage.css" />

<!-- 자바스크립트 연결 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="./resources/js/customer/customerMyPage.js"></script>
</head>
<body>

	<jsp:include page="/WEB-INF/views/headerHtml/memberHeader.jsp"></jsp:include>
	<div class="main">
		<div class="mainContentleft">
			<div>
				<img width=120px height=120px alt="" src="./resources/img/basicProfileIconBig.png">
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
		<div class="mainContentright">
			<div class="subtitle">마이페이지</div>
			<div class="myPageLine"></div>
			<div class="mainInputFormTitle">
				<div>
					<div>아이디</div>
					<div>비밀번호</div>
					<div>이름</div>
					<div>전화번호</div>
					<div>이메일</div>
					<div>생년월일</div>
					<div>성별</div>
				</div>
				<div>
					<div>
						<input type="text" />
					</div>
					<div>
						<input type="text" />
					</div>
					<div>
						<input type="text" />
					</div>
					<div>
						<input type="text" />
					</div>
					<div>
						<input type="text" />
					</div>
					<div>
						<input type="text" />
					</div>
					<div class="customSex">
						<div>
							<input type="radio" />
						</div>
						<div>남자</div>
						<div>
							<input type="radio" />
						</div>
						<div>여자</div>
					</div>
				</div>
			</div>
			<div class="modifyBtn"><input type="button" value="수정하기" /></div>
			<div class="myPageLine"></div>
		</div>
		
	</div>
	
</body>
</html>
