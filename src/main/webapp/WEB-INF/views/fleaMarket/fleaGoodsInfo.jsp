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

			<form class="store_mainInfo">
			<div class= "store_subCategory">
				<label class="store_subTitle">상품 카테고리</label> 
				<select	class="goodsInfo_selectBox_First">
					<option value="choice">대분류</option>
					<option value="1">디저트</option>
					<option value="2">전통간식</option>
					<option value="3">반려동물식품</option>
					<option value="4">의류</option>
					<option value="5">주얼리</option>
					<option value="6">수공예품</option>
					<option value="7">잡화</option>
					<option value="8">홈리빙</option>
				</select> 
				<select class="goodsInfo_selectBox">
					<option value="choice">중분류</option>
					<option value="1">베이커리</option>
					<option value="2">케이크</option>
					<option value="3">마카롱</option>
					<option value="4">타르트</option>
					<option value="5">쿠키</option>
					<option value="6">약과</option>
					<option value="7">떡</option>
					<option value="8">양갱</option>
					<option value="9">애견간식</option>
					<option value="10">애견쿠키</option>
					<option value="11">애견케이크</option>
					<option value="12">여성</option>
					<option value="13">남성</option>
					<option value="14">남녀공용</option>
					<option value="15">키즈</option>
					<option value="16">반지</option>
					<option value="17">목걸이</option>
					<option value="18">팔찌</option>
					<option value="19">생활소품</option>
					<option value="20">주방공예</option>
					<option value="21">인테리어</option>
					<option value="22">문구</option>
					<option value="23">기념일</option>
					<option value="24">일러스트</option>
					<option value="25">가구</option>
					<option value="26">패브릭</option>
					<option value="27">방향제</option>
				</select> 
				<select class="goodsInfo_selectBox">
					<option value="choice">소분류</option>
					<option value="1">롤케이크</option>
					<option value="2">버터크림빵</option>
					<option value="3">마늘빵</option>
					<option value="4">슈크림빵</option>
					<option value="5">프레지에</option>
					<option value="6">생크림케이크</option>
					<option value="7">쉬폰케이크</option>
					<option value="8">치즈케이크</option>
					<option value="9">티라미수</option>
					<option value="10">일반마카롱</option>
					<option value="11">뚱카롱</option>
					<option value="12">타르틀레트</option>
					<option value="13">에그타르트</option>
					<option value="14">초코칩 쿠키</option>
					<option value="15">버터쿠키</option>
					<option value="16">치즈쿠키</option>
					<option value="17">땅콩쿠키</option>
					<option value="18">바닐라쿠키</option>
					<option value="19">황치즈쿠키</option>
					<option value="20">조청</option>
					<option value="21">꿀</option>
					<option value="22">전통약과</option>
					<option value="23">이벤트떡</option>
					<option value="24">떡케이크</option>
					<option value="25">팥</option>
					<option value="26">말차</option>
					<option value="27">밤</option>
					<option value="28">고구마</option>
					<option value="29">강아지 껌</option>
					<option value="30">육포</option>
					<option value="31">고구마치킨</option>
					<option value="32">두부쿠키</option>
					<option value="33">황태쿠키</option>
					<option value="34">당근쿠키</option>
					<option value="35">두부케이크</option>
					<option value="36">참치케이크</option>
					<option value="37">비프케이크</option>
					<option value="38">티셔츠</option>
					<option value="39">맞춤정장</option>
					<option value="40">맨투맨</option>
					<option value="41">커플룩</option>
					<option value="42">신발</option>
					<option value="43">커플링</option>
					<option value="44">각인반지</option>
					<option value="45">커플목걸이</option>
					<option value="46">커플팔찌</option>
					<option value="47">머그컵</option>
					<option value="48">열쇠고리</option>
					<option value="49">연필꽂이</option>
					<option value="50">주병</option>
					<option value="51">그릇</option>
					<option value="52">수저</option>
					<option value="53">화병</option>
					<option value="54">오브제</option>
					<option value="55">러그</option>
					<option value="56">커스텀앨범</option>
					<option value="57">커스텀스티커</option>
					<option value="58">커스텀다이어리</option>
					<option value="59">커스텀풍선</option>
					<option value="60">커스텀박스</option>
					<option value="61">커스텀카드</option>
					<option value="62">커스텀폰케이스</option>
					<option value="63">커스텀텀블러</option>
					<option value="64">커스텀시계</option>
					<option value="65">침대</option>
					<option value="66">의자</option>
					<option value="67">쇼파</option>
					<option value="68">쿠션</option>
					<option value="69">방석</option>
				</select> 
				</div>
				<div class= "store_subCategory"> 
				<label class="store_subTitle">상품 메인 이미지</label>
				<img class="goodsImg" src="./resources/img/goodsImgArea.png">
				<button type="submit" class="uploadBtn" name="submitBtn">불러오기</button>
				</div>
				
				<div class= "store_subCategory">
				<label class="store_subTitle">상품 서브 이미지</label>
				<img class="goodsImg" src="./resources/img/goodsImgArea.png">
				<img class="goodsImgSub" src="./resources/img/goodsImgArea.png">
				<img class="goodsImgSub" src="./resources/img/goodsImgArea.png">
				<button type="submit" class="uploadBtn" name="submitBtn">불러오기</button>
				</div>
				
				<div class= "store_subCategory">
				<label class="store_subTitle">상품 가격</label>
				<input type="text" class="text-box">원
				</div>
				
				<div class= "store_subCategory">
				<label class="store_subTitle">상품 총 수량</label>
				<input type="text" class="text-box">개
				</div>
				
				<div class= "store_subCategory">
				<label class="store_subTitle">상품 내용</label><br />
				<textarea class="goodsInfo_content">내용을 작성하세요</textarea>
				</div>
				
				<button type="submit" class="submitBtn" name="submitBtn">등록하기</button>
			</form>
		</div>
		<!-- storeContentsBox -->
	</div> <!-- storeContentsWrap -->
	<footer></footer>
</body>
</html>