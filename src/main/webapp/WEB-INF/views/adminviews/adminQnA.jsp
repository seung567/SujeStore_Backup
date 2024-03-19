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
</body>
</html>
