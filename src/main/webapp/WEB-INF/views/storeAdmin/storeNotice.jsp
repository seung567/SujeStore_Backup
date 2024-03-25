<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap"
	rel="stylesheet">
<link href="./resources/css/resetStyle.css" rel="stylesheet"
	type="text/css">
<link href="./resources/css/menuForm/subMenuStyle.css" rel="stylesheet" type="text/css"> 
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script type="text/javascript">
	
 $(function() {
	    $(".noticeListDetail").click(function() {
	        // 클릭한 공지 번호와 스토어 아이디를 가져옵니다.
	        const notiNum = $(this).find("td:first-child").text();
	        const id = $(this).data("s_id");  // JSP 코드를 사용하여 스토어 아이디를 가져옵니다.
	        
	        // 공지 번호와 스토어 아이디를 포함하여 URL을 구성합니다.
	        const url = "getNotiInfo.do?notiNum=" + notiNum + "&id=" + id;
	        
	        // 새로운 URL로 이동합니다.
	        location.href = url;
	    });
	});
 
</script>


<title>SUJE</title>
<link rel="stylesheet" href="./resources/css/storeAdmin/storeNotice.css" />
</head>
<body>
	<%@ include file="../../views/headerHtml/storeHeader.jsp"%>
	<div class="storeContentsWrap">
	 <jsp:include page="storeSubMenuBar.jsp"></jsp:include>
		<div class="storeContentsBox">
			<h1 class="title">스토어 공지 조회/수정</h1>
			<hr class="hr">
			<div class="table-wrapper" >
				<table name="noticeList">
					<thead>
						<tr>
							<th >공지 번호</th>
							<th >공지 유형</th>
							<th >공지 내용</th>
							<th >등록일자</th>
							<th >수정일자</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${StoreNoticeList }" var="listAll">
							<tr class="noticeListDetail" data-s_id="${listAll.s_id}">
								<td>${listAll.noti_code }</td>
								<td>${listAll.notit_code }</td>
								<td>${listAll.noti_content }</td>
								<td>${listAll.notir_date }</td>
								<td>${listAll.notim_date }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<br /> <br />
			<hr class="hr">
			<h1 class="store_mainTitle">스토어 공지 수정</h1>

			<c:if test="${not empty getListVO}">
				<form class="store_mainInfo">
					<div class="store_subCategory">
						<input type="hidden" name="id" value= "${s_id}">
						<label class="store_subTitle">공지 유형</label> 
						<select	class="notiInfo_selectBox" name="notit_code">
							<option value="${getListVO.notit_code}">${getListVO.notit_code}</option>
							<option value="1">공지사항</option>
							<option value="2">배송안내</option>
							<option value="3">주문안내</option>
						</select>
					</div>
					<div class="store_subCategory">
						<label class="store_subTitle">공지 작성 내용</label><br />
						<textarea class="notiInfo_content" name="noti_content">${getListVO.noti_content}</textarea>
					</div>
					<button type="submit" class="submitBtn" name="submitBtn">등록하기</button>
				</form>
			</c:if>
			<c:if test="${empty getListVO}">
				<form class="store_mainInfo">
					<div class="store_subCategory">
						<label class="store_subTitle">공지 유형</label> <select
							class="notiInfo_selectBox" name="notit_code">
							<option value="0">======선택======</option>
							<option value="1">공지사항</option>
							<option value="2">배송안내</option>
							<option value="3">주문안내</option>
						</select>
					</div>
					<div class="store_subCategory">
						<label class="store_subTitle">공지 작성 내용</label><br />
						<textarea class="notiInfo_content" name="noti_content">내용을 입력하세요</textarea>
					</div>
					<button type="submit" class="submitBtn" name="submitBtn">등록하기</button>
				</form>
			</c:if>
		</div>

	</div>
	<!-- storeContentsBox -->
	</div>
	<!-- storeContentsWrap -->
	<footer></footer>
</body>
</html>