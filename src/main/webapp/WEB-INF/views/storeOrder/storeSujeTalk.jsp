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

<link rel="stylesheet" href="./resources/css/storeAdmin/storeNotiInfo.css" />

<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="./resources/js/storeOrder/storeSujeTalk.js"></script>

<title>SUJE</title>
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
								<input type="hidden" value="${storeVO.o_code }" />
							</div>
							<!-- 주문 요청 내역 -->
							<div class="listBar"></div>
							</c:forEach>

						</div>
						<!-- 목록정보 -->
						<div>
							<!-- ◀ -->
							<c:forEach var="i" begin="0" end="${totalCountPage }" step="1">
								[<a href="storeSujeTalk.do?id=${id }&page=${i+1}">${i+1}</a>]
							</c:forEach>
					<!-- 		▶ -->
						</div>
						<div>
							<input class="orderInsertBtn" type="button" value="버튼"/>
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
							<span>주문 요청 번호</span> 
							<span><input class="orderNum" type="text" /></span>
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
								<div><!-- 상단 고객명 입력 부분 --></div>
							</div>
							<div><!-- 상단 날짜 정보 입력 부분 --></div>
						</div>
						<div class="listBarOrder"></div>
						
						<!-- 상단 사용자 정보 -->
						
						<!-- 요청내용 -->
						<div class="orderMainContent">
							<div class="orderMainContentInner">
							
								<!-- 대화출력 -->
								

								
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
	<div class="modalWrap">

		<div class="storeOrderInsertModal">
			<jsp:include page="./Modal/storeSujeTalkModal.jsp"></jsp:include>
		</div>

		<input type="hidden" class="idInfo" value="${id }"/>
	</div>
	<footer></footer>
</body>
<script type="text/javascript">

$(function(){
    
    $(".orderInsertBtn").click(function(){
		
	 	// 최종 주문서 조회 취소 버튼 이벤트
	    $('.viewCancel').click(function(){location.href = "storeSujeTalk.do?id=${id}&page=1";});
		
	 	// 모달 출력 이벤트
	    $(".modalWrap").fadeIn(200);
	    $(".storeOrderInsertModal").slideDown(200);
	    
/* 	    // 최종주문번호가 있을 경우 타이틀, 등록버튼 이름 변경
	    if($('.finalOrderNo').val() != null){
			// 명칭변경
			$('.modalTitle').text("최종 주문서 등록");
			$('.modalSubmitBtn').eq(0).val("등록");
			 */
			// 주문 접수 번호 입력
			let orderNO = $(".activeTalkTitle>div:nth-child(2) input").val();
			$('.modalNo_textbox').val(orderNO);
			
/* 			
	    } */
	    
	    // 주문 요청 번호

    });
    
});

function getFinalOrder(){
		console.log($('.orderNum').val());
		$.ajax({
		    type : "post",
		    url : "getStoreFinalOrder.do",
		    data : {
				orderNO : $('.orderNum').val()
		    },
		    dataType : "json",
		    contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
			beforeSend : function(){
				    $(".modalWrap").fadeIn(200);
				    $(".storeOrderInsertModal").slideDown(200); 
			},
			success : function(data){
			    $("#countInput").val(data.fo_num); // 주문 수량
			    $("#sizeInput").val(data.)
			},
			error: function(request, status, error) {
				alert("통신 에러가 발생했습니다 : "+request+"/"+status+"/"+error);
			}
		});
}

</script>
</html>
