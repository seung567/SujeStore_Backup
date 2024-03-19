<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap"
	rel="stylesheet">
<link href="./resources/css/resetStyle.css" rel="stylesheet"
	type="text/css">
<link href="./resources/css/main/mainLoginStyle.css" rel="stylesheet"
	type="text/css">
<link href="./resources/css/main/maincummu/cummuwrite.css"
	rel="stylesheet" type="text/css">
<title>SUJE</title>
</head>
<body>
	<%@ include file="../../headerHtml/memberHeader.jsp"%>
	<div class="contentsWrap">
		<h2 class="writeTitle">글쓰기</h2>
		<hr class="writeHr">
		<form action="postAction.jsp" method="post"
			enctype="multipart/form-data" class="writeForm">
			<div class="categoryLabel">
				<label for="category" class="inputLabel">카테고리</label> <select
					id="category" name="category" class="selectBox">
					<option value="curious">궁금해요</option>
					<option value="recommend">추천해요</option>
					<option value="tip">꿀팁공유</option>
					<option value="behind">비하인드</option>
					<option value="daily">일상</option>
				</select>
			</div>
			<div class="titleLabel">
				<label for="title" class="inputLabel">제목</label> <input type="text"
					id="title" name="title" class="inputField">
			</div>
			<div class="imageContainer">
				<img src="./resources/img/cummuupload.png" alt="이미지 1"> <img src="./resources/img/cummuupload.png"
					alt="이미지 2"> <img src="./resources/img/cummuupload.png" alt="이미지 3">
			</div>
			<button type="button" id="loadImage" class="loadButton">불러오기</button>
			<div class="contentLabel">
				<label for="content" class="inputLabel">내용</label>
				<textarea id="content" name="content" rows="10" cols="50"
					class="textField"></textarea>
			</div>
			<button type="submit" class="submitButton">등록하기</button>
		</form>
		<hr class="writeHr">
	</div>
	<!-- contentsWrap -->
	<footer></footer>
</body>
</html>
