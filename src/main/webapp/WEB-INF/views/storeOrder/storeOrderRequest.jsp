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
<link href="./resources/css/menuForm/subMenuStyle.css" rel="stylesheet"
   type="text/css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SUJE</title>
<link rel="stylesheet"
   href="./resources/css/storeOrder/storeOrderRequest.css" />
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
                  <li class="storeSecondCategoryBtn checkedStateSecondCategory"><a
                     href="#"> <span>스토어 최종주문 조회</span>
                  </a></li>
                  <li class="storeSecondCategoryBtn"><a href="#"> <span>플리마켓
                           주문 조회</span>
                  </a></li>
               </ul></li>
            <li class="storeFirstCategoryArea"><a href="#"
               class="storeFirstCategoryBtn">&nbsp;&nbsp;&nbsp;정산 관리</a></li>
         </ul>
      </div>
      <!-- storeSubMenuBox -->
      <div class="storeContentsBox">
         <h1 class="title">스토어 주문요청 관리</h1>
         <hr class="hr">
         <div class="container">
            <div class="orderList">
               <h2>주문자 목록</h2>
               <ul id="orderList">
                  <li class="orderItem" data-id="1">주문자 1</li>
                  <li class="orderItem" data-id="2">주문자 2</li>
                  <!-- Add more order items as needed -->
               </ul>
            </div>

            <div class="chatBox">
               <h2>주문 요청 내역</h2>
               <div id="chatMessages"></div>
               <div class="chatMessage senderMessage">주문자 1: 여기는 주문 내용입니다.</div>
               <div class="chatMessage receiverMessage">점주: 주문 내용에 대한 답변입니다.</div>
               <input type="text" id="messageInput" placeholder="텍스트를 입력하세요">
               <button id="sendMessageBtn">전송</button>
            </div>
         </div>
      </div>

   </div>
   <!-- storeContentsBox -->
   </div>
   <!-- storeContentsWrap -->
   	<footer></footer>
	      <!-- Modal 출력 부분 -->
      <div class="storeOrderModal">
         <div class="storeOrderModalBody">
            <!-- 상단 제목 부분 -->
            <div class="storeOrderModalTitle">
               <div class="logoImg">
                  <img width="100px" height="20px" alt=""
                     src="./resources/img/sujeStoreLogo.png" />
               </div>
               <h3 class="modalTitle">최종 주문서 등록</h3>
               <label class="modalNo">주문번호</label> 
               <input class="modalNo_textbox" type="text"/>
            </div>

            <!-- 메인 Content -->
            <div class="modalMainContent">
               <!-- Content 첫번째 열 -->
               <div class = "first">
                  <label class="categoryLabel" for="Cartegory">상품 카테고리</label>
                  <select>
                     <option selected="selected">==중분류==</option>
                     <option>1</option>
                     <option>2</option>
                     <option>3</option>
                     <option>4</option>
                  </select>
                  <select>
                     <option selected="selected">==소분류==</option>
                     <option>1</option>
                     <option>2</option>
                     <option>3</option>
                     <option>4</option>
                  </select>
               </div>
               <!-- Content 두번째 열 -->
               <div class = "secound">
                  <label class="orderCountLabel" for="orderCount">주문 수량</label> 
                  <input type="text" class="modal_textbox"/>
                  <label class="orderSizeLabel" for="orderSize">주문 사이즈</label> 
                  <input type="text" class="modal_textbox"/>
               </div>
               <!-- Content 세번째 열 -->
               <div class = "third">
                  <label class="orderAmountLabel" for="orderAmount">주문 금액</label> 
                  <input type="text" class="modal_textbox"/>
                  <label class="deliveryLabel" for="delivery">배송 형태</label> 
                  <select>
                     <option selected="selected">==선택==</option>
                     <option>배송</option>
                     <option>방문</option>
                  </select>
               </div>
               <!-- Content 네번째 열 -->
               <div class = "fourth">
                  <label class="requirementsLabel" for="requirements">요구 사항</label>
                  <textarea></textarea>
               </div>
               <!-- 확인 버튼 -->
				<div class="modalBtnBox">
				<input type="submit" value="등록하기" class="modalInputBtn">
				<input type="submit" value="취소" class="modalCancelBtn">
				</div>
            </div> <!-- modalMainContent -->
         </div> <!-- storeOrderModalBody -->
      </div> <!-- storeOrderModal -->
   
   
</body>
</html>