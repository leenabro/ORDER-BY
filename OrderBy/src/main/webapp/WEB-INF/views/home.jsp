<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<c:set var="path" value="${ pageContext.request.contextPath }"/>

<%@ page session="false" %>
<!DOCTYPE HTML>
<!--
	Escape Velocity by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<style>
	.brand-image {
		width:100px;
		height:50px;
	}
</style>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<body class="homepage is-preload">
	
	
    <!-- 이 달의 특가 -->
	<section id="intro" class="wrapper style1" >
        <div class="title"><strong  style="color:#202431; font-size: large;">이 달의 특가</strong></div>
        <div class="container">
          	<ul>

          		<c:forEach var="car" items="${ list }">
          			<c:forEach var="store" items="${ storeList }">
		            <li>
						<a href="rent/car/${ car.name }&${ store.name }">
			                <div class="month-sale-images">
			                	<div class="hover-test"><strong style="color:black;">바로 예약하기</strong></div>
			                	<img class="sale-image" src="${ path }/resources/images/car/${ car.brand }/${ car.name }.png">
			                </div>
		                </a>
						<div class="add-information">
						<br>
			                <% pageContext.setAttribute("emptyChar", " "); %>
			                <div>
			                  	<div style="display: flex; ">
			                  		<img class="brand-image" style="margin-left:10%;" src="${ path }/resources/images/brand/${ car.brand }.png">
			                  		<div >
				                  		<h4 style="color:black; font-size: x-large;"> ${ car.brand }</h4>
				                  		<h4 style="color:black; font-size: x-large;"> ${ car.name }</h4>
			                  		</div>
			                  	</div>
			                </div>
			                    
			                <br>
			                <p class="postionstyle" style="font-size:small;"> ${car.position } </p>
			                <p style="font-size: medium;">대여 비용(일) : <del style="color: red;"><fmt:formatNumber value="${ car.price }" pattern="#,###"/></del></p>
			                <span class="material-symbols-outlined" style="color:red">
			                	south
							</span>
			                <p>할인 비용(일) : <fmt:formatNumber value="${ car.price * 0.7 }" pattern="#,###" /> 원</p>
		                </div>
		            </li>
		            </c:forEach>
          		</c:forEach>
				<c:forEach var="moto" items="${ moto }">
	          	<li>
	          		<c:forEach var="store" items="${ storeList }">
	              		<a href="rent/motocycle/${ moto.name }&${ store.name }">
	              		<div class="month-sale-images">
		                	<div class="hover-test"><strong style="color:black;">바로 예약하기</strong></div>
		                	<img class="sale-image" src="${ path }/resources/images/motocycle/${ moto.brand }/${ moto.name }.png">
	              		</div>
	            		</a>
	            	</c:forEach>
	            <div class="add-information"><br>
		                  <% pageContext.setAttribute("emptyChar", " "); %>
		                  <div >
		                  	<div style="display: flex; ">
		                  		<img class="brand-image" style="margin-left:10%;" src="${ path }/resources/images/brand/${ moto.brand }.png">
		                  		<div >
			                  		<h4 style="color:black; font-size: x-large;"> ${ moto.brand }</h4>
			                  		<h4 style="color:black; font-size: x-large;"> ${ moto.name }</h4>
		                  		</div>
		                  	</div>
		                  </div>
	                
	              <br>
	              <p class="postionstyle" style="font-size:small;"> ${moto.position } </p>
	              <p style="font-size: medium;">대여 비용(일) : <del style="color: red;"><fmt:formatNumber value="${ moto.price }" pattern="#,###"/></del></p>
	              <span class="material-symbols-outlined" style="color:red">
	                south
	                </span>
	              <p>할인 비용(일) : <fmt:formatNumber value="${ moto.price * 0.7 }" pattern="#,###" /> 원</p>
	            </div>
	        	</li>
              </c:forEach>
      		</ul>
      	</div>
	</section>

    <!-- Highlights -->
	<section id="highlights" class="wrapper style3">
		<div class="title">인기 차종</div>
			<div class="container">
          		<div class="swiper-container" >
            		<div class="swiper-wrapper">
              			<c:forEach var="car" items="${ carlist }">
              				<div class="swiper-slide">
                				<div class="month-sale-images">
                					<c:forEach var="store" items="${ carStoreList }">
	                					<a href="rent/car/${ car.name }&${ store.name }">
	                  						<strong style="color:black;" class="hover-test2">바로 예약하기</strong>
	                  						<img class="sale-image" style="width:350px;height:250px;" src="${ path }/resources/images/car/${car.brand}/${car.name}.png">
	                  					</a>
                					</c:forEach>
                  					<div class="add-information"><br>
                      					<div>
	                  						<div style="display: flex; ">
	                  							<img class="brand-image" style="margin-left:10%;" src="${ path }/resources/images/brand/${ car.brand }.png">
	                  							<div>
		                  						<h4 style="color:black; font-size: x-large;"> ${ car.brand }</h4>
		                  						<h4 style="color:black; font-size: x-large;"> ${ car.name }</h4>
	                  							</div>
	                  						</div>
	                  					</div>
               	  					</div>
                				</div>
            				</div>
		            	</c:forEach>
            		</div>
            		<div class="swiper-button-next">
	            		<span class="material-symbols-outlined">
	              			arrow_forward_ios
	              		</span>
              		</div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
            		<div class="swiper-button-prev">
            			<span class="material-symbols-outlined">
              				arrow_back_ios_new
              			</span>
              		</div><!-- 이전 버튼 -->

            		<!-- 페이징 -->
            		<div class="swiper-pagination"></div>
          		</div>
        	</div>
        	<div class="container">
          		<div class="swiper-container" >
            		<div class="swiper-wrapper">
              			<c:forEach var="moto" items="${ motolist }">
              				<div class="swiper-slide">
                				<div class="month-sale-images">
                					<c:forEach var="store" items="${ motoStoreList }">
	                					<a href="rent/motocycle/${ moto.name }&${ store.name }">
	                  						<strong style="color:black;" class="hover-test2">바로 예약하기</strong>
	               							<img class="sale-image" src="${ path }/resources/images/motocycle/${ moto.brand }/${ moto.name}.png">
	             						</a>
                					</c:forEach>
               						<div class="add-information"><br>
                   						<div>
                							<div style="display: flex; ">
                								<img class="brand-image" style="margin-left:10%;" src="${ path }/resources/images/brand/${ moto.brand }.png">
                								<div>
								    				<h4 style="color:black; font-size: x-large;"> ${ moto.brand }</h4>
										      		<h4 style="color:black; font-size: x-large;"> ${ moto.name }</h4>
					                  			</div>
                							</div>
                						</div>
                 					</div>
                				</div>
              				</div>
              			</c:forEach>
					</div>
            		<br>
            		<br>
		            <div class="swiper-button-next">
		            	<span class="material-symbols-outlined">
              				arrow_forward_ios
              			</span>
              		</div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
              		<div class="swiper-button-prev">
              			<span class="material-symbols-outlined">
                			arrow_back_ios_new
                		</span>
                	</div><!-- 이전 버튼 -->
		            <!-- 페이징 -->
            		<div class="swiper-pagination"></div>
          		</div>
        	</div>
	<!-- 		0427 주리 플로팅박스 시작 -->
			<div class="sideBanner">
				<span class="txt-label">
		            <span id="popFloating-banner">
		                <security:csrfInput/>
		                <a id="popTltle">비회원 렌트 문의</a>
		                <input type="hidden" id="popNo">
		                <label for="popName" class="popLabel">이름</label>
		                <input type="text" id="popName" name="popName" autocomplete="off" required>
		                <label for="popEmail" class="popLabel">이메일</label>
		                <input type="email" id="popEmail" name="popEmail" autocomplete="off" required>
		                <label for="popPhone" class="popLabel">연락처</label>
		                <input type="tel" id="popPhone" name="popPhone" autocomplete="off" required>
		                <label for="popContent" class="popLabel">문의 내용</label>
		                <textarea id="popContent" name="popContent" onkeypress="onTestChange(event)" required></textarea>
		                <input type="hidden" id="popDate">
		                <input type="hidden" id="popStatus">
		                <button id="popSubmit">문의하기</button>
		            </span>
				</span>
				<span>
					<a id="kakao24" href="https://open.kakao.com/o/sBznYrhf">
						<img id="kakao24" src="${ path }/resources/static/assets/css/images/kakao24.jpeg" style="">
					</a>
				</span>
			</div>
	<!-- 		0427 주리 플로팅박스 종료 -->
   		</section>
	</body>
	
<%@ include file="/WEB-INF/views/common/footer.jsp" %>

</html>
