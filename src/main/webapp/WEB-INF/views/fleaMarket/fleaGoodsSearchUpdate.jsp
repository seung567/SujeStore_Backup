<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap"
	rel="stylesheet">
<link href="./resources/css/resetStyle.css" rel="stylesheet"
	type="text/css">
<link href="./resources/css/menuForm/subMenuStyle.css" rel="stylesheet"
	type="text/css">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SUJE</title>
<link rel="stylesheet"
	href="./resources/css/fleaMarket/fleaGoodsSearchUpdate.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
<script type="text/javascript">

/* 	 $(function() {
		    $(".goodsListDetail").click(function() {
		    	const fleaNum = $(this).find("td:first-child").text();
		        const id = $(this).data("s_id"); 
		        const categoryFirst = $(this).data("category_first");
		        const categorySecond = $(this).data("category_second");
		        const categoryThird = $(this).data("category_third");
   		        
				$(".goodsInfo_selectBox_First").val(categoryFirst);
				$(".goodsInfo_selectBox_Secound").val(categorySecond);
				$(".goodsInfo_selectBox_Third").val(categoryThird);

				/* const url = "getFleaInfo.do?fleaNum=" + fleaNum + "&id=" + id;
				location.href = url; 
		});
 
	});*/

	$(function() {
		
		$(".storeCategoryArea>li:nth-child(2)>a").addClass("checkedStateFirstCategory");	
		$(".storeCategoryArea>li:nth-child(2) .storeSecondCategoryArea li:nth-child(1)").addClass("checkedStateSecondCategory");

		<% String categoryFirst = (String)request.getAttribute("categoryFirst"); %>
		<% String categorySecond = (String)request.getAttribute("categorySecond"); %>
		<% String categoryThird = (String)request.getAttribute("categoryThird"); %>
		
		$(".goodsInfo_selectBox_First").val("<%= categoryFirst %>");
		$(".goodsInfo_selectBox_Secound").val("<%= categorySecond %>");
		$(".goodsInfo_selectBox_Third").val("<%= categoryThird %>");
		
		alert(<%= categoryFirst %>);
		
		/* $(".goodsInfo_selectBox_First option").each(function({
			if("${getListVO.catemm_name}" != ""){
				if($(this).text == "${getListVO.catemm_name}"){
					console.log("${getListVO.catemm_name}");
				}
			}
		})(0); */
		
		$(".goodsListDetail").click(function() {
			const fleaNum = $(this).find("td:first-child").text();
			const id = $(this).data("s_id"); 
			const url = "getFleaInfo.do?fleaNum=" + fleaNum + "&id=" + id;
			location.href = url; 
			
		});
	});

	//공지사항 영역 미리보기
	$(function() {
		$('.goodsContent').each(function() {
			var text = $(this).text();
			if (text.length > 60) {
				text = text.substring(0, 30) + '...';
				$(this).text(text);
			}
		});
	});
</script>
</head>
<body>
	<%@ include file="../../views/headerHtml/storeHeader.jsp"%>
	<div class="storeContentsWrap">
		<jsp:include page="../storeAdmin/storeSubMenuBar.jsp"></jsp:include>
		<div class="storeContentsBox">
			<h1 class="store_mainTitle">플리마켓 상품 조회/수정</h1>
			<hr />
			<h1 class="store_mainTitle">상품 조회</h1>
			<div class="fleaSearch-table">
				<div class="table-wrapper">
					<table>
						<thead>
							<tr>
								<th>상품등록번호</th>
								<th>상품 카테고리</th>
								<th>상품 내용</th>
								<th>상품 금액</th>
								<th>상품 수량</th>
								<th>등록일자</th>
								<th>수정일자</th>
								<th>판매여부</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${fleaGoodsListAll}" var="listAll">
								<tr class="goodsListDetail" data-s_id="${listAll.s_id}"
								        data-category_first="${listAll.catem_name}"
								        data-category_second="${listAll.catemm_name}"
								        data-category_third="${listAll.cates_name}">
								        
									<td>${listAll.f_code}</td>
									<td>${listAll.cates_name}</td>
									<td class="goodsContent">${listAll.f_content}</td>
									<td>${listAll.f_sum}</td>
									<td>${listAll.f_num}</td>
									<td>${listAll.f_date}</td>
									<td>${listAll.f_redate}</td>
									<td>${listAll.f_ck}</td>
									
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<!-- table-wrapper -->
			</div>
			<!-- fleaSearch-table -->


			<hr />
			<h1 class="store_maintitle">상품 수정</h1>
			<form class="store_mainInfo" action="modifyGoodsSU.do" method="post" >
				<input type="text" value="<%=request.getParameter("id")%>" name="s_id">
				<input type="text" value="" name="s_code">
				<div class="store_subCategory">
					<label class="store_subTitle">상품 카테고리</label> 
					<select class="goodsInfo_selectBox_First" name="catem_code" id="catem_code">
						<option>대분류</option>
						<option>디저트</option>
						<option>전통간식</option>
						<option>반려동물식품</option>
						<option>의류</option>
						<option>주얼리</option>
						<option>수공예품</option>
						<option>잡화</option>
						<option>홈리빙</option>
					</select>
					<select class="goodsInfo_selectBox_Secound" name="catemm_code" id="catemm_code">
						<option>중분류</option>
						<option>베이커리</option>
						<option>케이크</option>
						<option>마카롱</option>
						<option>타르트</option>
						<option>쿠키</option>
						<option>약과</option>
						<option>떡</option>
						<option>양갱</option>
						<option>애견간식</option>
						<option>애견쿠키</option>
						<option>애견케이크</option>
						<option>여성</option>
						<option>남성</option>
						<option>남녀공용</option>
						<option>키즈</option>
						<option>반지</option>
						<option>목걸이</option>
						<option>팔찌</option>
						<option>생활소품</option>
						<option>주방공예</option>
						<option>인테리어</option>
						<option>문구</option>
						<option>기념일</option>
						<option>일러스트</option>
						<option>가구</option>
						<option>패브릭</option>
						<option>방향제</option>
					</select> 
					<select class="goodsInfo_selectBox_Third" name="cates_code" id="cates_code">
						<option>소분류</option>
						<option>롤케이크</option>
						<option>버터크림빵</option>
						<option>마늘빵</option>
						<option>슈크림빵</option>
						<option>프레지에</option>
						<option>생크림케이크</option>
						<option>쉬폰케이크</option>
						<option>치즈케이크</option>
						<option>티라미수</option>
						<option>일반마카롱</option>
						<option>뚱카롱</option>
						<option>타르틀레트</option>
						<option>에그타르트</option>
						<option>초코칩 쿠키</option>
						<option>버터쿠키</option>
						<option>치즈쿠키</option>
						<option>땅콩쿠키</option>
						<option>바닐라쿠키</option>
						<option>황치즈쿠키</option>
						<option>조청</option>
						<option>꿀</option>
						<option>전통약과</option>
						<option>이벤트떡</option>
						<option>떡케이크</option>
						<option>팥</option>
						<option>말차</option>
						<option>밤</option>
						<option>고구마</option>
						<option>강아지 껌</option>
						<option>육포</option>
						<option>고구마치킨</option>
						<option>두부쿠키</option>
						<option>황태쿠키</option>
						<option>당근쿠키</option>
						<option>두부케이크</option>
						<option>참치케이크</option>
						<option>비프케이크</option>
						<option>티셔츠</option>
						<option>맞춤정장</option>
						<option>맨투맨</option>
						<option>커플룩</option>
						<option>신발</option>
						<option>커플링</option>
						<option>각인반지</option>
						<option>커플목걸이</option>
						<option>커플팔찌</option>
						<option>머그컵</option>
						<option>열쇠고리</option>
						<option>연필꽂이</option>
						<option>주병</option>
						<option>그릇</option>
						<option>수저</option>
						<option>화병</option>
						<option>오브제</option>
						<option>러그</option>
						<option>커스텀앨범</option>
						<option>커스텀스티커</option>
						<option>커스텀다이어리</option>
						<option>커스텀풍선</option>
						<option>커스텀박스</option>
						<option>커스텀카드</option>
						<option>커스텀폰케이스</option>
						<option>커스텀텀블러</option>
						<option>커스텀시계</option>
						<option>침대</option>
						<option>의자</option>
						<option>쇼파</option>
						<option>쿠션</option>
						<option>방석</option>
					</select>
				</div>
				<div class="store_subCategory">
					<label class="store_subTitle">상품 메인 이미지</label> 
					<img class="goodsImg" src="./resources/img/goodsImgArea.png">
					<button type="submit" class="uploadBtn" name="submitBtn">불러오기</button>
				</div>
				
				<div class="store_subCategory">
					<label class="store_subTitle">상품 서브 이미지</label> 
					<img class="goodsImg" src="./resources/img/goodsImgArea.png"> 
					<img class="goodsImgSub" src="./resources/img/goodsImgArea.png">
					<img class="goodsImgSub" src="./resources/img/goodsImgArea.png">
					<button type="submit" class="uploadBtn" name="submitBtn">불러오기</button>
				</div>

				<div class="store_subCategory">
					<label class="store_subTitle">상품 가격</label>
					<%-- <c:choose>
						<c:when test="${getListVO.f_sum == null}">
							<input type="text" class="text-box" name="goodsPrice" />원
						</c:when>
						<c:when test="${getListVO.f_sum != null}">
							<input type="text" class="text-box" name="goodsPrice"
								value="${getListVO.f_sum}" />원
						</c:when>
					</c:choose> --%>
				</div>

				<div class="store_subCategory">
					<label class="store_subTitle">상품 총 수량</label>
					<%-- <c:choose>
						<c:when test="${getListVO.f_num == null}">
							<input type="text" class="text-box" name="goodsNum" />개
					</c:when>
						<c:when test="${getListVO.f_num != null}">
							<input type="text" class="text-box" name="goodsNum"
								value="${getListVO.f_num}" />개
					</c:when>
					</c:choose> --%>
				</div>

				<div class="store_subCategory">
					<label class="store_subTitle">상품 내용</label><br />
					<textarea class="goodsInfo_content" name="goodsInfoContent" placeholder="내용을 입력하세요"></textarea>
				</div>

				<button type="submit" class="submitBtn" name="submitBtn">수정하기</button>
			</form>
			
		</div>
		<!-- storeContentsBox -->
	</div>
	<!-- storeContentsWrap -->
	<footer></footer>
</body>
</html>