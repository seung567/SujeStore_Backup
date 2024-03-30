<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap"
	rel="stylesheet">
<link href="./resources/css/resetStyle.css" rel="stylesheet" type="text/css">
<link href="./resources/css/menuForm/subMenuStyle.css" rel="stylesheet" type="text/css"> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SUJE</title>
<link rel="stylesheet" href="./resources/css/storeOrder/storeOrderCheck.css" />

<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="./resources/js/storeOrder/storeOrderCheckModal.js"></script>
<script type="text/javascript" src="./resources/js/storeOrder/deliveryModal.js"></script>
<script type="text/javascript" src="./resources/js/paging/paging.js"></script>

</head>
<body>
	<%@ include file="../../views/headerHtml/storeHeader.jsp"%>
	<div class="storeContentsWrap">
<jsp:include page="../../views/storeAdmin/storeSubMenuBar.jsp"></jsp:include>
		<!-- storeSubMenuBox -->
		<div class="storeContentsBox">
			<h1 class="title">스토어 최종주문 조회</h1>
			<hr class="hr">
			<h2 class="title">주문 결제정보</h2>
			<div class="table-wrapper">
				<table border="1">
					<thead>
						<tr>
							<th>결제번호</th>
							<th>최종주문번호</th>
							<th>주문일자</th>
							<th>결제일자</th>
							<th>결제금액</th>
							<th>구매확정</th>
							<th>구매확정일자</th>
							<th>상세주문정보</th>
							<th>배송형태</th>
							<th>배송정보</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${orderCheckList}" var="orderCheck" >
						<tr data-s_id="${orderCheck.s_id}">
							<td>${orderCheck.o_code}</td>
							<td>${orderCheck.p_code}</td>
							<td>${orderCheck.o_date}</td> 
							<td>${orderCheck.p_date}</td>
							<td>${orderCheck.p_sum}</td>
							<td>${orderCheck.p_ck}</td>
							<td></td>
							<td><button class="check">조회</button></td>
							<td>${orderCheck.deli_type}</td>
							<td><button class="check-delivery">조회</button></td>
						</tr>
						</c:forEach>
						<!-- 추가적인 공지사항 행을 필요한 만큼 추가할 수 있습니다 -->
					</tbody>
				</table>
				<div class="orderTablePaging pageing"></div>
			</div>
			<br /> <br />
			<hr class="hr">
			<h2 class="title">결제취소정보</h2>
			<div class="table-wrapper">
				<table>
					<thead>
						<tr>
							<th>결제취소번호</th>
							<th>최종주문번호</th>
							<th>취소일자</th>
							<th>취소사유</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${cancelList}" var="cancel" >
						<tr data-s_id="${cancel.s_id}">
							<td>${cancel.can_code}</td>
							<td>${cancel.fo_code}</td>
							<td>${cancel.can_date}</td>
							<td>${cancel.can_why}</td>
						</tr>

						</c:forEach>
					</tbody>
				</table>
				<div class="cancelTablePaging pageing"></div>
			</div>
			<hr class="hr">
			<h2 class="title">반품요청정보</h2>
			<div class="table-wrapper">
				<table>
					<thead>
						<tr>
							<th>결제취소번호</th>
							<th>최종주문번호</th>
							<th>반품일자</th>
							<th>반품사유</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${returnList}" var="returnOrder" >
						<tr data-s_id="${returnOrder.s_id}">
							<td>${returnOrder.rt_code}</td>
							<td>${returnOrder.p_code}</td>
							<td>${returnOrder.rt_date}</td>
							<td>${returnOrder.rt_why}</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="returnTablePaging pageing"></div>
			</div>
		</div>
	</div>
	<!-- storeContentsBox -->
	</div>
	<!-- storeContentsWrap -->
	<footer></footer>

	
		<!-- 주문상세정보 보기 부분 -->
		<div>
			<jsp:include page="Modal/storeOrderModal.jsp"></jsp:include>
		</div>
		
		<!-- 배송정보 부분 -->
		<div>
			<jsp:include page="Modal/deliveryModal.jsp"></jsp:include>
		</div>
 	</div>
</body>
</html>