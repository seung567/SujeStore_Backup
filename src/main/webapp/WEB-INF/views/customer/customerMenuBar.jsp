<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
	
 	Object obj = session.getAttribute("mainId");
	if(obj == null){
		response.sendRedirect("LoginForm.jsp");
		return;
	}
	
	String user = (String)obj; 
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./resources/css/resetStyle.css" />
<link rel="stylesheet" href="./resources/css/customer/customerMenuBar.css" />
<script type="text/javascript"
	src="./resources/js/customer/customerMenuBar.js"></script>
</head>
<body>
		<div class="mainContentleft">
			<div>
				<img width=120px height=120px alt="" src="./resources/img/basicProfileIconBig.png">
			</div>
			<div><%=user %></div>

			
			<div class="subTitle mypagebtn">
				<a href="customerMyPage.do?id=<%=user %>">마이페이지</a>
			</div>
			
			<div class="subTitle cardInsert">
				<a href="cardInfomation.do?id=<%=user %>">카드 등록/수정</a>
			</div>
			
			<div class="subTitle accountInsert"><a href="">계좌 등록/수정</a></div>
			<div class="subTitle orderList"><a href="">주문 내역 조회</a></div>
			<div class="subTitle reviews"><a href="">후기 작성</a></div>
			<div class="subTitle sujeTalk"><a href="">SUJE 톡톡</a></div>
			<div class="subTitle qna"><a href="">Q&A 작성</a></div>
		</div>
</body>
</html>