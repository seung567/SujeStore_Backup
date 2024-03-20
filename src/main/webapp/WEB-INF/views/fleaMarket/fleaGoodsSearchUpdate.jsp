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
<link rel="stylesheet" href="./resources/css/fleaMarket/fleaGoodsSearchUpdate.css" />
</head>
<body>
<%@ include file="../../views/headerHtml/storeHeader.jsp" %>
<div class="storeContentsWrap">
<div class="storeSubMenuBox">
	<a href="#" class="storeProfileBox"><img src="./resources/img/basicProfileIconBig.png"/></a>
	<textarea rows="2" disabled="disabled" class="storeNameBox" >STORE NAME AREA</textarea>
	<ul class="storeCategoryArea">
		<li class="storeFirstCategoryArea">
			<a href="#" class="storeFirstCategoryBtn">&nbsp;&nbsp;&nbsp;스토어 관리</a>
			<ul class="storeSecondCategoryArea">
				<li class="storeSecondCategoryBtn"><a href="#">
					<span>스토어 페이지 관리</span>
				</a></li>
				<li class="storeSecondCategoryBtn"><a href="#">
					<span>스토어 공지 조회/수정</span>
				</a></li>
				<li class="storeSecondCategoryBtn"><a href="#">
					<span>스토어 공지 등록</span>
				</a></li>
				<li class="storeSecondCategoryBtn"><a href="#">
					<span>스토어 작품 조회/수정</span>
				</a></li>
				<li class="storeSecondCategoryBtn"><a href="#">
					<span>스토어 작품 등록</span>
				</a></li>
			</ul>
		</li>
		<li class="storeFirstCategoryArea">
			<a href="#" class="storeFirstCategoryBtn checkedStateFirstCategory">&nbsp;&nbsp;&nbsp;플리마켓 관리</a>
			<ul class="storeSecondCategoryArea">
				<li class="storeSecondCategoryBtn checkedStateSecondCategory"><a href="#">
					<span>플리마켓 상품 조회/수정</span>
				</a></li>
				<li class="storeSecondCategoryBtn"><a href="#">
					<span>플리마켓 상품 등록</span>
				</a></li>
			</ul>
		</li>
		<li class="storeFirstCategoryArea">
			<a href="#" class="storeFirstCategoryBtn">&nbsp;&nbsp;&nbsp;주문 관리</a>
			<ul class="storeSecondCategoryArea">
				<li class="storeSecondCategoryBtn"><a href="#">
					<span>스토어 주문요청 관리</span>
				</a></li>
				<li class="storeSecondCategoryBtn"><a href="#">
					<span>스토어 최종주문 조회</span>
				</a></li>
				<li class="storeSecondCategoryBtn"><a href="#">
					<span>플리마켓 주문 조회</span>
				</a></li>
			</ul>
		</li>
		<li class="storeFirstCategoryArea">
			<a href="#" class="storeFirstCategoryBtn">&nbsp;&nbsp;&nbsp;정산 관리</a>
		</li>
	</ul>
</div> <!-- storeSubMenuBox -->

		<div class="storeContentsBox">
			<h1 class="store_mainTitle">플리마켓 상품 조회/수정</h1>
			<hr/>
			<h1 class="store_mainTitle">상품 조회</h1>
			<div class="fleaSearch-table">
			<div class="table-wrapper">
            <table>
               <thead>
                  <tr>
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
                  <tr>
                     <td>카테고리 1</td>
                     <td>공지 내용이 여기에 들어갑니다.</td>
                     <td>11,000</td>
                     <td>10</td>
                     <td>2024-03-16</td>
                     <td>2024-03-16</td>
                     <td>판매중</td>
                  </tr>
                  <tr>
                     <td>카테고리 2</td>
                     <td>공지 내용이 여기에 들어갑니다.</td>
                     <td>11,000</td>
                     <td>10</td>
                     <td>2024-03-15</td>
                     <td>2024-03-15</td>
                     <td>판매중단</td>
                  </tr>
                  <tr>
                     <td>카테고리 3</td>
                     <td>공지 내용이 여기에 들어갑니다.</td>
                     <td>11,000</td>
                     <td>10</td>
                     <td>2024-03-14</td>
                     <td>2024-03-14</td>
                     <td>판매완료</td>
                  </tr>
                  <tr>
                     <td>카테고리 4</td>
                     <td>공지 내용이 여기에 들어갑니다.</td>
                     <td>11,000</td>
                     <td>10</td>
                     <td>2024-03-14</td>
                     <td>2024-03-14</td>
                     <td>판매완료</td>
                  </tr>
                  <!-- 추가적인 공지사항 행을 필요한 만큼 추가할 수 있습니다 -->
               </tbody>
            </table>
         </div> <!-- table-wrapper -->
 		 </div> <!-- fleaSearch-table -->

			<hr/>
			<h1 class="store_maintitle">상품 수정</h1>
			<form class="store_mainInfo">
			<div class= "store_subCategory">
				<label class="store_subTitle">상품 카테고리</label> 
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
				<select class="goodsInfo_selectBox">
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
				<select class="goodsInfo_selectBox">
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
				<input type="text" class="text-box"/>원
				</div>
				
				<div class= "store_subCategory">
				<label class="store_subTitle">상품 총 수량</label>
				<input type="text" class="text-box"/>개
				</div>
				
				<div class= "store_subCategory">
				<label class="store_subTitle">상품 내용</label><br />
				<textarea class="goodsInfo_content">내용을 작성하세요</textarea>
				</div>
				
				<button type="submit" class="submitBtn" name="submitBtn">수정하기</button>
			</form>
		</div>
		<!-- storeContentsBox -->
	</div> <!-- storeContentsWrap -->
	<footer></footer>
</body>
</html>