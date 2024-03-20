<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>

<!-- css 파일 연결 -->
<link rel="stylesheet" href="./resources/css/resetStyle.css" />
<link rel="stylesheet" href="./resources/css/storeEach/Modal/infoModal.css" />

</head>

<body>
<!-- Modal 출력 부분 -->
	<!-- Order join content 부분 -->
	<div class="customerOrderListModal">
		<div class="customerOrderListModalBody">
			<!-- 상단 제목 부분 -->
			<div class="customerOrderListTitle">
				<div><img width=62px height=20px src="./resources/img/sujeLogo.png"/></div>
			</div>

			<!-- MainContent 부분 -->

			<!-- Content 첫번째 라인 -->
			<div class="firstContent">
					<div>공지 유형</div>
					<div><input type="text" /></div>	
					<div>공지 등록일자</div>
					<div><input type="text" /></div>		
			</div>			
			
			<!-- Content 두번째 라인 -->
			<div class="secondContent">
					<div><input type="text" /></div>		
			</div>		
			
			<!-- 버튼 -->
			<div class="insertbtn">
					<div><input type="button" value="확인"></div>
			</div>
	</div>
	</div>


</body>
</html>