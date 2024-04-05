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
<script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
$(function() {
	$(".idCheckBtn").click(function() {
		$.ajax({
			url: "storeIdcheck.do",
			type: "post",
			data: {s_id : $("input[name=s_id]").val()},
			dataType: "text",
			contentType:'application/x-www-form-urlencoded; charset=UTF-8',
			success: function(result) {
				if(result=="사용중인 아이디입니다.") {
					$('input[name="s_id"]').focus();
				}
				alert(result);
			},
			error: function(err) {
				alert("통신 에러가 발생했습니다 : "+err)
			}
		})
	});
});
</script>
<title>SUJE</title>
</head>
<body>
<%@ include file="../headerHtml/memberHeader.jsp" %>
<div class="contentsWrap">
	<div class="newStoreTitle">스토어 입점신청</div>
	<div class="mainLine"></div>
	<form action="newStore.do" method="post" class="newStoreArea">
		<label class="newStoreItemTitle">아이디</label>
		<input name="s_id" type="text" required="required" autofocus="autofocus" class="newStoreInfoInput"/>
		<button class="idCheckBtn">중복확인</button>
		<label class="newStoreItemTitle">비밀번호</label>
		<input name="s_pass" type="password" required="required" class="newStoreInfoInput"/>
		<label class="newStoreItemTitle">이메일</label>
		<input name="s_email" type="text" required="required" class="newStoreInfoInput"/>
		<label class="newStoreItemTitle">전화번호</label>
		<input name="s_tel" type="text" required="required" class="newStoreInfoInput"/>
		<label class="newStoreItemTitle">스토어명</label>
		<input name="s_name" type="text" required="required" class="newStoreInfoInput"/>
		<label class="newStoreItemTitle">스토어 카테고리</label>
		<select name="catem_code" class="newStoreSelectItem">
			<option selected="selected">=== 카테고리 선택 ===</option>
			<option value="1">디저트</option>
			<option value="2">전통간식</option>
			<option value="3">반려동물식품</option>
			<option value="4">의류</option>
			<option value="5">주얼리</option>
			<option value="6">수공예품</option>
			<option value="7">잡화</option>
			<option value="8">홈리빙</option>
		</select>
		<label class="newStoreItemTitle">주소</label>
		<input name="s_addr" type="text" required="required" class="newStoreLongInfoInput"/>
		<label class="newStoreItemTitle">사업자등록번호</label>
		<input name="s_bnum" type="text" required="required" class="newStoreLongInfoInput"/>
		<label class="newStoreItemTitle">은행명</label>
		<select name="s_bank" class="newStoreSelectItem">
			<option selected="selected">=== 은행 선택 ===</option>
			<option value="우리은행">우리은행</option>
			<option value="기업은행">기업은행</option>
			<option value="신한은행">신한은행</option>
			<option value="카카오뱅크">카카오뱅크</option>
		</select>
		<label class="newStoreItemTitle">계좌번호</label>
		<input name="s_acc" type="text" required="required" class="newStoreInfoInput"/>
		<input type="submit" value="입점신청" class="newStoreSubmitBtn" />
	</form>
	<div class="mainLine"></div>
</div> <!-- contentsWrap -->
<footer></footer>
</body>
</html>