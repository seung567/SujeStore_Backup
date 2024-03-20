<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스토어 피드</title>

<!-- css 파일 연결 -->
<link rel="stylesheet" href="./resources/css/resetStyle.css" />
<link rel="stylesheet"
	href="./resources/css/storeEach/Modal/feedModal.css" />

<!-- 자바스크립트 연결 -->
<!-- 자바 라이브러리 -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- JS 연결 -->
<script type="text/javascript" src="./resources/js/storeEach/Modal/feedModal.js"></script>

</head>

<body>
	<!-- Modal 출력 부분 -->
	<!-- Order join content 부분 -->
	<div class="customerOrderListModal">
		<div class="customerOrderListModalBody">
			<!-- 상단 제목 부분 -->
			<div class="customerOrderListTitle">
				<div>
					<img width=62px height=20px src="./resources/img/sujeLogo.png" />
				</div>
			</div>
		<div class="totalBody">
			<!-- 메인 좌측 Content -->
			<div class="ContentLeft">

				<!--div를 두개 감싼이유는 img들을 좌우배치하고 배치된 사진중 한장만 보이게 하기 위해서-->
				<div class="itemImageArea">
					<!--배치된 img들을 하나의 img만 보이게 가리기 위한 태그-->
					<div class="itemImage">
						<!--img들을 좌우배치할 태그-->
						<img src="./resources/img/1_main.jpg"> 
						<img src="./resources/img/2_main.jpg"> 
						<img src="./resources/img/3_main.jpg">
					</div>
				</div>
				
				<button class="back">❮</button>
				<button class="next">❯</button>

			</div>

			<!-- 메인 우측 Content (사진 슬라이드 부분)-->
			<div class="ContentRight">

				<!-- Content 첫번째 라인 -->
				<div class="firstContent">

					<div>작품 카테고리</div>

					<div>
						<select>
							<option>전통간식</option>
							<option selected="selected">디저트</option>
							<option>반려동물식품</option>
							<option>의류</option>
							<option>주얼리</option>
							<option>수공예품</option>
							<option>잡화</option>
							<option>홈리빙</option>
						</select>
					</div>

					<div>
						<select>
							<option>베이커리</option>
							<option selected="selected">케이크</option>
							<option>마카롱</option>
							<option>타르트</option>
							<option>쿠키</option>
						</select>
					</div>

					<div>
						<select>
							<option>롤케이크</option>
							<option>버터크림빵</option>
							<option>마늘빵</option>
							<option>슈크림빵</option>
							<option>프레지에</option>
							<option>생크림케이크</option>
							<option>쉬폰케이크</option>
							<option selected="selected">치즈케이크</option>
							<option>일반마카롱</option>
							<option>뚱카롱</option>
						</select>
					</div>

				</div>

				<!-- Content 두번째 라인 -->
				<div class="secondContent">
					<div>작품 등록일자</div>
					<div>
						<input type="text" />
					</div>
				</div>

				<!-- Content 세번째 라인 -->
				<div class="thirdContent">
					<div>
						<input type="text" />
					</div>
				</div>

			</div>

</div>

			<!-- 버튼 -->
			<div class="insertbtn">
				<div>
					<input type="button" value="확인">
				</div>
			</div>
		</div>
	</div>


</body>
</html>