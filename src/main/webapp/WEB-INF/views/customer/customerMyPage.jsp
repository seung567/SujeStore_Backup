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
		<jsp:include page="/WEB-INF/views/customer/customerMenuBar.jsp"></jsp:include>
		
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