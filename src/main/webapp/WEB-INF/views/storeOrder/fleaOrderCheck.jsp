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
<script type="text/javascript" src="./resources/js/paging/paging.js"></script>
</head>
<body>
   <%@ include file="../../views/headerHtml/storeHeader.jsp"%>
   <div class="storeContentsWrap">
   <jsp:include page="../../views/storeAdmin/storeSubMenuBar.jsp"></jsp:include>
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
				<c:forEach items="${FleaOrderCheckList}" var="fleaorderCheck" >
					<tr data-s_id="${fleaorderCheck.s_id}">
                     <td>${fleaorderCheck.fp_code}</td>
                     <td>${fleaorderCheck.f_content}</td>
                     <td>${fleaorderCheck.fp_count}</td>
                     <td>${fleaorderCheck.fp_sum}</td>
                     <td>${fleaorderCheck.fp_date}</td>
                     <td>${fleaorderCheck.fp_ck}</td>
                     <td>${fleaorderCheck.fp_ckdate}</td>
                     <td><button class="check-delivery">조회</button></td>
                  </tr>
                 </c:forEach>
                  <!-- 추가적인 공지사항 행을 필요한 만큼 추가할 수 있습니다 -->
               </tbody>
            </table>
            <div class="fleaTablePaging pageing"></div>
         </div>
      </div>
   </div>
   <!-- storeContentsBox -->
   </div>
   <!-- storeContentsWrap -->
   	<footer></footer>

   		<div>
			<jsp:include page="Modal/fleadeliveryModal.jsp"></jsp:include>
		</div>
   
</body>
<script type="text/javascript">
$(document).ready(function() {
    // 모달이 열릴 때 실행되는 함수
    $(".check-delivery").on("click", function() {
        var fp_code = $(this).closest("tr").find("td:eq(0)").text(); // 해당 주문의 최종주문번호(fp_code)를 가져옵니다.

        $.ajax({
            url: "fleadelivery.do",
            method: "get",
            data: { fpCode: fp_code },
            dataType: "json",
            success: function(data) {
                // AJAX 요청이 성공적으로 완료되면 모달에 데이터를 채웁니다.
                fillModalWithData(data);
                $(".fleadeliveryModal").modal("show"); // 모달을 엽니다.
            },
            error: function() {
                alert("주문 세부 정보를 가져오는 중에 오류가 발생했습니다.");
            }
        });
    });
        // 모달에 데이터를 채우는 함수
        function fillModalWithData(data) {
            // 가져온 데이터를 각 필드에 채웁니다.
		    // 주문 번호
		    $("#fp_code").val(data.fp_code);
		    
		    // 수령인
		    $('#fd_name').val(data.fd_name);
		    
		    // 수령인 번호
		    $('#fd_tel').val(data.fd_tel);
		    
		    // 배송지
		    $('#fd_addr').val(data.fd_addr);
		    
		    // 배송메모
		    $('#fd_memo').val(data.fd_memo);

		    // 배송 날짜
		    $('#fd_date').val(data.fd_date);
		    
            if (data.fd_state === "발송 전") {
                $("#delibefore").css("background-color", "#ADEFD1");
                $("#deliafter").css("background-color", "white"); // 기본값으로 설정
            } else if (data.fd_state === "발송처리") {
                $("#delibefore").css("background-color", "white");
                $("#deliafter").css("background-color", "#ADEFD1");
            }
		    
        }
    });



</script>
</html>