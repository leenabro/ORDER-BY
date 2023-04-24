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
		<div>
			
			<p>${ payment }</p>
		</div>	
	
	</section>
	
	
	

</body>

	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</html>