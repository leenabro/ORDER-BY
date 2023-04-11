<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:set var="path" value="${ pageContext.request.contextPath }"/>

<%@ page session="false" %>
<!DOCTYPE HTML>
<!--
	Escape Velocity by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
	</head>
	<body class="homepage is-preload">
	
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	
      <!-- 이 달의 특가 -->
      <section id="intro" class="wrapper style1" >
        <div class="title"><strong  style="color:#202431; font-size: large;">이 달의 특가</strong></div>
        <div class="container">
          	<ul>
	            <li>
	                <a href="">
	                  <div class="month-sale-images">
	                      <div class="hover-test"><strong style="color:black;">바로 예약하기</strong></div>
	                      <img class="sale-image" src="${ path }/resources/static/assets/css/mainImages/롤스로이스 보트테일.png">
	                  </div>
	                </a>
	                  <div class="add-information"><br>
	                    <h4 style="color:black; font-size: x-large;">롤스로이스 <br>보트 테일</h4>
	                    <br>
	                    <p style="font-size: medium;">대여 비용(일) : <del style="color: red;">12,000,000원</del></p>
	                    <span class="material-symbols-outlined" style="color:red">
	                      south
	                      </span>
	                    <p>할인 비용(일) : 8,000,000원</p>
	                  </div>
	            </li>
	            <li>
	              <a href="">
	                <div class="month-sale-images">
	                  <div class="hover-test"><strong style="color:black;">바로 예약하기</strong></div>
	                  <img class="sale-image" src="${ path }/resources/static/assets/css/mainImages/람보르기니 세스토 엘레멘토.png">
	                </div>
	              </a>
	              <div class="add-information"><br>
	                <h4 style="color:black; font-size: x-large;">람보르기니 <br>세스토 엘레멘토</h4>
	                <br>
	                <p style="font-size: medium;">대여 비용(일) : <del style="color: red;">12,000,000원</del></p>
	                <span class="material-symbols-outlined" style="color:red">
	                  south
	                  </span>
	                <p>할인 비용(일) : 8,000,000원</p>
	              </div>
	          	</li>
	          	<li>
	            <a href="" class="hover-test">
	              <div class="month-sale-images">
	                <div class="hover-test"><strong style="color:black;">바로 예약하기</strong></div>
	                <img class="sale-image" src="${ path }/resources/static/assets/css/mainImages/BMW_M_1000_RR.png">
	              </div>
	            </a>
	            <div class="add-information"><br>
	              <h4 style="color:black; font-size: x-large;">BMW <br>M_1000_RR</h4>
	              <br>
	              <p style="font-size: medium;">대여 비용(일) : <del style="color: red;">12,000,000원</del></p>
	              <span class="material-symbols-outlined" style="color:red">
	                south
	                </span>
	              <p>할인 비용(일) : 8,000,000원</p>
	            </div>
        	</li>
      		</ul>
      	</div>
      </section>

      <!-- Highlights -->
		<section id="highlights" class="wrapper style3">
	        <div class="title">인기 차종</div>
	        <div class="container">
	          <div class="swiper-container" >
	            <div class="swiper-wrapper">
	              <div class="swiper-slide">
	                <div class="month-sale-images">
	                <a href="">
	                  <strong style="color:black;" class="hover-test2">바로 예약하기</strong>
	                  <img class="sale-image" style="width:350px;height:250px;" src="${ path }/resources/static/assets/css/mainImages/롤스로이스 보트테일.png"></a>
	                  <div class="add-information"><br>
	                    <h4 style="color:black; font-size: x-large;">롤스로이스<br>보트 테일</h4>
	                    </div>
	                </div>
	              </div>
	              <div class="swiper-slide">
	                <div class="month-sale-images">
	                <a href="">
	                  <strong style="color:black;" class="hover-test2">바로 예약하기</strong>
	                  <img class="sale-image" src="${ path }/resources/static/assets/css/mainImages/람보르기니 세스토 엘레멘토.png"></a>
	                  <div class="add-information"><br>
	                    <h4 style="color:black; font-size: x-large;">람보르기니<br>세스토 엘레멘토</h4>
	                    </div>
	                </div>
	              </div>
	              <div class="swiper-slide">
	                <div class="month-sale-images">
	                <a href="">
	                  <strong style="color:black;" class="hover-test2">바로 예약하기</strong>
	                  <img class="sale-image" src="${ path }/resources/static/assets/css/mainImages/마세라티 MC20.png"></a>
	                  <div class="add-information"><br>
	                    <h4 style="color:black; font-size: x-large;">마세라티<br>MC20</h4>
	                    </div>
	                </div>
	              </div>
	              <div class="swiper-slide">
	                <div class="month-sale-images">
	                <a href="">
	                  <strong style="color:black;" class="hover-test2">바로 예약하기</strong>
	                  <img class="sale-image" src="${ path }/resources/static/assets/css/mainImages/아우디R8 V12.png"></a>
	                  <div class="add-information"><br>
	                    <h4 style="color:black; font-size: x-large;">아우디<br>R8 V12</h4>
	                    </div>
	                </div>
	              </div>
	              <div class="swiper-slide">
	                <div class="month-sale-images">
	                <a href="">
	                  <strong style="color:black;" class="hover-test2">바로 예약하기</strong>
	                  <img class="sale-image" src="${ path }/resources/static/assets/css/mainImages/페라리 F8 스파이더.png"></a>
	                  <div class="add-information"><br>
	                    <h4 style="color:black; font-size: x-large;">페라리<br>F8 스파이더</h4>
	                    </div>
	                </div>
	              </div>
	              <div class="swiper-slide">
	                <div class="month-sale-images">
	                <a href="">
	                  <strong style="color:black;" class="hover-test2">바로 예약하기</strong>
	                  <img class="sale-image" src="${ path }/resources/static/assets/css/mainImages/부가티 볼리드.png"></a>
	                  <div class="add-information"><br>
	                    <h4 style="color:black; font-size: x-large;">부가티<br>볼리드</h4>
	                    </div>
	                </div>
	              </div>
	            </div>
	            <div class="swiper-button-next"><span class="material-symbols-outlined">
	              arrow_forward_ios
	              </span></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
	            <div class="swiper-button-prev"><span class="material-symbols-outlined">
	              arrow_back_ios_new
	              </span></div><!-- 이전 버튼 -->
	
	            <!-- 페이징 -->
	            <div class="swiper-pagination"></div>
	          </div>
	        </div>
	        <div class="container">
	          <div class="swiper-container" >
	            <div class="swiper-wrapper">
	              <div class="swiper-slide">
	                <div class="month-sale-images">
	                <a href="">
	                  <strong style="color:black;" class="hover-test2">바로 예약하기</strong>
	                  <img class="sale-image" src="${ path }/resources/static/assets/css/mainImages/BMW_S1000RR.png"></a>
	                  <div class="add-information"><br>
	                    <h4 style="color:black; font-size: x-large;">BMW<br>S1000RR</h4>
	                    </div>
	                </div>
	              </div>
	              <div class="swiper-slide">
	                <div class="month-sale-images">
	                <a href="">
	                  <strong style="color:black;" class="hover-test2">바로 예약하기</strong>
	                  <img class="sale-image" src="${ path }/resources/static/assets/css/mainImages/Ducati_Panigale_V4_R.png"></a>
	                  <div class="add-information"><br>
	                    <h4 style="color:black; font-size: x-large;">두가티<br>파니갈레 V4 R</h4>
	                    </div>
	                </div>
	              </div>
	              <div class="swiper-slide">
	                <div class="month-sale-images">
	                <a href="">
	                  <strong style="color:black;" class="hover-test2">바로 예약하기</strong>
	                  <img class="sale-image" src="${ path }/resources/static/assets/css/mainImages/Honda_CBR1000RR-R.png"></a>
	                  <div class="add-information"><br>
	                    <h4 style="color:black; font-size: x-large;">혼다<br>CBR1000RR-R</h4>
	                    </div>
	                </div>
	              </div>
	              <div class="swiper-slide">
	                <div class="month-sale-images">
	                <a href="">
	                  <strong style="color:black;" class="hover-test2">바로 예약하기</strong>
	                  <img class="sale-image" src="${ path }/resources/static/assets/css/mainImages/Kawaski ZR1000K.png"></a>
	                  <div class="add-information"><br>
	                    <h4 style="color:black; font-size: x-large;">가와사키<br>ZR1000K</h4>
	                    </div>
	                </div>
	              </div>
	              <div class="swiper-slide">
	                <div class="month-sale-images">
	                <a href="">
	                  <strong style="color:black;" class="hover-test2">바로 예약하기</strong>
	                  <img class="sale-image" src="${ path }/resources/static/assets/css/mainImages/Yamaha_FJR-1300AS.png"></a>
	                  <div class="add-information"><br>
	                    <h4 style="color:black; font-size: x-large;">야마하<br>FJR-1300AS</h4>
	                    </div>
	                </div>
	              </div>
	              <div class="swiper-slide">
	                <div class="month-sale-images">
	                <a href="">
	                  <strong style="color:black;" class="hover-test2">바로 예약하기</strong>
	                  <img class="sale-image" src="${ path }/resources/static/assets/css/mainImages/Suzuki HAYABUSA.png"></a>
	                  <div class="add-information"><br>
	                    <h4 style="color:black; font-size: x-large;">스즈키<br>하야부사</h4>
	                    </div>
	                </div>
	              </div>
	            </div>
	            <br>
	            <br>
	            
	            <div class="swiper-button-next"><span class="material-symbols-outlined">
	              arrow_forward_ios
	              </span></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
	              <div class="swiper-button-prev"><span class="material-symbols-outlined">
	                arrow_back_ios_new
	                </span></div><!-- 이전 버튼 -->
	            
	            <!-- 페이징 -->
	            <div class="swiper-pagination"></div>
	          </div>
	        </div>
    	</section>

	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	
	</body>
</html>
