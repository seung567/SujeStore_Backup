<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="reviewInsertModal">
		<div class="reviewInsertModalBody">
			<!-- 상단 제목 부분 -->
			<div class="reviewInsertTitle">
				<div>SUJE</div>
				<div>주문제작 후기 작성</div>
				<div>
					제작주문결제번호 <input type="text" />
				</div>
			</div>

			<!-- Modal 메인 Content -->
			<div class="modalMainContent">
				<!-- 메인 좌측 Content Title -->
				<div class="ContentLefit">
					<div>
						<img width=30px height=30px alt="" src="./resources/img/Star1Customer.png" />
					</div>
					<div>이미지 등록</div>
					<div>내용</div>
				</div>

				<!-- 메인 우측 Content -->
				<div class="ContentRight">
					<!-- Content 첫번째 라인 -->
					<div>
						<div>
							<select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option selected="selected">5</option>
							</select>
						</div>
						<div>점</div>
						<div><label for="date">작성일자</label></div>
						<div>
							<input id="datepicker" type="text" />
						</div>
					</div>
					<!-- Content 두번째 라인 -->
					<div>
						<div>
							<input type="text" />
						</div>
						<div>
							<input type="button" value="불러오기" />
						</div>
					</div>
					<!-- Content 세번째 라인 -->
					<div>
						<div>
							<input type="text" />
						</div>
					</div>
				</div>
			</div>

			<!-- 등록하기 버튼 -->
			<div class="insertbtn">
				<div>
					<input type="button" value="등록하기">
				</div>
				<div>
					<a href=testPageSet.do?page=ysm&site=customer/customerReview>
						<input type="button" value="취소">
					</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>