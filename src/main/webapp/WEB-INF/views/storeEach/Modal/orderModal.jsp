<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문요청서</title>

<!-- css 파일 연결 -->
<link rel="stylesheet" href="./resources/css/resetStyle.css" />
<link rel="stylesheet" href="./resources/css/storeEach/Modal/orderModal.css" />

</head>

<body>
<!-- Modal 출력 부분 -->
	<!-- Order join content 부분 -->
	<div class="customerOrderListModal">
		<div class="customerOrderListModalBody">
			<!-- 상단 제목 부분 -->
			<div class="customerOrderListTitle">
				<div><img width=62px height=20px src="./resources/img/sujeLogo.png"/></div>
				<div>주문요청서 작성</div>
			</div>

			<!-- MainContent 부분 -->
			<div class="modalMainContent">
				<!-- 메인 좌측 Content Title -->
				<div class="ContentLefit">
					<div>주문요청 아이디</div>
					<div>주문요청일자</div>
					<div>주문요청사항</div>
				</div>

				<!-- 메인 우측 Content -->
				<div class="ContentRight">
					<!-- Content 첫번째 라인 -->
					<div>
						<div><input type="text" /></div>	
						<div>주문요청스토어</div>
						<div><input type="text" /></div>					
					</div>
					<!-- Content 두번째 라인 -->
						<div><input type="text" /></div>
					<!-- Content 세번째 라인 -->
						<div><input type="text" /></div>			
					
				</div>
			</div>

			<div class="insertbtn">
				<div>
					<input type="button" value="요청하기">
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