<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap" rel="stylesheet">
<link href="./resources/css/resetStyle.css" rel="stylesheet" type="text/css">
<link href="./resources/css/menuForm/subMenuStyle.css" rel="stylesheet" type="text/css">
<link href="./resources/css/admin/adminpnt.css" rel="stylesheet" type="text/css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SUJE</title>
</head>
<body>
    <%@ include file="../../views/headerHtml/adminHeader.jsp"%>
    <div class="adminContentsWrap">
        <div class="adminSubMenuBox">
            <ul class="adminCategoryArea">
                <li class="adminFirstCategoryArea"><a href="adminmanage.jsp" class="adminFirstCategoryBtn checkedStateFirstCategory">&nbsp;&nbsp;&nbsp;스토어
                        입점 관리</a></li>
                <li class="storeFirstCategoryArea"><a href="adminpnt.jsp" class="adminFirstCategoryBtn">&nbsp;&nbsp;&nbsp;스토어 벌점 관리</a></li>
                <li class="adminFirstCategoryArea"><a href="adminQ&A.jsp" class="storeFirstCategoryBtn">&nbsp;&nbsp;&nbsp;Q&A 관리</a></li>
                <li class="adminFirstCategoryArea"><a href="adminstatistics.jsp" class="storeFirstCategoryBtn">&nbsp;&nbsp;&nbsp;통계</a></li>
            </ul>
        </div>
        <!-- sadminSubMenuBox -->
        <div class="adminContentsBox">
            <h1 class="adminTitle">스토어 벌점 관리</h1>
            <hr class="adminHr">
            <div class="adminSection">
                <h2 class="adminSubtitle">벌점 부여</h2>
                <form action="pntAction.jsp" method="post">
                    <fieldset>
                        <div class="idflied">
                            <label for="storeId" class="inputLabel">스토어 아이디</label>
                            <div class="searchBox">
                                <input type="text" id="storeId" name="storeId" class="inputField" placeholder="아이디 검색">
                                 <button type="submit" id="searchButton"> 
                                <img class="searchIcon" src="./resources/img/searchIcon.png" alt="검색 아이콘" width="20" height="20">
                                 </button>
                            </div>
                            <input type="text" id="searchResults" name="searchResults" class="searchResult" disabled>
                        </div>
                        <br>
                        부여 벌점 <input type="number" id="pntPoints" name="pntPoints" class="pntPoints"> 점 <br>
                        벌점 사유 <br>
                        <textarea id="pntReason" name="pntReason" class="pntReason" rows="4" cols="50"></textarea>
                        <br>
                        <button type="submit" class="submitButton">등록하기</button>
                        <hr class="adminHr">
                    </fieldset>
                </form>
            </div>
            <div class="adminSection">
                <h2 class="adminSubtitle">벌점 내역</h2>
                <table class="adminTable">
                    <thead>
                        <tr class="adminTableRow">
                            <th class="adminTableHeader">관리자 아이디</th>
                            <th class="adminTableHeader">스토어 아이디</th>
                            <th class="adminTableHeader">부여 벌점</th>
                            <th class="adminTableHeader" id="pntReasonCell">벌점 사유</th>
                            <th class="adminTableHeader">업데이트 일자</th>
                            <th class="adminTableHeader">누적 벌점 점수</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="adminTableRow">
                            <td>관리자1</td>
                            <td>스토어1</td>
                            <td>부여 벌점1</td>
                            <td>벌점 사유1</td>
                            <td>업데이트 일자1</td>
                            <td>누적 벌점 점수1</td>
                        </tr>
                        <tr class="adminTableRow">
                            <td>관리자2</td>
                            <td>스토어2</td>
                            <td>부여 벌점2</td>
                            <td>벌점 사유2</td>
                            <td>업데이트 일자2</td>
                            <td>누적 벌점 점수2</td>
                        </tr>
                        <!-- 추가적인 행들을 필요한 만큼 추가 -->
                    </tbody>
                </table>
                <div class="pageing">< 1 2 3 ></div>
            </div>
            <!-- adminContentsBox -->
        </div>
        <!-- adminContentsWrap -->
    </div>
</body>
</html>
