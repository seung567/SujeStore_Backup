<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
<link rel="stylesheet"
	href="./resources/css/fleaMarket/fleaGoodsSearchUpdate.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script type="text/javascript">

	$(function() {
		
		// 서브 메뉴바 클래스명 추가 // CSS 적용
		$(".storeCategoryArea>li:nth-child(2)>a").addClass("checkedStateFirstCategory");	
		$(".storeCategoryArea>li:nth-child(2) .storeSecondCategoryArea li:nth-child(1)").addClass("checkedStateSecondCategory");
		
		
		// 상단 공지 리스트 글자 압축 // 30글자
		$('.goodsContentList').each(function() {
			var text = $(this).text();
			if (text.length > 10) {
				text = text.substring(0, 10) + '...';
				$(this).text(text); 
			}
		});
		
		
		
		// 상단 공지 행 클릭 이벤트
		$('.goodsListDetail').click(function(){
			
			const idValue = $(this).data('s_id'); // id값
			const fCodeValue = $(this).children().eq(0).text(); // 플리마켓 상품번호
			
			 $.ajax({
				type : "get",
				url : "getFleaInfo.do",
				data : {
				    id : idValue,
				    fleaNum : fCodeValue
				},
				dataType : "json",
				contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
				success : function(data) {
					
					console.log(data);
					
		 			$(".goodsInfo_selectBox_First option").each(function(){
						if($(this).text() == data["getListVO"].catem_name){
							$(this).prop('selected', true);
						}
					});
		 			
		 			$(".goodsInfo_selectBox_Secound option").each(function(){
						if($(this).text() == data["getListVO"].catemm_name){
							$(this).prop('selected', true);
						}
					});
		 			
		 			$(".goodsInfo_selectBox_Third option").each(function(){
						if($(this).text() == data["getListVO"].cates_name){
							$(this).prop('selected', true);
						}
					});

		 			
		 			// 상품 메인 이미지 설정
		 	        const mainImgSrc = data["getListVO"].f_pname;
		 	         $(".goodsImg").attr("src", mainImgSrc);

		 	      
		 	        // 상품 서브 이미지 설정
		 	        const subImgSrc = data["getListVO"].f_spname;
		 	          $(".goodsImgSub").eq(0).attr("src", subImgSrc); 
		 	          $(".goodsImgSub").eq(1).attr("src", subImgSrc); 

		 	          
		 	          //상품 코드/아이디값(히든)
		 			 $("input[name='f_code']").val(fCodeValue);
		 			 $("input[name='s_id']").val(idValue);
		 	          
		 	
		 			 
		 			//상품 가격
		 			const fSum = data["getListVO"].f_sum;
		 			 $("input[name='goodsPrice']").val(fSum);
		 			
		 			 
		 			//상품 총 수량
		 			const fNum = data["getListVO"].f_num;
		 			 $("input[name='goodsNum']").val(fNum);
		 			
		 			 
		 			//상품내용 
		 			const fContent = data["getListVO"].f_content;
		 			 $(".goodsInfo_content").val(fContent);
				} 
			});
		}); // end
			
	});
	
	//상품 목록 수정 버튼 이벤트
 	function modifyBtn() {
		
		var formFcode = $("#f_code").val();
		var formsId = $("#s_id").val();
		var formCateMname = $(".goodsInfo_selectBox_First option:selected").val();
	    var formCateMMname = $(".goodsInfo_selectBox_Secound option:selected").val();
	    var formCateSname = $(".goodsInfo_selectBox_Third option:selected").val();
	    var formPrice = $("#goodsPrice").val();
	    var formNum = $("#goodsTotalNum").val();
	    var formContent = $("#goodsInfoContent").val();
        
		
	    /* var formMainImg = $("#goodsMainImg")[0].files[0]; // 첫 번째 이미지 파일 선택
	    var formSubImg = $("#goodsSubImg")[0].files; // 모든 서브 이미지 파일 선택 */
	    
		/* alert(formFcode); */
		
		$.ajax({
			url : "modifyGoodsSU.do",
			type : "post",
			data : {f_code : formFcode,
					s_id :formsId,
					cates_name : formCateSname,
					f_sum : formPrice,
					f_num : formNum,
					f_content : formContent},
					
			success : function(data){
				alert("수정되었습니다.")
				
				location.reload();
			},
			error: function(request, status, error) {
				alert("통신 에러가 발생했습니다 : "+request+"/"+status+"/"+error);
			}
		});
		
		
	} //modifyBtn()
	
	
		
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
					<table id=>
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
								<tr class="goodsListDetail" data-s_id="${listAll.s_id}" data-f_code="${listAll.f_code}">
									<td>${listAll.f_code}</td>
									<td>${listAll.cates_name}</td>
									<td class="goodsContentList">${listAll.f_content}</td>
									<td>${listAll.f_sum}</td>
									<td>${listAll.f_num}</td>
									<td id="listfDate"><fmt:parseDate value="${listAll.f_date}"
											pattern="yyyy-MM-dd HH:mm:ss" var="parsedDate" /> <fmt:formatDate
											value="${parsedDate}" pattern="yyyy/MM/dd" /></td>
									<td id="listRedate"><fmt:parseDate value="${listAll.f_redate}"
											pattern="yyyy-MM-dd HH:mm:ss" var="parsedDate" /> <fmt:formatDate
											value="${parsedDate}" pattern="yyyy/MM/dd" /></td>
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
			<form id="modifyForm" name= "modifyForm" class="store_mainInfo" method="post">
			
			<input type="hidden" name="f_code" id="f_code"/>
			<input type="hidden" name="s_id" id="s_id"/>
			
			
				<div class="store_subCategory">
					<label class="store_subTitle">상품 카테고리</label> 
					<select class="goodsInfo_selectBox_First" name="catem_name" id="catem_name">
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
					<select class="goodsInfo_selectBox_Secound" name="catemm_name" id="catemm_name">
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
					<select class="goodsInfo_selectBox_Third" name="cates_name" id="cates_name">
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
						<img class="goodsImg" alt="mainImg" id= "goodsMainImg" src="./resources/img/goodsImgArea.png">
					<button type="botton" class="uploadBtn" name="uploadBtn()">불러오기</button>
				</div>

				<div class="store_subCategory">
					<label class="store_subTitle">상품 서브 이미지</label> 
						<img class="goodsImg" alt="mainImg" id= "goodsMainImg" src="./resources/img/goodsImgArea.png"> 
						<img class="goodsImgSub" alt="subImg" id="goodsSubImg" src="./resources/img/goodsImgArea.png"> 
						<img class="goodsImgSub" alt="subImg" id="goodsSubImg" src="./resources/img/goodsImgArea.png">
					<button type="botton" class="uploadBtn" name="uploadBtn()">불러오기</button>
				</div>

				<div class="store_subCategory">
					<label class="store_subTitle">상품 가격</label> <input type="text"
						class="text-box" name="goodsPrice" id="goodsPrice"/>원
				</div>

				<div class="store_subCategory">
					<label class="store_subTitle">상품 총 수량</label> <input type="text"
						class="text-box" name="goodsNum" id="goodsTotalNum" />개
				</div>

				<div class="store_subCategory">
					<label class="store_subTitle">상품 내용</label><br />
					<textarea class="goodsInfo_content" name="goodsInfoContent" id="goodsInfoContent"></textarea>
				</div>

				<button type="button" class="submitBtn" onclick="modifyBtn()">수정하기</button>
			</form>
			
			<!-- 삭제하기 -->
			<form action="deleteGoodsSU.do" >
				<input type="hidden" name="f_code" value="${goodsList.f_code }">
				<input type="hidden" name="s_id" value="${goodsList.s_id }"/>
				
				<button class="submitBtn" name="deleteBtn" id="deleteBtn">삭제하기</button>
			</form>
			

		</div>
		<!-- storeContentsBox -->
	</div>
	<!-- storeContentsWrap -->
	<footer></footer>
</body>
</html>