<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:set var="path" value="${ pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>할인 / 결제</title>
		<link rel="stylesheet" href="${ path }/resources/css/payment/discount.css">
	</head>
	
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	
	<body class="homepage is-preload">
		<section id="disSection" class="wrapper style3">
			<div class="title">		
				<strong id="disTitle">할인 / 결제</strong>
			</div>
			<div>
				<div id="carIcon">
				  	<ul>
			    		<li class="car-icon">
					        <img id="carIcon1" src="${ path }/resources/images/payment/caricon_01.png"><br>
					        <p id="step1" class="step">예약 / 약관</p>
			    		</li>
			    		<li class="car-icon">
					        <img id="carIcon2" src="${ path }/resources/images/payment/caricon_01.png"><br>
					        <p id="step2" class="step">할인 / 결제</p>
			    		</li>
			    		<li class="car-icon">
					        <img id="carIcon3" src="${ path }/resources/images/payment/caricon_01.png"><br>
					        <p id="step3" class="step">완료</p>
			    		</li>
		    		</ul>
				    <div id="navBar"></div>
		    	</div>
			</div>	
			<br><br>
			<div class="shortContainer">
		        <div id="sectionImg" class="res-section-div">
		            <div id="carName">
		                <p style="padding: 25px 0px; margin: 0;">롤스로이스 보트테일</p>
		            </div>
		            <div id="carImg">
		                <img src="${ path }/resources/static/assets/css/mainImages/롤스로이스 보트테일.png">
		            </div>
		            <ul>
		                <li class="car-spec-li">
		                    <p class="car-spec-title">대여 정보</p>
		                    <span>강남 지점</span> <br>
		                    <span>2023년 3월 29일 (수) 15:00</span>
		                </li>
		                <li class="car-spec-li">
		                    <p class="car-spec-title">반납 정보</p>
		                    <span>강남 지점</span> <br>
		                    <span>2023년 3월 30일 (목) 15:00</span>
		                </li>
		                <li class="car-spec-li">
		                    <p class="car-spec-title">차량 대여 요금</p>
		                    <p class="car-spec-price">4,350,000 원</p>
		                </li>
		                <li class="car-spec-li">
		                    <p class="car-spec-title">할인 요금</p>
		                    <p class="car-spec-price">- 0 원</p>
		                </li>
		                <li id="totalPrice" class="car-spec-li">
		                    <p class="car-spec-title">총 금액</p>
		                    <p class="car-spec-price"><strong>4,350,000 원</strong></p>
	              		</li>
		            </ul>
	        	</div>
		        <div id="sectionScript" class="res-section-div">
		        	<section>
			        	<div class="scriptHeader">
			        		<h3 style="color: black;">기본 할인</h3>
			        	</div>
			        	<div class="scriptCon">
				        	<div class="scriptRow">
				        		<span>회원 등급</span>
				        		<div>
				        			브론즈(0 %)
				        		</div>
				        	</div>
				        	<div class="scriptRow">
				        		<span>지점 이벤트</span>
				        		<div>
				        			해당 지점 이벤트 없음
				        		</div>
				        	</div>
				        	<div class="scriptRow">
				        		<span>할인 쿠폰</span>
				        		<div>
				        			<select name="coupone" id="disCoupone">
		                                <option > --------------</option>
		                                <option value="특가 이벤트"> 특가 이벤트(10%)</option>
		                                <option value="신규 할인"> 신규 할인(15%)</option>
                            		</select>
				        		</div>
				        		<div>
				        			<p style="font-size: 0.5em; color: red; vertical-align: top; margin-left: 10px">쿠폰 최대 사용 매수는 1 매입니다.</p>
				        		</div>
				        	</div>
			        	</div>
		        	</section>
		        	<section>
		        		<div class="scriptHeader">
		        			<h3 style="color: black;">포인트</h3>
		        		</div>
		        		<div class="scriptCon">
		        			<div class="scriptRow">
				        		<span>가용 포인트</span>
				        		<div>
				        			<p>1,000</p>&nbsp;p
				        		</div>
				        	</div>
				        	<div class="scriptRow">
				        		<span>사용할 포인트</span>
				        		<div>
				        			<input type="text" class="script-point"> p
				        			<input type="button" style="width: 100px; height: 40px; border-radius: 5px; background-color: dimgrey; color: white;" value="모두 사용">
				        			<div>
				        				<p style="font-size: 0.5em; color: red; vertical-align: top;">누적 포인트 50,000 포인트 이상이어야 사용 가능</p>
				        			</div>
				        		</div>
				        	</div>
		        		</div>
		        	</section>
		        </div>
			</div>
		 	<div id="button-div">
	        	<ul>
	        		<li class="button-list">
			            <button id="prevButton" class="button button--aylen button--border-thin button--round-s"><span>이전</span></button>
	        		</li>
	        		<li class="button-list">
	        			<button id="payments" class="button button--aylen button--border-thin button--round-s"><span>결제</span></button>
	        		</li>
	        	</ul>
      		</div>
		</section>
		
		<script>
		$(document).ready(() => {
			$('#prevButton').on('click', () => {
				location.href = "${ path }/payment/reservation";
			})
			
		});
	
	</script>
		
	</body>
	
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>	
	
</html>