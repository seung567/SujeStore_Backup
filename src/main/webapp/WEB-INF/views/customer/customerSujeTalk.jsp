<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>SUJE - TalkTalk</title>

<!-- 폰트링크 -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap"
	rel="stylesheet" />

<!-- css 파일 연결 -->
<link rel="stylesheet" href="./resources/css/resetStyle.css" />
<link rel="stylesheet" href="./resources/css/customer/customerSujeTalk.css" />

<!-- 자바스크립트 연결 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="./resources/js/customer/customerMyPage.js"></script>
</head>
<body>

	<jsp:include page="/WEB-INF/views/headerHtml/memberHeader.jsp"></jsp:include>
	<div class="main">
		<jsp:include page="/WEB-INF/views/customer/customerMenuBar.jsp"></jsp:include>
		
		<div class="mainContentright">
			<div class="subtitle">SUJE 톡톡</div>
			<div class="myPageLine"></div>
			<div class="mainTalkContent">
			
			<!-- 메인 Talk 부분 -->
				
				<!-- 스토어목록 -->
				<div class="TalkList">

					<!-- 타이틀 -->
					<div class="TalkListTitle">
						<div>스토어목록</div>
					</div>

					<!-- 메인 -->

					<div class="TalkListMain">
						<!-- 목록정보 -->
						<!-- 주문 요청 내역 상단 정보 -->
						<div>
							<div>
								<div class="storeSimpleInfo">
									<img alt="" src="./resources/img/sujetalkstoreimg.png">
									<div>CAKE FACTORY</div>
								</div>
								<div>2024/03/13</div>
							</div>
							<!-- 주문 요청 내역 -->
							<div class="listBar"></div>
							<div>
								<div class="storeSimpleInfo">
									<img alt="" src="./resources/img/sujetalkstoreimg.png">
									<div>CAKE FACTORY</div>
								</div>
								<div>2024/03/13</div>

							</div>
							<div class="listBar"></div>
							<div>
								<div class="storeSimpleInfo">
									<img alt="" src="./resources/img/sujetalkstoreimg.png">
									<div>CAKE FACTORY</div>
								</div>
								<div>2024/03/13</div>

							</div>
							<div class="listBar"></div>
							<div>
								<div class="storeSimpleInfo">
									<img alt="" src="./resources/img/sujetalkstoreimg.png">
									<div>CAKE FACTORY</div>
								</div>
								<div>2024/03/13</div>

							</div>
							<div class="listBar"></div>
						</div>
						<!-- 목록정보 -->
						<div>< 1 2 3 ></div>
					</div>
				</div>

				<!-- 주문요청 내역 -->
				<div class="activeTalk">
				
					<!-- 타이틀 -->
					<div class="activeTalkTitle">
						<div><span>주문 요청 내역</span></div>
						<div>
							<span>주문 요청 번호</span>
							<span><input type="text"/></span>
						</div>
					</div>
					
					<!-- 메인 -->
					<div class="activeTalkMain">
						<!-- 상단 사용자 정보 -->
						<div class="customerInfo">
							<div>
								<div><img src="./resources/img/custmerLogo.png"></div>
								<div>abc123</div>
							</div>
							<div>2024/03/13 09:00</div>
						</div>						
						<!-- 상단 사용자 정보 -->
						
						<div class="listBarOrder"></div>
												
						<!-- 요청내용 -->
						<div class="orderMainContent">
							<div class="orderMainContentInner">
								<div class="orderMainDetail">
									<div>안녕하세요! 3월 14일 화이트데이에 케잌을 주문하려고 하는데 가능할까요? 시간이 촉박한 점
										저도 인지하고 있으며 최대한 가능한 제작옵션만 소개 부탁드려요!</div>
									<img src="./resources/img/wordballoon.png">
									<div>2024-03-19</div>
								</div>
								<div class="orderMainDetail">
									<div>만 소개 부탁드려요!</div>
									<img src="./resources/img/wordballoon.png">
									<div>2024-03-19</div>
								</div>
								<div class="orderMainDetail">
									<div>만eeeeeeeeeeeeeee </div>
									<img src="./resources/img/wordballoon.png">
									<div>2024-03-19</div>
								</div>
								<div class="orderMainDetail">
									<div> 당근당근당근당근당근당근당근당근당근당근당근당근당근당근당근당근당근당근당근당근 </div>
									<img src="./resources/img/wordballoon.png">
									<div>2024-03-19</div>
								</div>
								<div class="orderMainDetail">
									<div> 당근당근당근당근당근 </div>
									<img src="./resources/img/wordballoon.png">
									<div>2024-03-19</div>
								</div>
							</div>
						</div>
						<!-- 요청내용 -->
						
						<!-- 이미지 불러오기 -->
						<div>
							<input type="text"/>
							<button value="이미지 불러오기">이미지 불러오기</button>
						</div>
						<!-- 이미지 불러오기 -->
						<!-- 이미지 불러오기 -->
						<div>
							<input type="text"/>
							<button value="이미지 불러오기">전송</button>
						</div>
						<!-- 이미지 불러오기 -->
					</div>
				</div>
			
			<!-- 메인 Talk 부분 -->
			
			</div>
		</div>
		
	</div>
	
</body>
</html>
