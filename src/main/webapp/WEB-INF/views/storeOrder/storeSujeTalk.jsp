<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap"	rel="stylesheet" />
<link href="./resources/css/resetStyle.css" rel="stylesheet" type="text/css" />
<link href="./resources/css/menuForm/subMenuStyle.css" rel="stylesheet" type="text/css" />
<link href="./resources/css/storeOrder/storeSujeTallk.css" rel="stylesheet" type="text/css" />

<title>SUJE</title>
<link rel="stylesheet"
	href="./resources/css/storeAdmin/storeNotiInfo.css" />
</head>
<body>
	<!-- 상단 메뉴 , 좌측 메뉴  -->
	<%@ include file="../../views/headerHtml/storeHeader.jsp"%>
	<div class="storeContentsWrap">
		<jsp:include page="../../views/storeAdmin/storeSubMenuBar.jsp"></jsp:include>
		<!-- storeSubMenuBox -->
		<!-- 상단 메뉴 , 좌측 메뉴 end -->

		<div class="storeContentsBox">
			<div class="storeTalkTitle">
				<div class="subtitle">스토어 주문요청 관리</div>
				<div class="myPageLine"></div>
			</div>

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
							
							<c:forEach items="${storeOrderList }" var="storeVO">
							<div>
								<div class="customerInfoList">
									<img alt="" src="./resources/img/custmerLogo.png" />
									<div>${storeVO.m_id}</div>
								</div> 
								<div>${storeVO.o_date}</div>
							</div>
							<!-- 주문 요청 내역 -->
							<div class="listBar"></div>
							</c:forEach>

						</div>
						<!-- 목록정보 -->
						<div>< 1 2 3 ></div>
					</div>
				</div>

				<!-- 주문요청 내역 -->
				<div class="activeTalk">
					<!-- 타이틀 -->
					<div class="activeTalkTitle">
						<div>
							<span>주문 요청 내역</span>
						</div>
						<div>
							<span>주문 요청 번호</span> <span><input type="text" /></span>
						</div>
					</div>

					<!-- 메인 -->
					<div class="activeTalkMain">
						<!-- 상단 사용자 정보 -->
						<div class="storeTopInfo">
							<div>
								<div>
									<img src="./resources/img/custmerLogo.png" />
								</div>
								<div>abc123</div>
							</div>
							<div>2024/03/13 09:00</div>
						</div>
						<!-- 상단 사용자 정보 -->

						<div class="listBarOrder"></div>

						<!-- 요청내용 -->
						<div class="orderMainContent">
							<div class="orderMainContentInner">
								<!-- 대화출력 -->
								<div class="orderMainDetail">
									<!-- 대화 사용자 정보 -->
									<div>
										<div>
											<img src="./resources/img/custmerLogo.png" />
										</div>
										<div>구매 고객</div>
									</div>
									<!-- 대화 사용자 정보 -->
									<!-- 대화 내용 -->
									<div>안녕하세요! 3월 14일 화이트데이에 케잌을 주문하려고 하는데 가능할까요? 시간이 촉박한 점
										저도 인지하고 있으며 최대한 가능한 제작옵션만 소개 부탁드려요!</div>
									<!-- 대화 내용 -->
									<!-- 뒷 배경 그림 -->
									<img src="./resources/img/wordballoon.png" />
									<!-- 뒷 배경 그림 -->
									<!-- 날짜 -->
									<div>2024-03-19</div>
									<!-- 날짜 -->
								</div>

								<!-- 대화출력 -->
								<!-- 대화출력 -->
								<div class="orderMainDetail">
									<!-- 대화 사용자 정보 -->
									<div>
										<div>
											<img alt="" src="./resources/img/sujetalkstoreimg.png" />
										</div>
										<div>CAKE FACTORY</div>
									</div>
									<!-- 대화 사용자 정보 -->
									<!-- 대화 내용 -->
									<div>안녕하세요! 3월 14일 화이트데이에 케잌을 주문하려고 하는데 가능할까요? 시간이 촉박한 점
										저도 인지하고 있으며 최대한 가능한 제작옵션만 소개 부탁드려요!</div>
									<!-- 대화 내용 -->
									<!-- 뒷 배경 그림 -->
									<img src="./resources/img/wordballoon.png" />
									<!-- 뒷 배경 그림 -->
									<!-- 날짜 -->
									<div>2024-03-19</div>
									<!-- 날짜 -->
								</div>
								<!-- 대화출력 -->
								<!-- 대화출력 -->
								<div class="orderMainDetail">
									<!-- 대화 사용자 정보 -->
									<div>
										<div>
											<img alt="" src="./resources/img/sujetalkstoreimg.png" />
										</div>
										<div>CAKE FACTORY</div>
									</div>
									<!-- 대화 사용자 정보 -->
									<!-- 대화 내용 -->
									<div>
										<input type="button" value="최종 주문서 확인" />
									</div>
									<!-- 대화 내용 -->
									<!-- 뒷 배경 그림 -->
									<img src="./resources/img/wordballoon.png" />
									<!-- 뒷 배경 그림 -->
									<!-- 날짜 -->
									<div>2024-03-19</div>
									<!-- 날짜 -->
								</div>
								<!-- 대화출력 -->
							</div>
						</div>
						<!-- 요청내용 -->

						<!-- 이미지 불러오기 -->
						<div>
							<input type="text" />
							<button value="이미지 불러오기">이미지 불러오기</button>
						</div>
						<!-- 이미지 불러오기 -->
						<!-- 이미지 불러오기 -->
						<div>
							<input type="text" />
							<button value="이미지 불러오기">전송</button>
						</div>
						<!-- 이미지 불러오기 -->
					</div>
				</div>

				<!-- 메인 Talk 부분 -->
			</div>
		</div>
	</div>
	<!-- storeContentsBox -->
	<!-- storeContentsWrap -->
	<footer></footer>
</body>
<script type="text/javascript">

$(function() {
	    
    $(".customerInfoList").parent().click(function(){
	
		console.log("111111111111");
		
	
	
	
	
    });
});


</script>
</html>
