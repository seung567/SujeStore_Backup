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
<link href="./resources/css/main/mainRealTimeReviewStyle.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="./resources/js/main/mainRealTimeReviewModalJs.js"></script>
<title>SUJE</title>
</head>
<body>
<%@ include file="../headerHtml/memberHeader.jsp" %>
<div class="contentsWrap">
    <div class="contentsTitle">실시간 후기</div>
    <div class="contentsLine"></div>
    <div class="contentsReviewArea">
        <c:forEach var="review" items="${reviewList}">
        <table class="eachReviewTable">
                <tr>
                    <td rowspan="4" class="eachReviewImgTd"><div><img src="././resources/DB/photo_test/사진1.jpg"/></div></td>
                    <td class="eachReviewStoreProfileTd" colspan="3">
                        <img src="././resources/img/basicProfileIcon.png"/>
                        <span>STORE NAME</span>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="eachReviewPayNumTd">
                        <span>주문번호</span>
                        <button>${review.p_code}</button>
                    </td>
                    <td class="eachReviewStoreBtnTd"><a href="">스토어 바로가기</a></td>
                </tr>
                <tr>
                    <td colspan="3" class="eachReviewMemberIdTd"></td>
                </tr>
                <tr>
                    <td class="eachReviewScoreTd" colspan="3">
                        <img src="././resources/img/mainReviewStarImg.png"/>
                        <span>${review.RV_STAR}</span>
                        <img src="././resources/img/mainReviewThumbsUpImg.png"/>
                        <span>${review.RV_LIKE}</span>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" class="eachReviewContentsTd"><c:out value='${review.RV_CONTENT}'/></td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <div class="pageingArea">
                    <a href="#"><img src="././resources/img/pageLeftBtn.png" /></a>
                    <c:forEach var="i" begin="1" end="${pageTotalCount}" step="1">
                        <a href="adminQnA.do?page=${i}">${i}</a>
                    </c:forEach>
                    <a href="#"><img src="././resources/img/pageRightBtn.png" /></a>
                </div>
</div> <!-- contentsWrap -->
<footer></footer>
<!-- 모달 -->
<div class="finalOrderModalWrap">
    <div class="finalOrderModal">
        <%@ include file="./Modal/review.jsp" %>
    </div>
</div>
</body>
</html>
