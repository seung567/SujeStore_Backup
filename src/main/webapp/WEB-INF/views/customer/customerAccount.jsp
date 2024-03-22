<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>SUJE - 계좌 등록/수정</title>

<!-- 폰트링크 -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap"
	rel="stylesheet" />

<!-- css 파일 연결 -->
<link rel="stylesheet" href="./resources/css/resetStyle.css" />
<link rel="stylesheet" href="./resources/css/customer/customerAccount.css" />

<!-- 자바스크립트 연결 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="./resources/js/customer/customerAccount.js"></script>
</head>
<body>

	<jsp:include page="/WEB-INF/views/headerHtml/memberHeader.jsp"></jsp:include>
	<div class="main">
	
		<!-- 좌측 서브 메뉴 버튼 -->
		<jsp:include page="/WEB-INF/views/customer/customerMenuBar.jsp"></jsp:include>
		
		<!-- 화면 메인 Content 부분 -->
		<div class="mainContentright">
			<!-- Content 제목 -->
			<div class="subtitle">계좌 등록/수정</div>
			<div class="myPageLine"></div>
			
			<div class="mainInputFormTitle">
				<!-- 각 입력부분 제목 -->
				<div>
					<div>은행명</div>
					<div>계좌번호</div>
				</div>
				<!-- 각 입력부분 -->
				<div>
					<!-- 은행사 선택부분 -->
					<div>
						<select>
						 <option value="">은행 선택</option>
							<option value="woori">우리은행</option>
							<option value="ibkbank">기업은행</option>
							<option value="shinhan">신한은행</option>
							<option value="kakao">카카오뱅크</option>
						</select>
					</div>
					
 					<!-- 계좌번호 입력부분 -->
					<div>
						<input type="text" value="${vo.m_acc_num }"/>
					</div>
										
				</div>
			</div>
			<div class="modifyBtn"><input type="button" value="등록 / 수정하기" /></div>
			<div class="myPageLine"></div>
		</div>
		
	</div>
	
</body>
</html>
