<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<c:set var="path" value="${ pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>예약 / 약관</title>
	<link rel="stylesheet" href="${ path }/resources/css/payment/reservation.css">
	</head>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	
	<body class="homepage is-preload">
	    <section id="reservationSection" class="wrapper style3">
		    <div class="title">
				<strong id="reserveTitle">예약 / 약관</strong>
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
					        <p id="step2" class="step" style="filter: opacity(0.3)" >할인 / 결제</p>
			    		</li>
			    		<li class="car-icon">
					        <img id="carIcon3" src="${ path }/resources/images/payment/caricon_01.png"><br>
					        <p id="step3" class="step" style="filter: opacity(0.3)" >완료</p>
			    		</li>
			    	</ul>
		    		<div id="navBar"></div>
	    		</div>
		    </div>
		    <br><br>
		    <div class="shortContainer">
		        <div id="sectionImg" class="res-section-div">
		            <div id="productName">
		            	<c:choose>
		            		<c:when test="${ not empty car.brand }">
				                <p style="padding: 25px 0px; margin: 0;">${ car.brand } ${ car.name }</p>
		            		</c:when>
		            		<c:when test="${ not empty motocycle.brand }">
				                <p style="padding: 25px 0px; margin: 0;">${ motocycle.brand } ${ motocycle.name }</p>
		            		</c:when>
		            	</c:choose>
		            </div>
		            <div id="productImg">
		            	<c:choose>
		            		<c:when test="${ not empty car.brand }">
				                <img src="${ path }/resources/images/car/${ car.brand }/${ car.name }.png">
		            		</c:when>
		            		<c:when test="${ not empty motocycle.brand }">
				                <img src="${ path }/resources/images/motocycle/${ motocycle.brand }/${ motocycle.name }.png">
		            		</c:when>
		            	</c:choose>
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
		                    <c:choose>
		                    	<c:when test="${ not empty car.brand }">
		                    		<p class="car-spec-price"><fmt:formatNumber value="${ car.price }" pattern="#,###"/> 원</p>	
		                    	</c:when>
		                    	<c:when test="${ not empty motocycle.brand }">
		                    		<p class="car-spec-price"><fmt:formatNumber value="${ motocycle.price }" pattern="#,###"/> 원</p>
		                    	</c:when>
		                    </c:choose>
		                </li>
		                <li class="car-spec-li">
		                    <p class="car-spec-title">할인 요금</p>
		                    <p class="car-spec-price">- 0 원</p>
		                </li>
		                <li id="totalPrice" class="car-spec-li">
		                    <p class="car-spec-title">총 금액</p>
		                    <c:choose>
		                    	<c:when test="${ not empty car.brand }">
		                    		<p class="car-spec-price"><strong><fmt:formatNumber value="${ car.price }" pattern="#,###"/> 원</strong></p>	
		                    	</c:when>
		                    	<c:when test="${ not empty motocycle.brand }">
		                    		<p class="car-spec-price"><strong><fmt:formatNumber value="${ motocycle.price }" pattern="#,###"/> 원</strong></p>
		                    	</c:when>
		                    </c:choose>
		                    
	              		</li>
		            </ul>
	        	</div>
	        <div id="sectionScript" class="res-section-div">
	        	<section>
		        	<div class="scriptHeader">
		        		<h3 style="color: black;">예약 상세 내역</h3>
		        	</div>
		        	<div class="scriptCon">
			        	<div class="scriptRow">
			        		<span>대여 일시 / 지점</span>
			        		<div>
			        			2023년 3월 29일 (수) 15:00 / 강남 지점
			        		</div>
			        	</div>
			        	<div class="scriptRow">
			        		<span>반납 일시 / 지점</span>
			        		<div>
			        			2023년 3월 29일 (수) 15:00 / 강남 지점
			        		</div>
			        	</div>
			        	<div class="scriptRow">
			        		<span>차량 상세 정보</span>
			        		<div>
			        			${ car.name }
			        		</div>
			        	</div>
			        	<div class="scriptRow">
			        		<span>총 대여 기간</span>
			                <div id="rentalDate">1 일 0 시간 0 분</div>	
			        	</div>
		        	</div>
	        	</section>
	        	<section>
	        		<div class="scriptHeader">
	        			<h3 style="color: black;">예약자 정보</h3>
	        		</div>
	        		<div class="scriptCon">
	        			<div class="scriptRow">
			        		<span>이름</span>
			        		<div>
			        			${ member.id }
			        		</div>
			        	</div>
			        	<div class="scriptRow">
			        		<span>성별</span>
			        		<div>
			        			${ member.gender }
			        		</div>
			        	</div>
			        	<div class="scriptRow">
			        		<span>이메일</span>
			        		<div>
			        			${ member.email }
			        		</div>
			        	</div>
			        	<div class="scriptRow">
			        		<span>전화번호</span>
			                <div>
			                	${ member.phone }
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
        			<button id="nextButton" class="button button--aylen button--border-thin button--round-s"><span>다음</span></button>
        		</li>
        	</ul>
        </div>
    </section>
		
	<script>
		$(document).ready(() => {
			let productNo = 0;
			let productName = "";
			let productFullName = "";
			let productPrice = 0;
			
			if('${car.no}' === null || '${car.no}' === '') {
				productNo = '${ motocycle.no }';
				productName = '${ motocycle.name }';
				productFullName = '${ motocycle.brand } ${ motocycle.name }';
				productPrice = '${ motocycle.price }';
			} else {
				productNo = '${ car.no }';
				productName = '${ car.name }';
				productFullName = '${ car.brand } ${ car.name }';
				productPrice = '${ car.price }';
			}
			
			console.log(productNo + productName + productFullName + productPrice);
			$('#prevButton').on('click', () => {
				location.href = "${ path }";
			})
			
			$('#nextButton').on('click', () => {
				location.href = "${ path }/payment/discount?name="+productName+"&price=" + productPrice;
			})
			
		
			
		});
	
	</script>	
		
	</body>
	
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</html>