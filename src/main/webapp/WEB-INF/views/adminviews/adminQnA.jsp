<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SUJE</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap">
    <link href="./resources/css/resetStyle.css" rel="stylesheet" type="text/css">
    <link href="./resources/css/menuForm/subMenuStyle.css" rel="stylesheet" type="text/css">
    <link href="./resources/css/admincss/adminQnA.css" rel="stylesheet" type="text/css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript">
    $(function() {
        $('.adminCategoryArea li:last-child a').addClass('checkedStateFirstCategory');

        // qnaInfo.qna_code 클릭 시 getQnAinfo 실행
        $(".formQnaNum").click(function(event) {
            // qna 코드값 가져오기
            const qnaCode = $(this).text(); // 수정된 부분
            // getQnAinfo 실행하는 URL 생성
            const url = "getQnAinfo.do?qna_code=" + qnaCode;
           
            // 해당 URL로 이동
            window.location.href = url;
           
        });

        // 등록하기 버튼 클릭시 팝업창 실행 
        $(".edit-button").click(function(event) {
            alert("등록이 완료되었습니다.");
            event.preventDefault(); // 기본 동작 막기
        });
    });



</script>

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
                            <tr class="qnaTableRow" data-qna_id="${qna.qna_code}">
                                <td class="qnaTableRowNumber"><a class="formQnaNum">${qna.qna_code}</a></td> 
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
            <hr class="adminLine">
            <h2 class="adminQnaSubTitle">Q&A 답변 등록</h2>
            <form action="updateadmininfo.do" class="qnaWriteForm" method="post">
                <div class="form-group">
                    <label class="formInfoTitle">Q&A 게시물번호</label> 
                    <input type="text" disabled="disabled" class="formQnaNum" name="qna_code" value="${qnaInfo.qna_code}">
                    <input type="hidden" name="qna_code" value="${qnaInfo.qna_code}">
                </div>
                <div class="form-group">
                    <label class="formInfoTitle">Q&A 제목</label> 
                    <input type="text" disabled="disabled" class="formQnaTitle" name="qna_title" value="${qnaInfo.qna_title}">
                </div>
                <div class="form-group">
                    <label class="formInfoTitle">Q&A 내용</label>
                    <textarea disabled="disabled" class="formQnaTextArea" name="qna_content">${qnaInfo.qna_content}</textarea>
                </div>
                <div class="form-group">
                    <label class="formInfoTitle" for="qnaReason">답변</label>
                    <textarea id="qnaReason" class="formQnaTextArea formQnaAnswer" name="qna_reply">${qnaInfo.qna_reply}</textarea>
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