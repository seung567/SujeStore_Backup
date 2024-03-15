<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>관리자 페이지</title>
    <!-- 폰트링크 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">
    <!-- css 파일 연결 -->
    <link rel="stylesheet" href="../../resources/css/resetStyle.css" />
    <link rel="stylesheet" href="../../resources/css/managerinfo.css" />
</head>
<body>

<div class="admin-submenu">
    <div class="submenu">
        <div>스토어 입점 관리</div>
        <div>스토어 벌점 관리</div>
        <div>Q&A 관리</div>
        <div>통계</div>
    </div>

    <main class="manager_ac">
        <div class="Q&A history">
            <h2>Q&A 내역</h2>
            <table>
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
                    
                </tbody>
            </table>  
        </div>

        <div>
            <h2>Q&A 답변 등록</h2>
            <form action="QnAAction.jsp" method="post">
                <fieldset>
                    <label for="Q&Anum">Q&A 게시물번호:</label>
                    <input type="text" id="Q&Anumber" name="Q&Anumber" >
                    <br>
                    Q&A 내용: <input type="text" id="Q&Acotent" name="Q&Acotent">
                    <br>
                    답변: <br>
                    <textarea id="Q&AReason" name="Q&AReason" rows="4" cols="50"></textarea>
                </fieldset>
                <button type="submit" class="edit-button">등록하기</button>
            </form>
        </div>       
    </main>
</div>

</body>
</html>
