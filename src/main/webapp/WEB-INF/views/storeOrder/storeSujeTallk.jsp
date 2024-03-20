<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
  href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap"
  rel="stylesheet"
/>
<link href="./resources/css/resetStyle.css" rel="stylesheet" type="text/css" />
<link
  href="./resources/css/menuForm/subMenuStyle.css"
  rel="stylesheet"
  type="text/css"
/>
<link
  href="./resources/css/storeOrder/storeSujeTallk.css"
  rel="stylesheet"
  type="text/css"
/>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>SUJE</title>
    <link
      rel="stylesheet"
      href="./resources/css/storeAdmin/storeNotiInfo.css"
    />
  </head>
  <body>
    <!-- 상단 메뉴 , 좌측 메뉴  -->
    <%@ include file="../../views/headerHtml/storeHeader.jsp"%>
    <div class="storeContentsWrap">
      <div class="storeSubMenuBox">
        <a href="#" class="storeProfileBox"
          ><img src="./resources/img/basicProfileIconBig.png"
        /></a>
        <textarea rows="2" disabled="disabled" class="storeNameBox">
STORE NAME AREA</textarea
        >
        <ul class="storeCategoryArea">
          <li class="storeFirstCategoryArea">
            <a href="#" class="storeFirstCategoryBtn checkedStateFirstCategory"
              >&nbsp;&nbsp;&nbsp;스토어 관리</a
            >
            <ul class="storeSecondCategoryArea">
              <li class="storeSecondCategoryBtn">
                <a href="#"> <span>스토어 페이지 관리</span> </a>
              </li>
              <li class="storeSecondCategoryBtn">
                <a href="#"> <span>스토어 공지 조회/수정</span> </a>
              </li>
              <li class="storeSecondCategoryBtn checkedStateSecondCategory">
                <a href="#"> <span>스토어 공지 등록</span> </a>
              </li>
              <li class="storeSecondCategoryBtn">
                <a href="#"> <span>스토어 작품 조회/수정</span> </a>
              </li>
              <li class="storeSecondCategoryBtn">
                <a href="#"> <span>스토어 작품 등록</span> </a>
              </li>
            </ul>
          </li>
          <li class="storeFirstCategoryArea">
            <a href="#" class="storeFirstCategoryBtn"
              >&nbsp;&nbsp;&nbsp;플리마켓 관리</a
            >
            <ul class="storeSecondCategoryArea">
              <li class="storeSecondCategoryBtn">
                <a href="#"> <span>플리마켓 상품 조회/수정</span> </a>
              </li>
              <li class="storeSecondCategoryBtn">
                <a href="#"> <span>플리마켓 상품 등록</span> </a>
              </li>
            </ul>
          </li>
          <li class="storeFirstCategoryArea">
            <a href="#" class="storeFirstCategoryBtn"
              >&nbsp;&nbsp;&nbsp;주문 관리</a
            >
            <ul class="storeSecondCategoryArea">
              <li class="storeSecondCategoryBtn">
                <a href="#"> <span>스토어 주문요청 관리</span> </a>
              </li>
              <li class="storeSecondCategoryBtn">
                <a href="#"> <span>스토어 최종주문 조회</span> </a>
              </li>
              <li class="storeSecondCategoryBtn">
                <a href="#"> <span>플리마켓 주문 조회</span> </a>
              </li>
            </ul>
          </li>
          <li class="storeFirstCategoryArea">
            <a href="#" class="storeFirstCategoryBtn"
              >&nbsp;&nbsp;&nbsp;정산 관리</a
            >
          </li>
        </ul>
      </div>
      <!-- storeSubMenuBox -->
      <!-- 상단 메뉴 , 좌측 메뉴 end -->

      <div class="storeContentsBox">
        <div class="storeTalkTitle">
          <div class="subtitle">스토어 주문요청 관리</div>
          <div class="myPageLine"></div>
        </div>

        <div class="mainTalkContent">
          <!-- 메인 Talk 부분 -->

          <!-- 스토어목록 -->
          <div class="TalkList">
            <!-- 타이틀 -->
            <div class="TalkListTitle">
              <div>스토어목록</div>
            </div>

            <!-- 메인 -->

            <div class="TalkListMain">
              <!-- 목록정보 -->
              <!-- 주문 요청 내역 상단 정보 -->
              <div>
                <div>
                  <div class="customerInfoList">
                    <img alt="" src="./resources/img/custmerLogo.png" />
                    <div>빵빵이</div>
                  </div>
                  <div>2024/03/13</div>
                </div>
                <!-- 주문 요청 내역 -->
                <div class="listBar"></div>
                <div>
                  <div class="customerInfoList">
                    <img alt="" src="./resources/img/custmerLogo.png" />
                    <div>빵빵이 지인</div>
                  </div>
                  <div>2024/03/13</div>
                </div>
                <div class="listBar"></div>
                <div>
                  <div class="customerInfoList">
                    <img alt="" src="./resources/img/custmerLogo.png" />
                    <div>빵빵이 엄마</div>
                  </div>
                  <div>2024/03/13</div>
                </div>
                <div class="listBar"></div>
                <div>
                  <div class="customerInfoList">
                    <img alt="" src="./resources/img/custmerLogo.png" />
                    <div>빵빵이 동생</div>
                  </div>
                  <div>2024/03/13</div>
                </div>
                <div class="listBar"></div>
              </div>
              <!-- 목록정보 -->
              <div>< 1 2 3 ></div>
            </div>
          </div>

          <!-- 주문요청 내역 -->
          <div class="activeTalk">
            <!-- 타이틀 -->
            <div class="activeTalkTitle">
              <div>
                <span>주문 요청 내역</span>
              </div>
              <div>
                <span>주문 요청 번호</span> <span><input type="text" /></span>
              </div>
            </div>

            <!-- 메인 -->
            <div class="activeTalkMain">
              <!-- 상단 사용자 정보 -->
              <div class="storeTopInfo">
                <div>
                  <div>
                    <img src="./resources/img/custmerLogo.png" />
                  </div>
                  <div>abc123</div>
                </div>
                <div>2024/03/13 09:00</div>
              </div>
              <!-- 상단 사용자 정보 -->

              <div class="listBarOrder"></div>

              <!-- 요청내용 -->
              <div class="orderMainContent">
                <div class="orderMainContentInner">
                  <!-- 대화출력 -->
                  <div class="orderMainDetail">
                    <!-- 대화 사용자 정보 -->
                    <div>
                      <div>
                        <img src="./resources/img/custmerLogo.png" />
                      </div>
                      <div>구매 고객</div>
                    </div>
                    <!-- 대화 사용자 정보 -->
                    <!-- 대화 내용 -->
                    <div>
                      안녕하세요! 3월 14일 화이트데이에 케잌을 주문하려고 하는데
                      가능할까요? 시간이 촉박한 점 저도 인지하고 있으며 최대한
                      가능한 제작옵션만 소개 부탁드려요!
                    </div>
                    <!-- 대화 내용 -->
                    <!-- 뒷 배경 그림 -->
                    <img src="./resources/img/wordballoon.png" />
                    <!-- 뒷 배경 그림 -->
                    <!-- 날짜 -->
                    <div>2024-03-19</div>
                    <!-- 날짜 -->
                  </div>

                  <!-- 대화출력 -->
                  <!-- 대화출력 -->
                  <div class="orderMainDetail">
                    <!-- 대화 사용자 정보 -->
                    <div>
                      <div>
                        <img
                          alt=""
                          src="./resources/img/sujetalkstoreimg.png"
                        />
                      </div>
                      <div>CAKE FACTORY</div>
                    </div>
                    <!-- 대화 사용자 정보 -->
                    <!-- 대화 내용 -->
                    <div>
                      안녕하세요! 3월 14일 화이트데이에 케잌을 주문하려고 하는데
                      가능할까요? 시간이 촉박한 점 저도 인지하고 있으며 최대한
                      가능한 제작옵션만 소개 부탁드려요!
                    </div>
                    <!-- 대화 내용 -->
                    <!-- 뒷 배경 그림 -->
                    <img src="./resources/img/wordballoon.png" />
                    <!-- 뒷 배경 그림 -->
                    <!-- 날짜 -->
                    <div>2024-03-19</div>
                    <!-- 날짜 -->
                  </div>
                  <!-- 대화출력 -->
                  <!-- 대화출력 -->
                  <div class="orderMainDetail">
                    <!-- 대화 사용자 정보 -->
                    <div>
                      <div>
                        <img
                          alt=""
                          src="./resources/img/sujetalkstoreimg.png"
                        />
                      </div>
                      <div>CAKE FACTORY</div>
                    </div>
                    <!-- 대화 사용자 정보 -->
                    <!-- 대화 내용 -->
                    <div>
                      <input type="button" value="최종 주문서 확인" />
                    </div>
                    <!-- 대화 내용 -->
                    <!-- 뒷 배경 그림 -->
                    <img src="./resources/img/wordballoon.png" />
                    <!-- 뒷 배경 그림 -->
                    <!-- 날짜 -->
                    <div>2024-03-19</div>
                    <!-- 날짜 -->
                  </div>
                  <!-- 대화출력 -->
                </div>
              </div>
              <!-- 요청내용 -->

              <!-- 이미지 불러오기 -->
              <div>
                <input type="text" />
                <button value="이미지 불러오기">이미지 불러오기</button>
              </div>
              <!-- 이미지 불러오기 -->
              <!-- 이미지 불러오기 -->
              <div>
                <input type="text" />
                <button value="이미지 불러오기">전송</button>
              </div>
              <!-- 이미지 불러오기 -->
            </div>
          </div>

          <!-- 메인 Talk 부분 -->
        </div>
      </div>
    </div>
    <!-- storeContentsBox -->
    <!-- storeContentsWrap -->
    <footer></footer>
  </body>
</html>
