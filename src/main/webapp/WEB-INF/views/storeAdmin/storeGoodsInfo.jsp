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
<link rel="stylesheet" href="./resources/css/storeAdmin/storeGoodsInfo.css" />
</head>
<body>
<%@ include file="../../views/headerHtml/storeHeader.jsp" %>
<div class="storeContentsWrap">
<jsp:include page="storeSubMenuBar.jsp"></jsp:include>
 <!-- storeSubMenuBox -->
		<div class="storeContentsBox">
			<h1 class="store_mainTitle">스토어 작품 등록</h1>
			<hr/>

			<form class="store_mainInfo" action="insertStoreGoodsInfo.do" method="post">
			<input type="hidden" value="<%=request.getParameter("id")%>" name="s_id" />
			<div class= "store_subCategory">
				<label class="store_subTitle">작품 카테고리</label> 
				<select	class="goodsInfo_selectBox_First" name="catem_code">
					<option selected="selected">대분류</option>
						<option value="1">디저트</option>
						<option value="2">전통간식</option>
						<option value="3">반려동물식품</option>
						<option value="4">의류</option>
						<option value="5">주얼리</option>
						<option value="6">수공예품</option>
						<option value="7">잡화</option>
						<option value="8">홈리빙</option>
				</select> 
				<select class="goodsInfo_selectBox" name="catemm_code">
    				<option selected="selected">중분류</option>
 						<option value="10">베이커리</option>
						<option value="11">케이크</option>
						<option value="12">마카롱</option>
						<option value="13">타르트</option>
						<option value="14">쿠키</option>
						<option value="15">약과</option>
						<option value="16">떡</option>
						<option value="17">양갱</option>
						<option value="18">애견간식</option>
						<option value="19">애견쿠키</option>
						<option value="20">애견케이크</option>
						<option value="21">여성</option>
						<option value="22">남성</option>
						<option value="23">남녀공용</option>
						<option value="24">키즈</option>
						<option value="25">반지</option>
						<option value="26">목걸이</option>
						<option value="27">팔찌</option>
						<option value="28">생활소품</option>
						<option value="29">주방공예</option>
						<option value="30">인테리어</option>
						<option value="31">문구</option>
						<option value="32">기념일</option>
						<option value="33">일러스트</option>
						<option value="34">가구</option>
						<option value="35">패브릭</option>
						<option value="36">방향제</option>
				</select> 
				<select class="goodsInfo_selectBox" name="cates_code">
					<option selected="selected">소분류</option>
						<option value="100">롤케이크</option>
						<option value="101">버터크림빵</option>
						<option value="102">마늘빵</option>
						<option value="103">슈크림빵</option>
						<option value="104">프레지에</option>
						<option value="105">생크림케이크</option>
						<option value="106">쉬폰케이크</option>
						<option value="107">치즈케이크</option>
						<option value="108">티라미수</option>
						<option value="109">일반마카롱</option>
						<option value="110">뚱카롱</option>
						<option value="111">타르틀레트</option>
						<option value="112">에그타르트</option>
						<option value="113">초코칩 쿠키</option>
						<option value="114">버터쿠키</option>
						<option value="115">치즈쿠키</option>
						<option value="116">땅콩쿠키</option>
						<option value="117">바닐라쿠키</option>
						<option value="118">황치즈쿠키</option>
						<option value="119">조청</option>
						<option value="120">꿀</option>
						<option value="121">전통약과</option>
						<option value="122">이벤트떡</option>
						<option value="123">떡케이크</option>
						<option value="124">팥</option>
						<option value="125">말차</option>
						<option value="126">밤</option>
						<option value="127">고구마</option>
						<option value="128">강아지 껌</option>
						<option value="129">육포</option>
						<option value="130">고구마치킨</option>
						<option value="131">두부쿠키</option>
						<option value="132">황태쿠키</option>
						<option value="133">당근쿠키</option>
						<option value="134">두부케이크</option>
						<option value="135">참치케이크</option>
						<option value="136">비프케이크</option>
						<option value="137">티셔츠</option>
						<option value="138">맞춤정장</option>
						<option value="139">맨투맨</option>
						<option value="140">커플룩</option>
						<option value="141">신발</option>
						<option value="142">커플링</option>
						<option value="143">각인반지</option>
						<option value="144">커플목걸이</option>
						<option value="145">커플팔찌</option>
						<option value="146">머그컵</option>
						<option value="147">열쇠고리</option>
						<option value="148">연필꽂이</option>
						<option value="149">주병</option>
						<option value="150">그릇</option>
						<option value="151">수저</option>
						<option value="152">화병</option>
						<option value="153">오브제</option>
						<option value="154">러그</option>
						<option value="155">커스텀앨범</option>
						<option value="156">커스텀스티커</option>
						<option value="157">커스텀다이어리</option>
						<option value="158">커스텀풍선</option>
						<option value="159">커스텀박스</option>
						<option value="160">커스텀카드</option>
						<option value="161">커스텀폰케이스</option>
						<option value="162">커스텀텀블러</option>
						<option value="163">커스텀시계</option>
						<option value="164">침대</option>
						<option value="165">의자</option>
						<option value="166">쇼파</option>
						<option value="167">쿠션</option>
						<option value="168">방석</option>
				</select> 
				</div>
				<div class= "store_subCategory"> 
				<label class="store_subTitle" >작품 메인 이미지</label>
				<img class="goodsImg" id="mainImagePreview"  src="./resources/img/goodsImgArea.png">
				<input type="file" class="mainImage" name="g_pname" accept="image/*" onchange="previewMainImage(event)">
				<input type="hidden" class="mainImage" name="g_ppath">
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
				<textarea class="goodsInfo_content" name="g_content">내용을 작성하세요</textarea>
				</div>
				
				<button type="submit" class="submitBtn" name="submitBtn">등록하기</button>
			</form>
		</div>
		<!-- storeContentsBox -->
	</div> <!-- storeContentsWrap -->

	<footer></footer>
	<script>
// 메인 이미지 미리보기 함수
function previewMainImage(e vent) {
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

</body>
</html>