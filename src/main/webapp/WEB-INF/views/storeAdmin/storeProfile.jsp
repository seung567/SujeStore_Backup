<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">
<link href="./resources/css/resetStyle.css" rel="stylesheet" type="text/css">
<link href="./resources/css/menuForm/subMenuStyle.css" rel="stylesheet" type="text/css"> 
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">

$(function() {
	$(".storeCategoryArea>li:nth-child(1)>a").addClass("checkedStateFirstCategory");
	$(".storeCategoryArea>li:nth-child(1) .storeSecondCategoryArea li:nth-child(1)").addClass("checkedStateSecondCategory");
}); 

</script>

<title>SUJE</title>
<link rel="stylesheet" href="./resources/css/storeAdmin/storeProfile.css" />
</head>
<body>
<%@ include file="../../views/headerHtml/storeHeader.jsp" %>
<div class="storeContentsWrap">
<jsp:include page="storeSubMenuBar.jsp"></jsp:include>
		<!-- storeSubMenuBox --> 
		<div class="storeContentsBox">

			<h1 class="store_mainTitle ">스토어 페이지 관리</h1>
			<hr>

			<form action="updateStoreProfile.do" method="post" class="form-container">
				<label for="storeName">스토어명</label> 
				<input type="text" id="s_id" name="s_id" class="text-box" value="${vo.s_id}" />
				<br/>
				<label for="storeCategory">스토어 카테고리</label> 
				<select id="catem_code" name="catem_code" class="CatemSelecBox">
					<option value="${vo.catem_code}">${vo.catem_name}</option>
					<option value="1">디저트</option>
					<option value="2">전통간식</option>
					<option value="3">반려동물식품</option>
					<option value="4">의류</option>
					<option value="5">주얼리</option>
					<option value="6">수공예품</option>
					<option value="7">잡화</option>
					<option value="8">홈리빙</option>
					<!-- 필요한 만큼 옵션을 추가할 수 있습니다. -->
				</select>


			<div class="image-container">
				<label for="storeProfile">스토어 프로필 이미지</label> <img
					id="profilePreview" src="#" alt="프로필 이미지 미리보기">
				<button onclick="document.getElementById('storeProfile').click()">불러오기</button>
			</div>

			<div class="image-container">
				<label for="storeBackimg">스토어 배경 이미지</label>
					<img id="backimgPreview" src="#" alt="배경 이미지 미리보기">
				<button onclick="document.getElementById('storeBackimg').click()">불러오기</button>
			</div>
				<label for="storeDescription">스토어 소개문구</label> 
				<input type="text" name="s_text" class="text-box2" value="${vo.s_text}" /> 
				<span style="color: gray; font-size: 12px;" >(100자 이하)</span>
				<div class="button-container">
					<button>수정하기</button>
				</div>
			</form>
		</div> 
		<!-- storeContentsBox -->
	</div>
	<!-- storeContentsWrap -->
	<footer></footer>
</body>
</html>