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
	<title>완료</title>
	<link rel="stylesheet" href="${ path }/resources/css/payment/success.css">
</head>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	
<body class="homepage is-preload">
	<section class="wrapper style3">
		<div class="title">		
			<strong id="sucTitle">완료</strong>
		</div>
		<div>
			<div id="carIcon">
				<ul>
   					<li class="car-icon">
	        			<img id="carIcon1" src="${ path }/resources/images/payment/caricon_01.png"><br>
						<p id="step1" class="step" style="filter: opacity(0.3)" >예약 / 약관</p>
					</li>
					<li class="car-icon">
    					<img id="carIcon2" src="${ path }/resources/images/payment/caricon_01.png"><br>
    					<p id="step2" class="step" style="filter: opacity(0.3)" >할인 / 결제</p>
					</li>
						<li class="car-icon">
    					<img id="carIcon3" src="${ path }/resources/images/payment/caricon_01.png"><br>
					<p id="step3" class="step">완료</p>
					</li>
				</ul>
				<div id="navBar"></div>
			</div>
		</div>
		<div id="successContainer1" class="success-container">
			<h2 style="text-align: center;">예약이 완료되었습니다.</h2>
        </div>	
        
        <div id="successContainer2" class="success-container">
        	<c:choose>
        		<c:when test="${ not empty car }">
		            <div id="productName">
		                <p>${ car.brand } ${ car.name }</p>
		            </div>
		            <div>
		                <img src="${ path }/resources/images/car/${ car.brand }/${ car.name }.png" alt="차량 이미지">
		            </div>
        		</c:when>
        		<c:when test="${ not empty motocycle }">
		            <div id="productName">
		                <p>${ motocycle.brand } ${ motocycle.name }</p>
		            </div>
		            <div>
		                <img src="${ path }/resources/images/motocycle/${ motocycle.brand }/${ motocycle.name }.png" alt="차량 이미지">
		            </div>
        		</c:when>
        	</c:choose>
			
        </div>
		<br>
        <div id="successContainer3" class="success-container">
            <div id="rentInfo">
                <p>대여정보</p>
            </div>
            <div>
            	<table>
            		<tr>
            			<th>차 종</th>
            			<td>람보르기뉘</td>
            		</tr>
            		<tr>
            			<th>코드</th>
            			<td>8574561554</td>
            		</tr>
            	</table>
            </div>
            <div>
            	<table>
            		<tr>
            			<th>대여일</th>
            			<td>2023.04.25</td>
            		</tr>
            		<tr>
            			<th>반납일</th>
            			<td>2023.04.26</td>
            		</tr>
            	</table>
            </div>
        </div>
	</section>
	
	
	

</body>

	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</html>