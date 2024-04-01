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
<title>SUJE</title>
<link rel="stylesheet" href="./resources/css/fleaMarket/fleaGoodsInfo.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script type="text/javascript">
$(function() {
	
	// 서브 메뉴바 클래스명 추가 // CSS 적용
	$(".storeCategoryArea>li:nth-child(2)>a").addClass("checkedStateFirstCategory");	
	$(".storeCategoryArea>li:nth-child(2) .storeSecondCategoryArea li:nth-child(2)").addClass("checkedStateSecondCategory");

	
	
	//파일 이미지 불러오기
	  $(document).on('change', '.fileInput', function(event) {
	        var reader = new FileReader();
	        reader.onload = function() {
	            $('.goodsImg').attr('src', reader.result);
	           /*  $('.goodsImg').attr('src', '<img src="' + reader.result + '" alt="Uploaded Image">'); */
	        };
	        reader.readAsDataURL(event.target.files[0]);
	    });

	
});



</script>

</head>
<body>
<%@ include file="../../views/headerHtml/storeHeader.jsp" %>
<div class="storeContentsWrap">
<jsp:include page="../storeAdmin/storeSubMenuBar.jsp"></jsp:include>

		<div class="storeContentsBox">
			<h1 class="store_mainTitle">플리마켓 상품 등록</h1>
			<hr/>

			<form method="post"  class="store_mainInfo"  enctype="multipart/form-data">
			<input name="f_code" id="f_code" type="hidden" value="${insertVO.f_code}">
			<input name="s_id" id="s_id" type="hidden" value="${insertVO.s_id}">
			
			
				<div class="store_subCategory">
					<label class="store_subTitle">상품 카테고리</label> 
					<select class="goodsInfo_selectBox_First" name="catem_name" id="catemName">
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
					<select class="goodsInfo_selectBox_Secound" name="catemm_name" id="catemmName">
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
					<select class="goodsInfo_selectBox_Third" name="cates_name" id="catesName">
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
					<div class="goodsMainImg">
						<img alt="메인이미지" src="./resources/img/goodsImgArea.png">
						<input type="file" class="fileInput">
					</div>	
				</div>

				<div class="store_subCategory">
					<label class="store_subTitle">상품 서브 이미지</label>
					<div class="goodsSubImg">
						<img alt="서브이미지" src="./resources/img/goodsImgArea.png">
						<input type="file" class="fileInput">
					</div>
					
					<div class="goodsSubImg">
						<img alt="서브이미지" src="./resources/img/goodsImgArea.png">
						<input type="file" class="fileInput">
					</div>
					
					<div class="goodsSubImg">
						<img alt="서브이미지" src="./resources/img/goodsImgArea.png">
						<input type="file" class="fileInput">
					</div>
					
				</div>

				<div class="store_subCategory">
					<label class="store_subTitle">상품 가격</label> 
					<input type="text" class="text-box" name="goodsPrice" id="goodsPrice">원
				</div>

				<div class="store_subCategory">
					<label class="store_subTitle">상품 총 수량</label> 
					<input type="text" class="text-box" name="goodsNum" id="goodsNum">개
				</div>

				<div class="store_subCategory">
					<label class="store_subTitle">상품 내용</label><br />
					<textarea class="goodsInfo_content" name="goodsInfoContent" id="goodsInfoContent"></textarea>
				</div>

				<button class="insertBtn" name="insertBtn">등록하기</button>
			</form>
		</div>
		<!-- storeContentsBox -->
	</div> <!-- storeContentsWrap -->
	<footer></footer>
</body>
</html>