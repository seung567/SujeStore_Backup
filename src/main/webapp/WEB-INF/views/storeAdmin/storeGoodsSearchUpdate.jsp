<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">
<link href="./resources/css/resetStyle.css" rel="stylesheet" type="text/css">
<link href="./resources/css/menuForm/subMenuStyle.css" rel="stylesheet" type="text/css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SUJE</title>
<link rel="stylesheet" href="./resources/css/storeAdmin/storeGoodsSearchUpdate.css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(document).ready(function() {
        $('.imgColumn-container img').click(function() {
            var categoryNameFirst = $(this).data('category');
            var categoryNameSecound = $(this).data('subcategory');
            var categoryNameThird = $(this).data('thirdcategory');
            var mainImageSrc = $(this).attr('src');

            $('.goodsInfo_selectBox_First').val(categoryNameFirst);
            $('.goodsInfo_selectBox_Secound').val(categoryNameSecound);
            $('.goodsInfo_selectBox_Third').val(categoryNameThird);
            $('.goodsImg').attr('src', mainImageSrc);
        });
    });
</script>
</head>
<body>
<%@ include file="../../views/headerHtml/storeHeader.jsp" %>
<div class="storeContentsWrap">
<jsp:include page="storeSubMenuBar.jsp"></jsp:include>

		<div class="storeContentsBox">
			<h1 class="store_mainTitle">스토어 작품 조회/수정</h1>
			<hr/>
			<h1 class="store_mainTitle">스토어 작품 조회</h1>
			
			<hr class="topLine_imgColumn-container">
			<div class="imgColumn-container">
			<c:forEach items="${goodVO}" var="goodVO">
				<div class="column"><img src="./resources/img/${goodVO.g_pname}.jpg" 
				data-category="${goodVO.catem_name}" data-subcategory="${goodVO.catemm_name}" data-thirdcategory="${goodVO.cates_name}"></div>
			</c:forEach>
			</div>
			<hr class="bottomLine_imgColumn-container">
			

			<hr/>
			<h1 class="store_maintitle">스토어 작품 수정</h1>
			<form class="store_mainInfo">
			<div class= "store_subCategory">
				<label class="store_subTitle">작품 카테고리</label> 
				<select	class="goodsInfo_selectBox_First">
					<option selected="selected">대분류</option>
					<option>디저트</option>
					<option>전통간식</option>
					<option>반려동물식품</option>
					<option>의류</option>
					<option>주얼리</option>
					<option>수공예품</option>
					<option>잡화</option>
					<option>홈리빙</option>
				</select> 
				<select class="goodsInfo_selectBox_Secound">
    				<option selected="selected">중분류</option>
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
				<select class="goodsInfo_selectBox_Third">
					<option selected="selected">소분류</option>
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
				<div class= "store_subCategory"> 
				<label class="store_subTitle">작품 메인 이미지</label>
				<img class="goodsImg" src="./resources/img/goodsImgArea.png">
				<button type="submit" class="uploadBtn" name="submitBtn">불러오기</button>
				</div>
				
				<div class= "store_subCategory">
				<label class="store_subTitle">작품 서브 이미지</label>
				<img class="goodsImg" src="./resources/img/goodsImgArea.png">
				<img class="goodsImgSub" src="./resources/img/goodsImgArea.png">
				<img class="goodsImgSub" src="./resources/img/goodsImgArea.png">
				<button type="submit" class="uploadBtn" name="submitBtn">불러오기</button>
				</div>
				
				<div class= "store_subCategory">
				<label class="store_subTitle">작품 상세 내용</label><br />
				<textarea class="goodsInfo_content">내용을 작성하세요</textarea>
				</div>
				
				<button type="submit" class="submitBtn" name="submitBtn">등록하기</button>
			</form>
		</div>
		<!-- storeContentsBox -->
	</div> <!-- storeContentsWrap -->
</body>
</html>