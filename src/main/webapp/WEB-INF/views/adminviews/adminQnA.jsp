<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">
<link href="./resources/css/resetStyle.css" rel="stylesheet" type="text/css">
<link href="./resources/css/menuForm/subMenuStyle.css" rel="stylesheet" type="text/css">
<link href="./resources/css/admincss/adminQnA.css" rel="stylesheet" type="text/css">
<title>SUJE</title>
</head>
<body>
<%@ include file="../../views/headerHtml/adminHeader.jsp"%>
<div class="adminContentsWrap">
<div class="adminSubMenuBox">
	<ul class="adminCategoryArea">
		<li class="adminFirstCategoryArea">
			<a href="adminmanage.jsp" class="adminFirstCategoryBtn">&nbsp;&nbsp;&nbsp;스토어 입점 관리</a>
		</li>
		<li class="storeFirstCategoryArea">
			<a href="adminpnt.jsp" class="adminFirstCategoryBtn">&nbsp;&nbsp;&nbsp;스토어 벌점 관리</a>
		</li>
		<li class="adminFirstCategoryArea">
			<a href="adminQ&A.jsp" class="storeFirstCategoryBtn checkedStateFirstCategory">&nbsp;&nbsp;&nbsp;Q&A 관리</a>
		</li>
		<li class="adminFirstCategoryArea">
			<a href="adminstatistics.jsp" class="storeFirstCategoryBtn">&nbsp;&nbsp;&nbsp;통계</a>
		</li>
	</ul>
</div> <!-- adminSubMenuBox -->
<div class="adminContentsBox">
	<h2 class="adminQnaMainTitle">Q&A 관리</h2>
	<hr class="adminLine">
	<h2 class="adminQnaSubTitle">Q&A 내역</h2>
	<div class="adminQnaHistory">
		<table class="qnaTable">
			<thead>
				<tr class="qnaTableRow">
					<th>Q&A 게시물번호</th>
					<th>제목</th>
					<th>작성일자</th>
					<th>답변일자</th>
					<th>답변관리자</th>
				</tr>
			</thead>
			<tbody>
				<tr class="qnaTableRow">
					<td class="qnaTableRowNumber"><a href="#">12341234</a></td>
					<td>Q&A 제목입니다</td>
					<td>2024/01/01</td>
					<td>2024/01/01</td>
					<td>관리자 ID</td>
				</tr>
				<tr class="qnaTableRow">
					<td class="qnaTableRowNumber"><a href="#">12341234</a></td>
					<td>Q&A 제목입니다</td>
					<td>2024/01/01</td>
					<td>2024/01/01</td>
					<td>관리자 ID</td>
				</tr>
				<tr class="qnaTableRow">
					<td class="qnaTableRowNumber"><a href="#">12341234</a></td>
					<td>Q&A 제목입니다</td>
					<td>2024/01/01</td>
					<td>2024/01/01</td>
					<td>관리자 ID</td>
				</tr>
			</tbody>
		</table>
		<div class="pageingArea">
			<a href="#"><img src="././resources/img/pageLeftBtn.png"/></a>
			<a href="#">1</a>
			<a href="#">2</a>
			<a href="#">3</a>
			<a href="#"><img src="././resources/img/pageRightBtn.png"/></a>
		</div>
		<!-- 페이징 -->
	</div>
	<hr class="adminLine">
	<h2 class="adminQnaSubTitle">Q&A 답변 등록</h2>
	<form action="#" class="qnaWriteForm">
		<div class="form-group">
			<label class="formInfoTitle">Q&A 게시물번호</label>
			<input type="text" disabled="disabled" class="formQnaNum">
		</div>
		<div class="form-group">
			<label class="formInfoTitle">Q&A 제목</label>
			<input type="text" disabled="disabled" class="formQnaTitle">
		</div>
		<div class="form-group">
			<label class="formInfoTitle">Q&A 내용</label>
			<textarea disabled="disabled" class="formQnaTextArea"></textarea>
		</div>
		<div class="form-group">
			<label class="formInfoTitle" for="qnaReason">답변</label>
			<textarea id="qnaReason" class="formQnaTextArea formQnaAnswer"></textarea>
		</div>
		<button type="submit" class="edit-button">등록하기</button>
	</form>
</div> <!-- adminContentsBox -->
</div> <!-- adminContentsWrap -->
<footer></footer>
<div class="storeMoreInfoModalWrap">
	<div class="storeMoreInfoModal">
		<div class="storeMoreInfoModalHead">
			<img src="././resources/img/sujeAdminLogo.png" class="storeMoreInfoModalLogo">
			<div class="modalMainTitle">입점 여부 등록</div>
			<label class="modalStoreIdTitle">스토어 아이디</label>
			<input type="text" name="storeName" disabled="disabled" class="modalStoreIdInfo">
		</div>
		<h2 class="modalSubTitle">스토어 정보</h2>
		<hr class="adminLine">
		<div class="modalContentsBox">
			<label class="modalContentsTitle">스토어 카테고리</label> 
			<select class="modalCategory" disabled="disabled">
				<option value="dessert">디저트</option>
				<option value="snack">전통간식</option>
				<option value="petFood">반려동물식품</option>
				<option value="clothing">의류</option>
				<option value="jewelry">주얼리</option>
				<option value="handicraft">수공예품</option>
				<option value="accessory">잡화</option>
				<option value="homeLiving">홈리빙</option>
			</select>
		</div>
		<div class="modalContentsBox">
			<label class="modalContentsTitle">스토어명</label>
			<input type="text" name="storeName" disabled="disabled" class="modalContentsInfo">
			<label class="modalContentsTitle marginModalContentsTitle">사업자등록번호</label> 
			<input type="text" name="businessNumber" disabled="disabled" class="modalContentsInfo">
		</div>
		<div class="modalContentsBox">
			<label class="modalContentsTitle">이메일</label> 
			<input type="email" name="email" disabled="disabled" class="modalContentsInfo">
			<label class="modalContentsTitle marginModalContentsTitle">전화번호</label>
			<input type="tel" name="phoneNumber" disabled="disabled" class="modalContentsInfo">
		</div>
		<div class="modalContentsBox">
			<label class="modalContentsTitle">주소</label>
			<input type="text" name="address" disabled="disabled" class="modalContentsInfoLong">
		</div>
		<div class="modalContentsBox">
			<label class="modalContentsTitle">은행명</label>
			<select class="modalCategory" disabled="disabled">
				<option value="우리은행">우리은행</option>
				<option value="기업은행">기업은행</option>
				<option value="신한은행">신한은행</option>
				<option value="카카오뱅크">카카오뱅크</option>
			</select>
		</div>
		<div class="modalContentsBox">
			<label class="modalContentsTitle">계좌번호</label> 
			<input name="accountNumber" class="modalContentsInfo">
		</div>
		<h2 class="modalSubTitle">입점 여부 등록</h2>
		<hr class="adminLine">
		<form action="#">
			<div class="modalContentsBox">
				<label for="approvalStatus" class="modalContentsTitle">입점여부</label>
				<select id="approvalStatus" class="modalApprovalStatusInfo">
					<option selected="selected">====== 선택 ======</option>
					<option value="approve">승인</option>
					<option value="reject">반려</option>
				</select>
			</div>
			<div class="modalContentsBox">
				<label for="reason" class="modalContentsTitle">사유</label>
				<input type="text" id="reason" name="reason" class="modalReasonInfo">
			</div>
			<div class="modalBtnBox">
				<input type="submit" value="승인하기" class="modalSubmitBtn">
				<input type="button" value="취소" class="modalCloseBtn">
			</div>
		</form>
	</div> <!-- storeMoreInfoModal -->
</div> <!-- storeMoreInfoModalWrap -->
</body>
</html>
