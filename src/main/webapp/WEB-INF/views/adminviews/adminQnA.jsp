<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>SUJE</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap"
	rel="stylesheet">
<link href="./resources/css/resetStyle.css" rel="stylesheet"
	type="text/css">
<link href="./resources/css/menuForm/subMenuStyle.css" rel="stylesheet"
	type="text/css">
<link href="./resources/css/admincss/adminQnA.css" rel="stylesheet"
	type="text/css">
</head>
<body>
	<%@ include file="../../views/headerHtml/adminHeader.jsp"%>
	<div class="adminContentsWrap">
		<div class="adminSubMenuBox">
			<ul class="adminCategoryArea">
				<li class="adminFirstCategoryArea"><a href="adminmanage.jsp"
					class="adminFirstCategoryBtn checkedStateFirstCategory">&nbsp;&nbsp;&nbsp;스토어
						입점 관리</a></li>
				<li class="storeFirstCategoryArea"><a href="adminpnt.jsp"
					class="adminFirstCategoryBtn">&nbsp;&nbsp;&nbsp;스토어 벌점 관리</a></li>
				<li class="adminFirstCategoryArea"><a href="adminQ&A.jsp"
					class="storeFirstCategoryBtn">&nbsp;&nbsp;&nbsp;Q&A 관리</a></li>
				<li class="adminFirstCategoryArea"><a
					href="adminstatistics.jsp" class="storeFirstCategoryBtn">&nbsp;&nbsp;&nbsp;통계</a>
				</li>
			</ul>
		</div>
		<!-- adminSubMenuBox -->
		<div class="adminContentsBox">
			<main class="manager_ac">
				<div class="Q&A history">
					<h2 class="h2">Q&A 관리</h2>
					<hr class="hr">
					<h2 class="h2">Q&A 내역</h2>

					<table class="qna-table">
						<thead>
							<tr>
								<th>Q&A 게시물번호</th>
								<th>제목</th>
								<th>작성일자</th>
								<th>답변일자</th>
								<th>답변관리자</th>
							</tr>
						</thead>
						<tbody>
							<!-- Q&A 내역이 표시될 내용 -->
						</tbody>
					</table>
					<div class="pageing">< 1 2 3 ></div>
					<!-- 페이징 -->
					<hr>

				</div>
				<div>
					<h2>Q&A 답변 등록</h2>
					<form action="QnAAction.jsp" method="post">
						<fieldset>
							<div class="form-group">
								<label for="QAnumber">Q&A 게시물번호</label> <input type="text"
									id="QAnumber" name="QAnumber">
							</div>
							<div class="form-group">
								<label for="QAcotent">Q&A 내용</label> <input type="text"
									id="QAcotent" name="QAcotent">
							</div>
							<div class="form-group">
								<label for="QAReason">답변</label>
								<textarea id="QAReason" name="QAReason" rows="4" cols="50"></textarea>
							</div>
						</fieldset>
						<button type="submit" class="edit-button">등록하기</button>
					</form>
				</div>
			</main>
		</div>
		<!-- adminContentsBox -->
	</div>
	<!-- adminContentsWrap -->
</body>
</html>
