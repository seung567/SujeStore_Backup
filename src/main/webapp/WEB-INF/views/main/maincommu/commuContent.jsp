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
<link href="./resources/css/main/maincommu/commuContent.css" rel="stylesheet" type="text/css">
<title>SUJE</title>


</head>
<body>
	<%@ include file="../../headerHtml/memberHeader.jsp"%>
	<div class="contentsWrap">
		<div class="contents">
			<div class="postCategory">
				<span>전체</span>
				<img class="postCategoryArrow" src="./resources/img/mainSubMenuBtn.png">
				<span>궁금해요</span>
			</div>
			<!-- postCategory -->
			<div class="postbar"></div>
			<div class="postTitle">
				<textarea class="postTitleValue" disabled="disabled">이거 디자인 도용 아닌가요?</textarea>
			</div>
			<div class="postwriterArea">
				<img class="postwriterProfile" src="./resources/img/basicProfileIcon.png">
				<span class="postwriterNickname">aaa123</span>
				<span class="postDate">
					<input class="postDateValue" value="2024/03/20 12:00" disabled="disabled">
				</span>
				<button class="postSubmenu">
					<img src="./resources/img/commuCommentSubmenu.png">
				</button>
				<!-- <button class="commentDetailBtn" >게시글 삭제하기</button>
				<button class="commentDetailBtn" >게시글 수정하기</button> -->
				<div class="postDetailBtn-container" style="display: inline-table;">
			   		<button class="postDetailBtn">게시글 삭제하기</button>
			   		<button class="postDetailBtn">게시글 수정하기</button>
				</div>
			</div>
			<!-- postwriterArea -->
			
			<div class="postbar"></div>
			<div class="postMainImg">
				<img alt="POST 사진" src="./resources/img/commuTestimage.png">
			</div>
			<div class="postContent">
			제가 취미로 인스타그램에 케잌 디자인해서 올렸던 디자인이 버젓이 업체 작품 피드에 올라와있네요;;; 
			이런적은 처음이라 굉장히 당황스러운데... 스토어 쪽에 연락드려야 할까요??
			</div>
			
			<div class="postEtc">
				<img src="./resources/img/commViewsIcon.png">
				<span class="postViewsNum">10</span>
				<button >
					<img src="./resources/img/commLikeAfterIcon.png">
				</button>
				<span class="postLikeNum">2</span>
				<img src="./resources/img/commCommentIcon.png">
				<span class="postCommentNum">2</span>
			</div>
			<!-- postEtc -->
			
			<div class="postbar"></div>
			<div class="myComment">
				<div class="writerProfile">
<!--마이페이지링크 -->	<a href="#"> 
						<img class="postwriterProfile" src="./resources/img/basicProfileIcon.png">
					</a>
					<span class="myNickname">abc123</span>
				</div>
				<textarea class="myCommentText" placeholder="댓글을 남겨보세요"></textarea>
				<button class="myCommentBtn">작성</button>			
			</div>
			<!-- myComment -->
			
			<div class="postCommentAll">
				<div class="postComment">
					<div class="commentWriterArea">
						<div class="commentwriterProfile">
							<img class="postwriterProfile" src="./resources/img/basicProfileIcon.png">
							<span class="commentwriterNickname">abc123</span>
							<span class="commentDate">2024-03-20  13:00</span>
							<button class="commentsubmenu">
								<img src="./resources/img/commuCommentSubmenu.png">
							</button>
						</div>
						<!-- commentwriterProfile -->
					</div>
					<!-- commentWriterArea -->
					<div class="postCommentText">
					일반 고객이 준 디자인 그대로 제작되는거라 아마 내려달라고 하기는 어려울 것 같네요.
					</div>
					<button class="commentDetailBtn">댓글 삭제하기</button>
				</div>
				<!-- postComment -->
				<div class="postComment">
					<div class="commentWriterArea">
						<div class="commentwriterProfile">
							<img class="postwriterProfile" src="./resources/img/basicProfileIcon.png">
							<span class="commentwriterNickname">abc123</span>
							<span class="commentDate">2024-03-20  13:00</span>
							<button class="commentsubmenu">
								<img src="./resources/img/commuCommentSubmenu.png">
							</button>
						</div>
						<!-- commentwriterProfile -->
					</div>
					<!-- commentWriterArea -->
					<div class="postCommentText">
					일반 고객이 준 디자인 그대로 제작되는거라 아마 내려달라고 하기는 어려울 것 같네요.
					</div>
					<button class="commentDetailBtn">댓글 삭제하기</button>
				</div>
				<!-- postComment -->
			</div>
			<!-- postCommentAll -->	
			<div class="postbar"></div>
		</div>
		<!-- contents -->
		
		
		<div class="popupBg" style="display: none;">
			<div class="commentPopupWrap" style="display: none;">
				<div class="commentReportPopupTitle popupTitle">댓글을 신고하시겠습니까?</div>
				<div class="popupBtnArea">
					<button class="commentReportBtn okBtn popupBtn">확인</button>
					<button class="cancellBtn popupBtn">취소</button>
				</div>
			</div> 
			
			<!-- 댓글 신고 확인 -->
			<div class="commentReportOKPopupWrap popupWrap" style="display: none;">
				<div class="commentReportOKPopupTitle popupTitle">댓글이 신고되었습니다.</div>
				<div class="popupBtnArea popupOneBtnArea">
					<button class="cancellBtn popupBtn">확인</button>
				</div>
			</div> 
			
			<!-- 댓글 신고 완료 -->
			<div class="commentDeletePopupWrap popupWrap" style="display: none;">
				<div class="commentDeletePopupTitle popupTitle">댓글을 삭제하시겠습니까?</div>
				<div class="popupBtnArea">
					<button class="commentDeleteBtn okBtn popupBtn">확인</button>
					<button class="cancellBtn popupBtn">취소</button>
				</div>
			</div> 
			
			<!-- 댓글 삭제 확인 -->
			<div class="commentDeleteOKPopupWrap popupWrap" style="display: none;">
				<div class="commentDeleteOKPopupTitle popupTitle">댓글이 삭제되었습니다.</div>
				<div class="popupBtnArea popupOneBtnArea">
					<button class="cancellBtn popupBtn">확인</button>
				</div>
			</div> 
			
			<!-- (댓글 삭제 완료) 수정 필요 -->
			<!-- <div class="comingSoonWrap popupWrap" style="display: none;">
				<div class="comingSooTitle popupTitle">COMING SOON</div>
				<div class="popupBtnArea popupOneBtnArea">
					<button class="cancellBtn popupBtn">확인</button>
				</div>
			</div>  -->
			<!-- comingSoon -->
		</div>
		<!-- popupBg -->
		
		
	</div>
	<!-- contentsWrap -->
<footer></footer>
</body>
</html>