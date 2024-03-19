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
<link href="./resources/css/main/mainNewMemberStyle.css" rel="stylesheet" type="text/css">
<title>SUJE</title>
</head>
<body>
<%@ include file="../headerHtml/memberHeader.jsp" %>
<div class="contentsWrap">
	<div class="newMemberTitle">회원가입</div>
	<div class="mainLine"></div>
	<form action="#" class="newMemberArea">
		<label class="newMemberItemTitle">아이디</label>
		<input type="text" required="required" autofocus="autofocus" class="newMemberInfoInput"/>
		<button class="idCheckBtn">중복확인</button>
		<label class="newMemberItemTitle">비밀번호</label>
		<input type="password" required="required" class="newMemberInfoInput"/>
		<label class="newMemberItemTitle">이름</label>
		<input type="text" required="required" class="newMemberInfoInput"/>
		<label class="newMemberItemTitle">전화번호</label>
		<input type="text" required="required" class="newMemberInfoInput"/>
		<label class="newMemberItemTitle">이메일</label>
		<input type="text" required="required" class="newMemberInfoInput"/>
		<label class="newMemberItemTitle">생년월일</label>
		<input type="text" required="required" class="newMemberInfoInput"/>
		<label class="newMemberItemTitle">성별</label>
		<div class="newMemberSexArea">
			<input type="radio" id="newMemberMan" class="newMemberSexInput" name="m_sex"><label for="newMemberMan" class="newMemberSexTitle">남성</label>
			<input type="radio" id="newMemberWoman" class="newMemberSexInput" name="m_sex"><label for="newMemberWoman" class="newMemberSexTitle">여성</label>
		</div>
		<input type="submit" value="회원가입" class="newMemberSubmitBtn" />
	</form>
	<div class="mainLine"></div>
</div> <!-- contentsWrap -->
<footer></footer>
</body>
</html>