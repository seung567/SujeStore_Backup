<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<link href="./resources/css/admincss/adminQnA.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<%
	String pageTotalCount = (String) session.getAttribute("pageTotalCount");
String adminId = (String) session.getAttribute("mainId");
%>
<script type="text/javascript">
	$(function() {
		$('.adminCategoryArea li:last-child a').addClass(
				'checkedStateFirstCategory');
	});
</script>
<title>SUJE</title>
</head>
<body>
	<%@ include file="../../views/headerHtml/adminHeader.jsp"%>
	<div class="adminContentsWrap">
		<%@ include file="../../views/headerHtml/adminSubMenuForm.jsp"%>
		<div class="adminContentsBox">
			<h2 class="adminQnaMainTitle">Q&A 관리</h2>
			<hr class="adminLine">
			<h2 class="adminQnaSubTitle">Q&A 내역</h2>
			<div class="adminQnaHistory">
				<table class="qnaTable">
					<thead>
						<tr class="qnaTableRow">
							<th>Q&A 게시물번호</th>
							<th>작성자</th>
							<th>제목</th>
							<th>작성일자</th>
							<th>답변일자</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="qna" items="${QnAList}">
							<tr class="qnaTableRow">
								<td class="qnaTableRowNumber"><a href="#">${qna.qna_code}</a></td>
								<td>${qna.m_id}</td>
								<td>${qna.qna_title}</td>
								<td>${qna.qna_qdate}</td>
								<td>${qna.qna_adate}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="pageingArea">
					<a href="#"><img src="././resources/img/pageLeftBtn.png" /></a>
					<c:forEach var="i" begin="1" end="${pageTotalCount}" step="1">
						<a href="adminQnA.do?page=${i}">${i}</a>
					</c:forEach>
					<a href="#"><img src="././resources/img/pageRightBtn.png" /></a>
				</div>
				<!-- 페이징 -->
			</div>
			<hr class="adminLine">
			<h2 class="adminQnaSubTitle">Q&A 답변 등록</h2>
			<form action="#" class="qnaWriteForm">
				<div class="form-group">
					<label class="formInfoTitle">Q&A 게시물번호</label> <input type="text"
						disabled="disabled" class="formQnaNum">
				</div>
				<div class="form-group">
					<label class="formInfoTitle">Q&A 제목</label> <input type="text"
						disabled="disabled" class="formQnaTitle">
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
		</div>
		<!-- adminContentsBox -->
	</div>
	<!-- adminContentsWrap -->
	<footer></footer>
</body>
</html>
