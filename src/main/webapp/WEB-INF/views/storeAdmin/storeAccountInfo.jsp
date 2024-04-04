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
<link rel="stylesheet" href="./resources/css/storeAdmin/storeAccountInfo.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
$(function(){
    var selectedBank = "${vo.s_bank}";
    $('#bankAccount option').each(function() {
        if ($(this).text() === selectedBank + "은행") {
            $(this).prop('selected', true);
        }
    });
});
</script>
</head>
<body>
<%@ include file="../../views/headerHtml/storeHeader.jsp" %>
<div class="storeContentsWrap">
<jsp:include page="storeSubMenuBar.jsp"></jsp:include>
		<div class="storeContentsBox">
			<h1 class="store_mainTitle">계정 정보</h1>
			<hr/>

			<form action="updateAccount.do" method="POST" class="storeAcc_mainInfo">
				
				<label class="storeAcc_subTitle">아이디</label> 
				<input type="text" name="s_id"required="required" autofocus="autofocus" class="storeAcc_textbox1" value="${vo.s_id}"/>

				<label class="storeAcc_subTitle">비밀번호</label> 
				<input type="password" id="s_pass" name="s_pass" required="required" class="storeAcc_textbox1" value="${vo.s_pass}" /> 
				
				<label class="storeAcc_subTitle">이메일</label> 
				<input type="text" id="s_email" name="s_email" required="required" class="storeAcc_textbox1" value="${vo.s_email}"/> 
				
				<label class="storeAcc_subTitle">전화번호</label> 
				<input type="text" id="s_tel" name="s_tel" required="required" class="storeAcc_textbox1" value="${vo.s_tel}"/> 
				
				<label class="storeAcc_subTitle">주소</label> 
				<input type="text" id="s_addr" name="s_addr" required="required" class="storeAcc_textbox2" value="${vo.s_addr}" /> 
				
				<label class="storeAcc_subTitle">사업자등록번호</label> 
				<input type="text" id="s_bnum" name="s_bnum" required="required" class="storeAcc_textbox2" value="${vo.s_bnum}"/> 
				
				<label class="storeAcc_subTitle">은행명</label> 
					<select	id="bankAccount" name="s_bank" class="storeAcc_selectBox">
								<option value="">은행 선택</option>
								<option value="우리">우리은행</option>
								<option value="농협">농협은행</option>
								<option value="기업">기업은행</option>
								<option value="신한">신한은행</option>
								<option value="카카오">카카오은행</option>
					</select> 
				<label class="storeAcc_subTitle">계좌번호</label> 
				<input type="text" id="s_acc" name="s_acc" required="required" class="storeAcc_textbox2" value="${vo.s_acc}"/> 
				<button type="submit" class="submitBtn" name="submitBtn">수정하기</button>
			</form>
		</div> <!-- storeContentsBox -->
	</div> <!-- storeContentsWrap -->
	<footer></footer>
</body>
</html>