<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">
<link href="./resources/css/resetStyle.css" rel="stylesheet" type="text/css">
<link href="./resources/css/menuForm/subMenuStyle.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<link rel="stylesheet" href="./resources/css/storeAdmin/storeGoodsInfo.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>SUJE</title>
<script>

$(function(){
    
    
    // 서브 메뉴바 CSS 관련 JS
   $(".storeCategoryArea>li:nth-child(1)>a").addClass("checkedStateFirstCategory");
   $(".storeCategoryArea>li:nth-child(1) .storeSecondCategoryArea li:nth-child(5)").addClass("checkedStateSecondCategory");
	
   var cateMainCode = ${cateCode};
   
	$('.goodsInfo_selectBox_First option').each(function() {
	    if ($(this).val() == cateMainCode) {
			$(this).prop('selected', true);
	    }
	});
    
	$(".goodsInfo_selectBox_Secound").change(function(){
		
		let cateMidCode = $(this).val();
		
		$.ajax({
		    type : "post",
			url : "cateSubCode.do",
			data : {
			    cateMidCode : cateMidCode
			},
			dataType : "json",
			contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
			beforeSend : function(){
				$(".goodsInfo_selectBox_Third").empty();
			},
			success : function(data){
			    
			    for(var i = 0; i<data.length; i++){
					$(".goodsInfo_selectBox_Third").append(
						"<option value=" + data[i].cates_code +">" + data[i].cates_name  + "</option>"
					);
			    }
			},
			error: function(request, status, error) {
		               alert("통신 에러가 발생했습니다 : "+request+"/"+status+"/"+error);
		   }
		});
	});
	
});

</script>
</head>
<body>
	<%@ include file="../../views/headerHtml/storeHeader.jsp"%>
	<div class="storeContentsWrap">
		<jsp:include page="storeSubMenuBar.jsp"></jsp:include>
		<!-- storeSubMenuBox -->
		<div class="storeContentsBox">
			<h1 class="store_mainTitle">스토어 작품 등록</h1>
			<hr />

			<form class="store_mainInfo" action="insertStoreGoodsInfo.do"
				method="post">
				<input type="hidden" value="<%=request.getParameter("id")%>" name="s_id" />
				<div class="store_subCategory">
					<label class="store_subTitle">작품 카테고리</label>
					
					<!-- 대분류 -->
					<select class="goodsInfo_selectBox_First" name="catem_code" disabled="disabled">
					
						<c:forEach items="${cateMain }" var="vo">
							<option value="${vo.catem_code }">${vo.catem_name }</option>
						</c:forEach>
						
					</select>
					 
					 <!-- 중분류 -->
					<select class="goodsInfo_selectBox_Secound" name="catemm_code">
					
						<c:forEach items="${cateMid }" var="vo">
							<option value="${vo.catemm_code }">${vo.catemm_name }</option>
						</c:forEach>
						
					</select>

					<!-- 소분류 -->
					<select class="goodsInfo_selectBox_Third" name="cates_code">
					
						<!-- 소분류 출력 부분 -->
						
					</select>
				</div>
				<div class="store_subCategory">
					<label class="store_subTitle">작품 메인 이미지</label>
					<img class="goodsImg" id="mainImagePreview" src="./resources/img/goodsImgArea.png">
					<input type="file" class="mainImage" name="g_pname" accept="image/*" onchange="previewMainImage(event)">
					<input type="hidden" class="mainImage" name="g_ppath">
				</div>

				<div class="store_subCategory">
					<label class="store_subTitle">작품 서브 이미지</label> <img
						class="goodsImg" src="./resources/img/goodsImgArea.png"> <img
						class="goodsImgSub" src="./resources/img/goodsImgArea.png">
					<img class="goodsImgSub" src="./resources/img/goodsImgArea.png">
					<button type="submit" class="uploadBtn" name="submitBtn">불러오기</button>
				</div>

				<div class="store_subCategory">
					<label class="store_subTitle">작품 상세 내용</label><br />
					<textarea class="goodsInfo_content" name="g_content">내용을 작성하세요</textarea>
				</div>

				<button type="submit" class="submitBtn" name="submitBtn">등록하기</button>
			</form>
		</div>
		<!-- storeContentsBox -->
	</div>
	<!-- storeContentsWrap -->

	<footer></footer>

</body>
<script>
    // 메인 이미지 미리보기 함수
    function previewMainImage(event) {
		var mainImage = document.getElementById('mainImagePreview');
		var file = event.target.files[0];
		var reader = new FileReader();
	
		reader.onload = function() {
		    mainImage.src = reader.result;
		    // 선택한 파일의 경로를 g_ppath 필드에 설정
	
		    document.getElementsByName('g_ppath')[0].value = file.name;
		}
	
		if (file) {
		    reader.readAsDataURL(file);
		}
    }
</script>
</html>