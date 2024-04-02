<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">
<link href="./resources/css/resetStyle.css" rel="stylesheet" type="text/css">
<link href="./resources/css/menuForm/subMenuStyle.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="./resources/css/storeAdmin/storeGoodsSearchUpdate.css" />
<title>SUJE - 스토어 작품 조회/수정</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="./resources/js/storeAdmin/storeGoodsSearchUpdate.js"></script>
<script>
		$(function(){
			
		    // 서브 메뉴바 CSS 관련 JS
			$(function() {
				   $(".storeCategoryArea>li:nth-child(1)>a").addClass("checkedStateFirstCategory");
				   $(".storeCategoryArea>li:nth-child(1) .storeSecondCategoryArea li:nth-child(4)").addClass("checkedStateSecondCategory");
			});  
		    
		    // 카테고리 소분류 관련
			$('.goodsInfo_selectBox_First option').each(function() {
			    if ($(this).val() == ${cateCode}) {
					$(this).prop('selected', true);
			    }
			});
		});
</script>
</head>
<body>
	<%@ include file="../../views/headerHtml/storeHeader.jsp"%>
	<div class="storeContentsWrap">
		<jsp:include page="storeSubMenuBar.jsp"></jsp:include>

		<div class="storeContentsBox">
			<h1 class="store_mainTitle">스토어 작품 조회/수정</h1>
			<hr />
			<h1 class="store_mainTitle">스토어 작품 조회</h1>

			<hr class="topLine_imgColumn-container">
			<div class="imgColumn-container">

				<c:forEach items="${goodVO}" var="goodVO">
					<div class="column">
						<img src="./resources/img/${goodVO.g_pname}"
							data-imgCode="${goodVO.g_code}"
							data-category="${goodVO.catem_name}"
							data-subcategory="${goodVO.catemm_name}"
							data-thirdcategory="${goodVO.cates_name}"
							data-goodsInfocontent="${goodVO.g_content}">
					</div>
				</c:forEach>
			</div>
			<hr class="bottomLine_imgColumn-container">
			<hr />
			<h1 class="store_maintitle">스토어 작품 수정</h1>
			<form action="updateGoodsSU.do" method="post" class="store_mainInfo">
				<div class="store_subCategory">
					<label class="store_subTitle">작품 등록 번호</label>
					<input class="imgCode" type="text" name="g_code">
				</div>
				<input type="hidden" value="<%=request.getParameter("id")%>" name="s_id">
				<div class="store_subCategory">
					<label class="store_subTitle">작품 카테고리</label>
					
					<!-- 대분류 -->
					<select class="goodsInfo_selectBox_First" name="catem_code" id="catem_code"  disabled="disabled">
						<c:forEach items="${cateMain }" var="vo">
							<option value="${vo.catem_code }">${vo.catem_name }</option>
						</c:forEach>
					</select> 
					
					<!-- 중분류 -->
					<select class="goodsInfo_selectBox_Secound" name="catemm_code" id="catemm_code" >
						<c:forEach items="${cateMid}" var="vo">
							<option value="${vo.catemm_code }">${vo.catemm_name }</option>
						</c:forEach>
					</select>
					
					<!-- 소분류 -->
					<select class="goodsInfo_selectBox_Third" name="cates_code" id="cates_code">
							<!-- 소분류 출력 부분 -->
					</select>
					
				</div>
				<div class="cateMainCaption">대분류 수정은 스토어 페이지 관리에서 수정 하여 주세요!</div>
				<div class="store_subCategory">
					<label class="store_subTitle">작품 메인 이미지</label> <img
						class="goodsImg" src="./resources/img/goodsImgArea.png">
					<button type="button" class="uploadBtn" name="submitBtn">불러오기</button>
				</div>

				<div class="store_subCategory">
					<label class="store_subTitle">작품 서브 이미지</label> <img
						class="goodsImgSub" src="./resources/img/goodsImgArea.png">
					<img class="goodsImgSub" src="./resources/img/goodsImgArea.png">
					<img class="goodsImgSub" src="./resources/img/goodsImgArea.png">
					<button type="button" class="uploadBtn" name="submitBtn">불러오기</button>
				</div>

				<div class="store_subCategory">
					<label class="store_subTitle">작품 상세 내용</label><br />
					<textarea class="goodsInfo_content" name="g_content" placeholder="내용을 입력하세요"></textarea>
				</div>

				<button type="submit" class="submitBtn" name="submitBtn">수정하기</button>
			</form>
		</div>
		<!-- storeContentsBox -->
	</div>
	<!-- storeContentsWrap -->
	<footer></footer>
</body>
<script type="text/javascript">

$(function(){
    
    
    
});




</script>
</html>