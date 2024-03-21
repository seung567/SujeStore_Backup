<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="./resources/css/resetStyle.css" />
<link rel="stylesheet"
	href="./resources/css/storeOrder/Modal/deliveryModal.css" />
</head>
<body>
     <div class="deliveryModal">
         <div class="deliveryModalBody">
            <!-- 상단 제목 부분 -->
            <div class="deliveryModalTitle">
               <div class="logoImg">
                  <img width="100px" height="20px" alt=""
                     src="./resources/img/sujeStoreLogo.png" />
               </div>
               <h3 class="deliverymodalTitle">배송정보 조회</h3>
               <label class="deliverymodalNo">주문번호</label> <input class="textbox" type="text" />
            </div>

            <!-- 메인 Content -->
            <div class="deliverymodalMainContent">
            
               <!-- Content 첫번째 열 -->
               <div class = "deliveryfirst">
                  <label class="recipientLabel" for="recipient">수령자 명</label> 
                  <input type="text" class="textboxMid"/>
                  <label class="recipientTelLabel" for="recipientTel">수령자 전화번호</label> 
                  <input type="text" class="textboxMid"/>
               </div>
               
               <!-- Content 두번째 열 -->
               <div class = "deliverysecound">
                  <label class="deliveryAddrLabel" for="deliveryAddr">배송 주소</label> 
                  <input type="text" class="textboxLong"/>
               </div>
               
               <!-- Content 세번째 열 -->
               <div class = "deliverythird">
                  <label class="deliveryMemoLabel" for="deliveryMemo">배송 메모</label> 
                  <input type="text" class="textboxLong"/>
               </div>
               
               <!-- Content 네번째 열 -->
               <div class = "deliveryfourth">
                  <label class="deliveryStateLabel" for="deliveryState">배송 상태</label> 
                  <input type="text" class="textboxShort" value="발송 전"/>
                  <input type="text" class="textboxShort1" value="발송처리"/>
                  <label class="recipientLabel" for="recipient">배송 일자</label> 
                  <input type="text" class="textboxMid1" value="2023-03-19"/>
               </div>
               
               <!-- 확인 버튼 -->
				<div class="deliverymodalBtnBox">
				<input type="submit" value="확인" class="deliverymodalSubmitBtn">
				</div>
            </div> <!-- modalMainContent -->
         </div> <!-- storeOrderModalBody -->
      </div> <!-- storeOrderModal -->

</body>
</html>