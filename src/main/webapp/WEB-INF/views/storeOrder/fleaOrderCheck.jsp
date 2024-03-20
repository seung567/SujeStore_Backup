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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SUJE</title>
<link rel="stylesheet" href="./resources/css/storeOrder/fleaOrderCheck.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="./resources/js/storeOrder/deliveryModal.js"></script>
</head>
<body>
   <%@ include file="../../views/headerHtml/storeHeader.jsp"%>
   <div class="storeContentsWrap">
      <div class="storeSubMenuBox">
         <a href="#" class="storeProfileBox"><img
            src="./resources/img/basicProfileIconBig.png" /></a>
         <textarea rows="2" disabled="disabled" class="storeNameBox">STORE NAME AREA</textarea>
         <ul class="storeCategoryArea">
            <li class="storeFirstCategoryArea"><a href="#"
               class="storeFirstCategoryBtn">&nbsp;&nbsp;&nbsp;스토어 관리</a>
               <ul class="storeSecondCategoryArea">
                  <li class="storeSecondCategoryBtn "><a href="#"> <span>스토어
                           페이지 관리</span>
                  </a></li>
                  <li class="storeSecondCategoryBtn"><a href="#"> <span>스토어
                           공지 조회/수정</span>
                  </a></li>
                  <li class="storeSecondCategoryBtn"><a href="#"> <span>스토어
                           공지 등록</span>
                  </a></li>
                  <li class="storeSecondCategoryBtn"><a href="#"> <span>스토어
                           작품 조회/수정</span>
                  </a></li>
                  <li class="storeSecondCategoryBtn"><a href="#"> <span>스토어
                           작품 등록</span>
                  </a></li>
               </ul></li>
            <li class="storeFirstCategoryArea"><a href="#"
               class="storeFirstCategoryBtn">&nbsp;&nbsp;&nbsp;플리마켓 관리</a>
               <ul class="storeSecondCategoryArea">
                  <li class="storeSecondCategoryBtn"><a href="#"> <span>플리마켓
                           상품 조회/수정</span>
                  </a></li>
                  <li class="storeSecondCategoryBtn"><a href="#"> <span>플리마켓
                           상품 등록</span>
                  </a></li>
               </ul></li>
            <li class="storeFirstCategoryArea"><a href="#"
               class="storeFirstCategoryBtn checkedStateFirstCategory">&nbsp;&nbsp;&nbsp;주문
                  관리</a>
               <ul class="storeSecondCategoryArea">
                  <li class="storeSecondCategoryBtn"><a href="#"> <span>스토어
                           주문요청 관리</span>
                  </a></li>
                  <li class="storeSecondCategoryBtn "><a href="#"> <span>스토어
                           최종주문 조회</span>
                  </a></li>
                  <li class="storeSecondCategoryBtn checkedStateSecondCategory"><a
                     href="#"> <span>플리마켓 주문 조회</span>
                  </a></li>
               </ul></li>
            <li class="storeFirstCategoryArea"><a href="#"
               class="storeFirstCategoryBtn">&nbsp;&nbsp;&nbsp;정산 관리</a></li>
         </ul>
      </div>
      <!-- storeSubMenuBox -->
      <div class="storeContentsBox">
         <h1 class="title">플리마켓 주문 조회</h1>
         <hr class="hr">
         <div class="table-wrapper">
            <table>
               <thead>
                  <tr>
                     <th>주문번호</th>
                     <th>상품 내용</th>
                     <th>주문 수량</th>
                     <th>결제금액</th>
                     <th>주문일자</th>
                     <th>구매확정일자</th>
                     <th>구매확정일자</th>
                     <th>배송정보</th>
                  </tr>
               </thead>
               <tbody>
                  <tr>
                     <td>123456</td>
                     <td>빵빵이</td>
                     <td>1</td>
                     <td>11,900</td>
                     <td>2024-03-16</td>
                     <td>N</td>
                     <td>2024-03-16</td>
                     <td><button class="check-delivery">조회</button></td>
                  </tr>
                  <tr>
                     <td>123456</td>
                     <td>빵빵이</td>
                     <td>1</td>
                     <td>11,900</td>
                     <td>2024-03-16</td>
                     <td>N</td>
                     <td>2024-03-16</td>
                     <td><button class="check-delivery">조회</button></td>
                  </tr>
                  <tr>
                     <td>123456</td>
                     <td>빵빵이</td>
                     <td>1</td>
                     <td>11,900</td>
                     <td>2024-03-16</td>
                     <td>N</td>
                     <td>2024-03-16</td>
                     <td><button class="check-delivery">조회</button></td>
                  </tr>
                  <tr>
                     <td>123456</td>
                     <td>빵빵이</td>
                     <td>1</td>
                     <td>11,900</td>
                     <td>2024-03-16</td>
                     <td>N</td>
                     <td>2024-03-16</td>
                     <td><button class="check-delivery">조회</button></td>
                  </tr>
                  <tr>
                     <td>123456</td>
                     <td>빵빵이</td>
                     <td>1</td>
                     <td>11,900</td>
                     <td>2024-03-16</td>
                     <td>N</td>
                     <td>2024-03-16</td>
                     <td><button class="check-delivery">조회</button></td>
                  </tr>
                  <tr>
                     <td>123456</td>
                     <td>빵빵이</td>
                     <td>1</td>
                     <td>11,900</td>
                     <td>2024-03-16</td>
                     <td>N</td>
                     <td>2024-03-16</td>
                     <td><button class="check-delivery">조회</button></td>
                  </tr>
                  <tr>
                     <td>123456</td>
                     <td>빵빵이</td>
                     <td>1</td>
                     <td>11,900</td>
                     <td>2024-03-16</td>
                     <td>N</td>
                     <td>2024-03-16</td>
                     <td><button class="check-delivery">조회</button></td>
                  </tr>
                  <tr>
                     <td>123456</td>
                     <td>빵빵이</td>
                     <td>1</td>
                     <td>11,900</td>
                     <td>2024-03-16</td>
                     <td>N</td>
                     <td>2024-03-16</td>
                     <td><button class="check-delivery">조회</button></td>
                  </tr>
                  <!-- 추가적인 공지사항 행을 필요한 만큼 추가할 수 있습니다 -->
               </tbody>
            </table>
         </div>
      </div>
   </div>
   <!-- storeContentsBox -->
   </div>
   <!-- storeContentsWrap -->
   	<footer></footer>

   		<div>
			<jsp:include page="Modal/deliveryModal.jsp"></jsp:include>
		</div>
   
</body>
</html>