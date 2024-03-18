<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">
<link href="./resources/css/resetStyle.css" rel="stylesheet" type="text/css">
<link href="./resources/css/menuForm/subMenuStyle.css" rel="stylesheet" type="text/css">
<style type="text/css">

hr {
    border-top: 5px solid #d9d9d9; /* 위쪽 테두리 설정 */
    margin-top: 50px; /* 위쪽 여백 설정 */
    margin-bottom: 20px; /* 아래쪽 여백 설정 */
}


.store_mainTitle {
	font-size: 30px;
	margin-top: 50px;
	margin-left: 20px;
	
}

.storeAcc_mainInfo {
	width: 680px;
	margin: 0 auto;

}

.storeAcc_subTitle {
	width: 200px;
	height: 50px;
	display: block;
	line-height: 50px;
	margin-top: 30px;
	float: left; 
	
}

.storeAcc_selectBox {
	width: 300px;
	height: 50px;
	float: left;
	border-radius: 10px;
	border: 5px solid #ADEFD1;
	margin-top: 30px;
	margin-right: 100px;
	cursor: pointer;
	font-size: 20px;
	text-align: center;
}

.storeAcc_selectBox:focus {
	outline: 2px solid #ADEFD1;
	border: 1px solid #ADEFD1;
	cursor: pointer;
}

.storeAcc_selectBox option:focus {
	cursor: pointer;
}


.storeAcc_subCategory {
	margin-top: 50px;

}

.submitBtn {
	background-color: #ADEFD1;
	width: 300px;
	height: 50px;
	border-radius: 10px;
	margin-top: 30px;
	margin-left: 20px;
	
}

.idCheckBtn {
	width: 150px;
	height: 50px;
	border-radius: 10px;
	background-color: #ADEFD1;
	margin-top: 30px;
	margin-left: 30px;
}


.storeAcc_textbox1 {
	width: 300px;
	height: 50px;
	float: left;
	border-radius: 10px;
	border: 2px solid #ADEFD1;
	margin-top: 30px;
	font-size: 20px;
}

.storeAcc_textbox2 {
	width: 480px;
	height: 50px;
	float: left;
	border-radius: 10px;
	border: 2px solid #ADEFD1;
	margin-top: 30px;
	font-size: 20px;
}

.storeAcc_textbox1:focus, .storeAcc_textbox2:focus {
	outline: 2px solid #ADEFD1;
	border: 1px solid #ADEFD1;
	cursor: text;
}

</style> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SUJE</title>
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
			<a href="#" class="storeFirstCategoryBtn ">&nbsp;&nbsp;&nbsp;플리마켓 관리</a>
			<ul class="storeSecondCategoryArea">
				<li class="storeSecondCategoryBtn"><a href="#">
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
			<h1 class="store_mainTitle">계정 정보</h1>
			<hr/>

			<form action="#" class="storeAcc_mainInfo">
				
				<label class="storeAcc_subTitle">아이디</label> 
				<input type="text" required="required" autofocus="autofocus" class="storeAcc_textbox1" />
				<button class="idCheckBtn">중복확인</button>

				<label class="storeAcc_subTitle">비밀번호</label> 
				<input type="password" required="required" class="storeAcc_textbox1" /> 
				
				<label class="storeAcc_subTitle">이메일</label> 
				<input type="text" required="required" class="storeAcc_textbox1" /> 
				
				<label class="storeAcc_subTitle">전화번호</label> 
				<input type="text" required="required" class="storeAcc_textbox1" /> 
				
				<label class="storeAcc_subTitle">주소</label> 
				<input type="text" required="required" class="storeAcc_textbox2" /> 
				
				<label class="storeAcc_subTitle">사업자등록번호</label> 
				<input type="text" required="required" class="storeAcc_textbox2" /> 
				
				<label class="storeAcc_subTitle">은행명</label> 
					<select	class="storeAcc_selectBox">
						<option selected="selected">=== 은행 선택 ===</option>
						<option>우리은행</option>
						<option>기업은행</option>
						<option>신한은행</option>
						<option>카카오뱅크</option>
					</select> 
				<label class="storeAcc_subTitle">계좌번호</label> 
				<input type="text" required="required" class="storeAcc_textbox2" /> 
				<button type="submit" class="submitBtn" name="submitBtn">수정하기</button>
			</form>
		</div> <!-- storeContentsBox -->
	</div> <!-- storeContentsWrap -->
</body>
</html>