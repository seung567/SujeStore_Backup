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
<link href="./resources/css/main/mainNewStoreStyle.css" rel="stylesheet" type="text/css">
<title>SUJE</title>
</head>
<body>
<%@ include file="../headerHtml/memberHeader.jsp" %>
<div class="contentsWrap">
	<div class="newStoreTitle">스토어 입점신청</div>
	<div class="mainLine"></div>
	<form action="#" class="newStoreArea">
		<label class="newStoreItemTitle">아이디</label>
		<input type="text" required="required" autofocus="autofocus" class="newStoreInfoInput"/>
		<button class="idCheckBtn">중복확인</button>
		<label class="newStoreItemTitle">비밀번호</label>
		<input type="password" required="required" class="newStoreInfoInput"/>
		<label class="newStoreItemTitle">이메일</label>
		<input type="text" required="required" class="newStoreInfoInput"/>
		<label class="newStoreItemTitle">전화번호</label>
		<input type="text" required="required" class="newStoreInfoInput"/>
		<label class="newStoreItemTitle">스토어명</label>
		<input type="text" required="required" class="newStoreInfoInput"/>
		<label class="newStoreItemTitle">스토어 카테고리</label>
		<select class="newStoreSelectItem">
			<option selected="selected">=== 카테고리 선택 ===</option>
			<option>디저트</option>
			<option>전통간식</option>
			<option>반려동물식품</option>
			<option>의류</option>
			<option>주얼리</option>
			<option>수공예품</option>
			<option>잡화</option>
			<option>홈리빙</option>
		</select>
		<label class="newStoreItemTitle">주소</label>
		<input type="text" required="required" class="newStoreLongInfoInput"/>
		<label class="newStoreItemTitle">사업자등록번호</label>
		<input type="text" required="required" class="newStoreLongInfoInput"/>
		<label class="newStoreItemTitle">은행명</label>
		<select class="newStoreSelectItem">
			<option selected="selected">=== 은행 선택 ===</option>
			<option>우리은행</option>
			<option>기업은행</option>
			<option>신한은행</option>
			<option>카카오뱅크</option>
		</select>
		<label class="newStoreItemTitle">계좌번호</label>
		<input type="text" required="required" class="newStoreInfoInput"/>
		<input type="submit" value="입점신청" class="newStoreSubmitBtn" />
	</form>
	<div class="mainLine"></div>
</div> <!-- contentsWrap -->
<footer></footer>
</body>
</html>