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
<link href="./resources/css/main/mainLoginStyle.css" rel="stylesheet" type="text/css">
<title>SUJE</title>
</head>
<body>
<%@ include file="../headerHtml/memberHeader.jsp" %>
<div class="contentsWrap">
	<form action="#" class="loginArea">
		<div class="loginTitle">로그인</div>
		<label class="loginInfoTitle">아이디</label>
		<input type="text" required="required" autofocus="autofocus" placeholder="SUJE123" class="loginInfoInput"/>
		<label class="loginInfoTitle">비밀번호</label>
		<input type="password" required="required" placeholder="비밀번호를 입력해주세요" class="loginInfoInput"/>
		<input type="submit" value="개인 회원 로그인" class="memberLoginBtn" />
		<input type="submit" value="스토어 회원 로그인" class="storeLoginBtn" />
	</form>
</div> <!-- contentsWrap -->
<footer></footer>
</body>
</html>