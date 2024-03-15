<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>벌점 관리</title>
</head>
<body>
	<div class="admin-submenu">
        <div class="submenu">
            <div>스토어 입점 관리</div>
            <div>스토어 벌점 관리</div>
            <div>Q&A 관리</div>
            <div>통계</div>
        </div>
	<h1>스토어 벌점 관리</h1>

	<div>

		<h2>벌점 부여</h2>
		<form action="pntAction.jsp" method="post">
			<fieldset>
				<label for="storeId">스토어 아이디:</label> <input type="text"
					id="storeId" name="storeId" placeholder="아이디 검색">
				<div id="searchResults"></div>
				부여 벌점: <input type="number" id="pntPoints" name="pntPoints">
				점 <br> 벌점 사유: <br>
				<textarea id="pntReason" name="pntReason" rows="4" cols="50"></textarea>
			</fieldset>
		</form>
	</div>

	<h2>벌점 내역</h2>
	<table>
		<thead>
			<tr>
				<th>관리자 아이디</th>
				<th>스토어 아이디</th>
				<th>부여 벌점</th>
				<th>벌점 사유</th>
				<th>업데이트 일자</th>
				<th>누적 벌점 점수</th>
			</tr>
		</thead>
		<tbody>

		</tbody>
	</table>

</body>
</html>
