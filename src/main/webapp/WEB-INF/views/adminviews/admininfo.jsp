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
<link href="./resources/css/menuForm/subMenuStyle.css" rel="stylesheet" type="text/css">
<link href="./resources/css/admincss/admininfo.css" rel="stylesheet" type="text/css">
<title>SUJE</title>
</head>
<body>
<%@ include file="../../views/headerHtml/adminHeader.jsp" %>
<div class="adminContentsWrap">
<div class="adminSubMenuBox">
	<ul class="adminCategoryArea">
		<li class="adminFirstCategoryArea">
			<a href="#" class="adminFirstCategoryBtn">&nbsp;&nbsp;&nbsp;스토어 입점 관리</a>
		</li>
		<li class="storeFirstCategoryArea">
			<a href="#" class="adminFirstCategoryBtn">&nbsp;&nbsp;&nbsp;스토어 벌점 관리</a>
		</li>
		<li class="adminFirstCategoryArea">
			<a href="#" class="storeFirstCategoryBtn">&nbsp;&nbsp;&nbsp;Q&A 관리</a>
		</li>
	</ul>
</div> <!-- adminSubMenuBox -->
<div class=" adminContentsBox">
    <div class="account-title">계정 정보</div>
    <hr> 
    <div class="account-form">
        <form action="#">
            <div class="form-group">
                <label class="form-title" for="username">아이디</label>
                <input type="text" id="username" name="username" disabled="disabled">
            </div>
            <div class="form-group">
                <label class="form-title" for="password">비밀번호</label>
                <input type="password" id="password" name="password">
            </div>
            <div class="form-group">
                <label class="form-title" for="name">이름</label>
                <input type="text" id="name" name="name">
            </div>
            <div class="form-group">
                <label class="form-title" for="email">이메일</label>
                <input type="email" id="email" name="email">
            </div>
            <div class="form-group">
                <label class="form-title" for="phone">전화번호</label>
                <input type="tel" id="phone" name="phone">
            </div>
            <button type="submit">수정하기</button>
        </form>
    </div>
</div> <!-- adminContentsBox adminacBox -->
</div> <!-- adminContentsWrap -->
<footer></footer>
</body>
</html>
