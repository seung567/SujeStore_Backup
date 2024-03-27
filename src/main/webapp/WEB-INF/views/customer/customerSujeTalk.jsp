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
<script type="text/javascript" src="./resources/js/customer/customerSujeTalk.js"></script>

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

						</div>
						<!-- 목록정보 -->

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
							<span>주문 요청 번호</span> 
							<span><input class="orderNum" type="text" /></span>
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
								<div></div>
							</div>
							<div>2024/03/13 09:00</div>
						</div>
						<!-- 상단 사용자 정보 -->

						<div class="listBarOrder"></div>

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

    $(function() {
	
		$(".storeSimpleInfo").parent().click(function() {
		
		    console.log($(this).find("input").val());
		    	
		    $.ajax({
				type : "post",
				url : "orderDetailContext.do",
				data : {
				    orderNumReuslt : $(this).find("input").val()
				},
				dataType : "json",
				contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
				beforeSend : function(){
				    
	 			    if( $(".orderMainDetail") != ""){
						$(".orderMainDetail").remove();
				    }
				},
				success : function(data) {
				    
				    /* 상단 메인 스토어명 표기 */
				   	$(".customerInfo div:first-child div:nth-child(2)").text(data['etcList'][0].s_id); 
				    	
				    /* 최초 주문사항 출력 */
				    firstOrder(data['etcList']);
						
				    /* 주문 요청 사항 메인 출력*/
				    $(data['etcList']).each(function(index,item){
				        if(item.etc_content != null){
				    		mainContent(item);
				    	 }
					}); 
			    	/*최종 주문서 출력*/
			    	if(data['finalVO'] !=null){
				    	finalOrder(data['finalVO'],data['etcList'][0].s_id);
			    	}
				},
				error : function(status) {
				    console.log(status);
				}
			});
		});
	});

	function firstOrder(data){
		    
		    var mainDiv = $(".orderMainContentInner");
		    var mainDetailDiv = $("<div class=orderMainDetail></div>");
	    
		    var chatDetail = $("<div class=charDetail></div>");
	    
	    	mainDiv.append(mainDetailDiv);
	    	mainDetailDiv.append(chatDetail);
	    	
	    	chatDetail.append("	<div><img src='./resources/img/custmerLogo.png'></div>");
	    	
	    	chatDetail.append("<div>" + data[0].m_id + "</div>");    
	    	
	    	mainDetailDiv.append("<div><input id='orderCheck' type='text' value='"+data[0].o_content+"' /></div>"); 
	    	mainDetailDiv.append("<img src='./resources/img/wordballoon.png'>");
	    	mainDetailDiv.append("<div class='dateDetail'>주문 제작 요청</div>");
	    	
	    	$(".orderMainContent").css("overflow" , "auto");
	    	$(".orderMainContent").scrollTop($(".orderMainContent")[0].scrollHeight);

	 }
	
	
	    
	function mainContent(item){
	    
		    $(".orderNum").val(item.o_code);
		    
		    var mainDiv = $(".orderMainContentInner");
		    var mainDetailDiv = $("<div class=orderMainDetail></div>");
	    
		    var chatDetail = $("<div class=charDetail></div>");
	    
	    	mainDiv.append(mainDetailDiv);
	    	mainDetailDiv.append(chatDetail);
	    	
	    	// 대화 사용자 사진
	    	if(item.etc_type_code == 77001){
	    		chatDetail.append("	<div><img alt='' src='./resources/img/sujetalkstoreimg.png'></div>");   
	    	}else{
	    		chatDetail.append("	<div><img src='./resources/img/custmerLogo.png'></div>");
	    	}
	    	
	    	//대화 사용자명
	    	if(item.etc_type_code == 77001){
	    		chatDetail.append("	<div>" + item.s_id + "</div>");
	    	}else{
	    		chatDetail.append("<div>" + item.m_id + "</div>");    
	    	}	
			
	    	/* mainDetailDiv.append("<div><input id='orderCheck' type='button' value='"+item.content+"' /></div>"); */
	    	
	    	mainDetailDiv.append("<div><input id='orderCheck' type='text' value='"+item.content+"' /></div>"); 
	    	mainDetailDiv.append("<img src='./resources/img/wordballoon.png'>");
	    	mainDetailDiv.append("<div class='dateDetail'>" + item.etc_date + "</div>");
	    	
	    	
	    	$(".orderMainContent").css("overflow" , "auto");
	    	$(".orderMainContent").scrollTop($(".orderMainContent")[0].scrollHeight);
		}
	 
	function finalOrder(data,storeID){
	    
 	    var mainDiv = $(".orderMainContentInner");
	    var mainDetailDiv = $("<div class=orderMainDetail></div>");
    
	    var chatDetail = $("<div class=charDetail></div>");
    
    	mainDiv.append(mainDetailDiv);
    	mainDetailDiv.append(chatDetail);
    	
    	chatDetail.append("	<div><img alt='' src='./resources/img/sujetalkstoreimg.png'></div>"); 
    	
    	chatDetail.append("<div>" + storeID + "</div>");    
    	
    	mainDetailDiv.append("<div><input id='orderCheck' type='button' value='최종 주문서 확인' /></div>");
    	mainDetailDiv.append("<img src='./resources/img/wordballoon.png'>");
    	mainDetailDiv.append("<div class='dateDetail'>주문 제작서 확인 요청</div>");
    	
    	$(".orderMainContent").css("overflow" , "auto");
    	$(".orderMainContent").scrollTop($(".orderMainContent")[0].scrollHeight);

 }
	
</script>
</html>

