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
<title>SUJE - 후기작성</title>

<!-- 폰트링크 -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap"
	rel="stylesheet" />

<!-- css 파일 연결 -->
<link rel="stylesheet" href="./resources/css/resetStyle.css" />
<link rel="stylesheet" href="./resources/css/customer/customerReview.css" />

<!-- 데이터피커 CSS 연결 -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<!-- 자바스크립트 연결 -->
<!-- 자바 라이브러리 -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- JS 연결 -->
<script type="text/javascript"	src="./resources/js/customer/customerReview.js"></script>
</head>
<body>

	<!-- 상단메뉴바 호출 -->
	<jsp:include page="/WEB-INF/views/headerHtml/memberHeader.jsp"></jsp:include>

	<div class="main">

		<!-- 좌측 서브 메뉴 버튼 호출 -->
		<jsp:include page="/WEB-INF/views/customer/customerMenuBar.jsp"></jsp:include>

		<!-- 화면 메인 Content 부분 -->
		<div class="mainContentright">
			<!-- 주문제작 결제 내역 부분 -->
			<div class="subtitle">후기작성</div>
			<div class="myPageLine"></div>

			<div class="mainInputFormTitle">
				<!-- 주문제작 결제 내역 테이터 테이블 -->
				<table class="List">
					<tr class="orderListTitle">
						<td>결제 번호</td>
						<td>최종주문번호</td>
						<td>주문 일자</td>
						<td>결제 일자</td>
						<td>결제 금액</td>
						<td>구매확정</td>
						<td>구매확정일자</td>
						<td>후기작성</td>
						<td>후기작성일자</td>
					</tr>
					<c:forEach items="${vo}" var="vo">
						<tr>
							<td>${vo.p_code }</td>
							<td></td>
							<td></td>
							<td>${vo.p_date }</td>
							<td>${vo.p_sum }</td>
							<td>Y</td>
							<td>2024/03/01</td>
							<td><input class="regit" type="button" value="작성"></td>
							<td>2024/03/01</td>
						</tr>
					</c:forEach>
				</table>
				<div class="pageing">< 1 2 3 ></div>
			</div>
		</div>
	</div>

	<!-- Modal 출력 부분 -->
	<div class="reviewModalView">
		<jsp:include page="Modal/review.jsp"></jsp:include>
	</div>

</body>

<script type="text/javascript">

/* 후기 작성하기 */
$(function() {
	$(".regit").click(regit);
	$(".UrlMove").click(function() {
		location.href = "customerReview.do?id=<%= request.getParameter("id")%>"				
	});
});

function regit() {
	$(".review").slideDown(200);
}

</script>


</html>
