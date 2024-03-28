<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

// 세션 정보를 가져오는 부분
Object obj = session.getAttribute("mainId");
if (obj == null) {
	response.sendRedirect("LoginForm.jsp");
	return;
}

String user = (String) obj;

%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<body>

	<!-- <div class="storeContentsWrap"> -->
	<div class="storeSubMenuBox">
		<a href="#" class="storeProfileBox">
		<img src="./resources/img/basicProfileIconBig.png" /></a>
		<textarea rows="2" disabled="disabled" class="storeNameBox"><%=user%></textarea>
		<ul class="storeCategoryArea">
			<li class="storeFirstCategoryArea">
				<a href="#" class="storeFirstCategoryBtn">&nbsp;&nbsp;&nbsp;스토어관리</a>
				<ul class="storeSecondCategoryArea">
					
					<!-- 스토어 페이지 관리 -->
					<li class="storeSecondCategoryBtn">
						<a href="storeProfile.do?id=<%=user%>"> 
							<span>스토어 페이지 관리</span>
						</a>
					</li>
					
					<!-- 스토어 공지 조회 / 수정 -->
					<li class="storeSecondCategoryBtn">
						<a href="storeNoticeListAll.do?id=<%=user%>">
							<span>스토어 공지 조회/수정</span>
						</a>
					</li>
					
					<!-- 스토어 공지 등록 -->
					<li class="storeSecondCategoryBtn ">
						<a href="storeNotiInfo.do?id=<%=user%>"> 
							<span>스토어 공지 등록</span>
						</a>
					</li>
					
					<!-- 스토어 작품 조회 / 수정 -->
					<li class="storeSecondCategoryBtn ">
					 <a href="storeGoodsMainPage.do?id=<%=user%>"> 
							<span>스토어 작품 조회/수정</span>
						</a>
					</li>
					
					<!-- 스토어 작품 등록 -->
					<li class="storeSecondCategoryBtn">
						<a href="storeGoodsInfo.do?id=<%=user%>">
							<span>스토어 작품 등록</span>
						</a>
					</li>
				</ul>
			</li>
			
			<li class="storeFirstCategoryArea">
				<a href="#" 	class="storeFirstCategoryBtn ">&nbsp;&nbsp;&nbsp;플리마켓 관리</a>
				<ul class="storeSecondCategoryArea">
				
					<li class="storeSecondCategoryBtn">
						<a href="fleaGoodsMainPage.do?id=<%=user%>"> 
							<span>플리마켓 상품 조회/수정</span>
						</a>
					</li>
					
					<li class="storeSecondCategoryBtn">
						<a href="#">
							<span>플리마켓 상품 등록</span>
						</a>
					</li>
					
				</ul>
			</li>
			
			<li class="storeFirstCategoryArea">
				<a href="#" class="storeFirstCategoryBtn">&nbsp;&nbsp;&nbsp;주문 관리</a>
				<ul class="storeSecondCategoryArea">
				
					<li class="storeSecondCategoryBtn">
						<a href="storeSujeTalk.do?id=<%=user%>&page=1">
							<span>스토어 주문요청 관리</span>
						</a>
					</li>
					
					<li class="storeSecondCategoryBtn">
						<a href="storeOrderCheck.do?id=<%=user%>">
							 <span>스토어	최종주문 조회</span>
						</a>
					</li>
					
					<li class="storeSecondCategoryBtn">
						<a href="#">
							<span>플리마켓 주문 조회</span>
						</a>
					</li>
				</ul>
			</li>
			
			<li class="storeFirstCategoryArea">
				<a href="#" class="storeFirstCategoryBtn">
					&nbsp;&nbsp;&nbsp;정산 관리
				</a>
			</li>
		</ul>
	</div>
	<!-- storeSubMenuBox -->


</body>
</html>