<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


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
<link rel="stylesheet"
	href="./resources/css/customer/customerSujeTalk.css" />

<!-- 자바스크립트 연결 -->
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript"
	src="./resources/js/customer/customerSujeTalk.js"></script>
	
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
							
							<c:forEach var="orderList" items="${orderListTotal}">
								<div>
									<div class="storeSimpleInfo">
										<img alt="" src="./resources/img/sujetalkstoreimg.png">
										<div>${orderList. o_code}</div>
									</div>
									<div>${orderList. o_date}</div>
									<input type="hidden" value="${ orderList. o_code}">
								</div>
								<div class="listBar"></div>
							</c:forEach>

						</div><!-- 목록정보 -->
						
						<div>
						◀
						<c:forEach var="i" begin="0" end="${totalCountPage }" step="1">
							<a href="customerSujeTalk.do?id=${id }&page=${i+1}">${i+1}</a>						
						</c:forEach>
						▶
						</div>
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
						<div class="customerInfo">
							<div>
								<div>
									<img src="./resources/img/custmerLogo.png">
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
									<div class="chatDetali">

										<div>
											<img alt="" src="./resources/img/sujetalkstoreimg.png">
										</div>
										<div>CAKE FACTORY</div>

									</div>
									<!-- 대화 사용자 정보 -->
									<!-- 대화 내용 -->
									<div><input id="orderCheck" type="button" value="최종 주문서 확인"/></div>
									<!-- 대화 내용 -->
									<!-- 뒷 배경 그림 -->
									<img src="./resources/img/wordballoon.png">
									<!-- 뒷 배경 그림 -->
									<!-- 날짜 -->
									<div class="dateDetail">2024-03-19</div>
									<!-- 날짜 -->
								</div>
								<!-- 대화출력 -->
								<!-- 대화출력 -->
								<div class="orderMainDetail">
									<!-- 대화 사용자 정보 -->
									<div class="chatDetali">

										<div>
											<img alt="" src="./resources/img/sujetalkstoreimg.png">
										</div>
										<div>CAKE FACTORY</div>

									</div>
									<!-- 대화 사용자 정보 -->
									<!-- 대화 내용 -->
									<div><input id="orderCheck" type="button" value="최종 주문서 확인"/></div>
									<!-- 대화 내용 -->
									<!-- 뒷 배경 그림 -->
									<img src="./resources/img/wordballoon.png">
									<!-- 뒷 배경 그림 -->
									<!-- 날짜 -->
									<div class="dateDetail">2024-03-19</div>
									<!-- 날짜 -->
								</div>
								<!-- 대화출력 -->
								<!-- 대화출력 -->
								<div class="orderMainDetail">
									<!-- 대화 사용자 정보 -->
									<div class="chatDetali">

										<div>
											<img alt="" src="./resources/img/sujetalkstoreimg.png">
										</div>
										<div>CAKE FACTORY</div>

									</div>
									<!-- 대화 사용자 정보 -->
									<!-- 대화 내용 -->
									<div><input id="orderCheck" type="button" value="최종 주문서 확인"/></div>
									<!-- 대화 내용 -->
									<!-- 뒷 배경 그림 -->
									<img src="./resources/img/wordballoon.png">
									<!-- 뒷 배경 그림 -->
									<!-- 날짜 -->
									<div class="dateDetail">2024-03-19</div>
									<!-- 날짜 -->
								</div>
								<!-- 대화출력 -->
								<!-- 대화출력 -->
								<div class="orderMainDetail">
									<!-- 대화 사용자 정보 -->
									<div class="chatDetali">

										<div>
											<img alt="" src="./resources/img/sujetalkstoreimg.png">
										</div>
										<div>CAKE FACTORY</div>

									</div>
									<!-- 대화 사용자 정보 -->
									<!-- 대화 내용 -->
									<div><input id="orderCheck" type="button" value="최종 주문서 확인"/></div>
									<!-- 대화 내용 -->
									<!-- 뒷 배경 그림 -->
									<img src="./resources/img/wordballoon.png">
									<!-- 뒷 배경 그림 -->
									<!-- 날짜 -->
									<div class="dateDetail">2024-03-19</div>
									<!-- 날짜 -->
								</div>
								<!-- 대화출력 -->
								<!-- 대화출력 -->
								<div class="orderMainDetail">
									<!-- 대화 사용자 정보 -->
									<div class="chatDetali">

										<div>
											<img alt="" src="./resources/img/sujetalkstoreimg.png">
										</div>
										<div>CAKE FACTORY</div>

									</div>
									<!-- 대화 사용자 정보 -->
									<!-- 대화 내용 -->
									<div><input id="orderCheck" type="button" value="최종 주문서 확인"/></div>
									<!-- 대화 내용 -->
									<!-- 뒷 배경 그림 -->
									<img src="./resources/img/wordballoon.png">
									<!-- 뒷 배경 그림 -->
									<!-- 날짜 -->
									<div class="dateDetail">2024-03-19</div>
									<!-- 날짜 -->
								</div>
								<!-- 대화출력 -->
								<!-- 대화출력 -->
								<div class="orderMainDetail">
									<!-- 대화 사용자 정보 -->
									<div class="chatDetali">

										<div>
											<img alt="" src="./resources/img/sujetalkstoreimg.png">
										</div>
										<div>CAKE FACTORY</div>

									</div>
									<!-- 대화 사용자 정보 -->
									<!-- 대화 내용 -->
									<div><input id="orderCheck" type="button" value="최종 주문서 확인"/></div>
									<!-- 대화 내용 -->
									<!-- 뒷 배경 그림 -->
									<img src="./resources/img/wordballoon.png">
									<!-- 뒷 배경 그림 -->
									<!-- 날짜 -->
									<div class="dateDetail">2024-03-19</div>
									<!-- 날짜 -->
								</div>
								<!-- 대화출력 -->
								<!-- 대화출력 -->
								<div class="orderMainDetail">
									<!-- 대화 사용자 정보 -->
									<div class="chatDetali">

										<div>
											<img alt="" src="./resources/img/sujetalkstoreimg.png">
										</div>
										<div>CAKE FACTORY</div>

									</div>
									<!-- 대화 사용자 정보 -->
									<!-- 대화 내용 -->
									<div><input id="orderCheck" type="button" value="최종 주문서 확인"/></div>
									<!-- 대화 내용 -->
									<!-- 뒷 배경 그림 -->
									<img src="./resources/img/wordballoon.png">
									<!-- 뒷 배경 그림 -->
									<!-- 날짜 -->
									<div class="dateDetail">2024-03-19</div>
									<!-- 날짜 -->
								</div>
								<!-- 대화출력 -->
								<!-- 대화출력 -->
								<div class="orderMainDetail">
									<!-- 대화 사용자 정보 -->
									<div class="chatDetali">

										<div>
											<img alt="" src="./resources/img/sujetalkstoreimg.png">
										</div>
										<div>CAKE FACTORY</div>

									</div>
									<!-- 대화 사용자 정보 -->
									<!-- 대화 내용 -->
									<div><input id="orderCheck" type="button" value="최종 주문서 확인"/></div>
									<!-- 대화 내용 -->
									<!-- 뒷 배경 그림 -->
									<img src="./resources/img/wordballoon.png">
									<!-- 뒷 배경 그림 -->
									<!-- 날짜 -->
									<div class="dateDetail">2024-03-19</div>
									<!-- 날짜 -->
								</div>
								<!-- 대화출력 -->
								<!-- 대화출력 -->
								<div class="orderMainDetail">
									<!-- 대화 사용자 정보 -->
									<div class="chatDetali">

										<div>
											<img alt="" src="./resources/img/sujetalkstoreimg.png">
										</div>
										<div>CAKE FACTORY</div>

									</div>
									<!-- 대화 사용자 정보 -->
									<!-- 대화 내용 -->
									<div><input id="orderCheck" type="button" value="최종 주문서 확인"/></div>
									<!-- 대화 내용 -->
									<!-- 뒷 배경 그림 -->
									<img src="./resources/img/wordballoon.png">
									<!-- 뒷 배경 그림 -->
									<!-- 날짜 -->
									<div class="dateDetail">2024-03-19</div>
									<!-- 날짜 -->
								</div>
								<!-- 대화출력 -->
								<!-- 대화출력 -->
								<div class="orderMainDetail">
									<!-- 대화 사용자 정보 -->
									<div class="chatDetali">

										<div>
											<img alt="" src="./resources/img/sujetalkstoreimg.png">
										</div>
										<div>CAKE FACTORY</div>

									</div>
									<!-- 대화 사용자 정보 -->
									<!-- 대화 내용 -->
									<div><input id="orderCheck" type="button" value="최종 주문서 확인"/></div>
									<!-- 대화 내용 -->
									<!-- 뒷 배경 그림 -->
									<img src="./resources/img/wordballoon.png">
									<!-- 뒷 배경 그림 -->
									<!-- 날짜 -->
									<div class="dateDetail">2024-03-19</div>
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
	<!-- Modal -->
	<div class="modalWrap">
	
		<div class="orderCheckModal">
			<jsp:include page="./Modal/orderInfoModal.jsp"></jsp:include>
		</div>
		
		<div class="payResultModal">
			<jsp:include page="./Modal/payModal.jsp"></jsp:include>
		</div>
		
	</div>
</body>
<script type="text/javascript">


$(function(){

    $(".storeSimpleInfo").parent().click(function(){
			
		$.ajax({
		    type : "post",
		    url : "orderDetailContext.do",
		    data : {
				orderNumReuslt : $(this).find("input").val()
				},
		    dataType : "json",
			contentType:'application/x-www-form-urlencoded; charset=UTF-8',
			success : function(data) {
				
				var dataList = data;
				console.log(dataList[0]);
				
		    },
		    error : function(status){
				console.log(status);
		    }
		});
	
    });
    
});

</script>
</html>

