<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

// 각자의 변수에 테스트 하고자 하는 페이지 입력
// 유승민 테스트 페이지 설정
 String ysm = "customer/customerMyPage";
 
//이수정 테스트 페이지 설정
 String lyj = "customerMyPage";
 
//장경희 테스트 페이지 설정
 String jkh = "storeNotiInfo";
 
//최수빈 테스트 페이지 설정
 String csb = "customerMyPage";
 
//김동현 테스트 페이지 설정
 String kdh = "customerMyPage";
 
//이정석 테스트 페이지 설정
 String ejs = "adminviews/adminQnA";
 
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

</head>

<body>


<!-- index page 시작점 -->

	<!-- 유승민 -->
	<h4>유승민 테스트 버튼</h4>
	 <a href=testPageSet.do?page=ysm&site=<%=ysm %>>클릭</a>

	<!-- 이수정 -->
	<h4>이수정 테스트 버튼</h4>
	<a href=testPageSet.do?page=lyj&site=<%=lyj %>>클릭</a>

	<!-- 장경희 -->
	<h4>장경희 테스트 버튼</h4>
	<a href=testPageSet.do?page=jkh&site=<%=jkh %>>클릭</a>

	<!-- 최수빈 -->
	<h4>최수빈 테스트 버튼</h4>
	<a href=testPageSet.do?page=csb&site=<%=csb %>>클릭</a>

	<!-- 김동현 -->
	<h4>김동현 테스트 버튼</h4>
	<a href=testPageSet.do?page=kdh&site=<%=kdh %>>클릭</a>

	<!-- 이정석 -->
	<h4>이정석 테스트 버튼</h4>
	<a href=testPageSet.do?page=ejs&site=<%=ejs %>>클릭</a>

 
</body>
</html>
