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
	<title>예약 / 약관</title>
	<link rel="stylesheet" href="${ path }/resources/css/payment/reservation.css">
	</head>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	
	<body class="homepage is-preload">
	    <section class="wrapper style1">
	    <div class="title">
			<strong id="reserveTitle">예약 / 약관</strong>
	    </div>
	    <div>
	    	<ul>
	    		<li class="car-icon">
			        <img id="carIcon1" src="${ path }/resources/images/payment/caricon_01.png">
	    		</li>
	    		<li class="car-icon">
			        <img id="carIcon2" src="${ path }/resources/images/payment/caricon_01.png">
	    		</li>
	    		<li class="car-icon">
			        <img id="carIcon3" src="${ path }/resources/images/payment/caricon_01.png">
	    		</li>
	    	</ul>
	        <br>
	        <div id="navBar"></div>
	        <span id="step1">예약 / 약관</span>
	        <span id="step2">할인 / 결제</span>
	        <span id="step3">완료</span>
	    </div>
	    <br>
	        <div id="sectionImg" class="res-section-div">
	            <div id="carName">
	                <p style="padding-top: 8px; margin: 0;">롤스로이스 보트테일</p>
	            </div>
	            <div id="carImg">
	                <img src="${ path }/resources/static/assets/css/mainImages/롤스로이스 보트테일.png">
	            </div>
	            
	            <ul id="carSpec">
	                <li>
	                    <p class="car-spec-title">대여 정보</p>
	                    <span>강남 지점</span> <br>
	                    <span>2023년 3월 29일 (수) 15:00</span>
	                    <hr style="width: 90%;">
	                </li>
	                <li>
	                    <p class="car-spec-title">반납 정보</p>
	                    <span>강남 지점</span> <br>
	                    <span>2023년 3월 30일 (목) 15:00</span>
	                    <hr style="width: 90%;">
	                </li>
	                <li>
	                    <p class="car-spec-title">차량 대여 요금</p>
	                    <p class="car-spec-price">4,350,000 원</p>
	                    <hr style="width: 90%;">
	                </li>
	                <li>
	                    <p class="car-spec-title">할인 요금</p>
	                    <p class="car-spec-price">- 0 원</p>
	                    <hr style="width: 90%;">
	                </li>
	                <li>
	                    <p class="car-spec-title">총 금액</p>
	                    <p class="car-spec-price"><strong>4,350,000 원</strong></p>
               		</li>
	            </ul>
	        </div>
	        <div id="sectionScript" class="res-section-div">
	            <ul id="sectionScriptContent">
	                <li class="section-script-title">예약 상세 내역</li>
	                <hr style="width: 90%;">
	                <table id="rentalContent">
	                    <tr>
	                        <td>대여 일시 / 지점</td>
	                        <td>2023년 3월 29일 (수) 15:00 / 강남 지점</td>
	                    </tr>
	                    <tr>
	                        <td>반납 일시 / 지점</td>
	                        <td>2023년 3월 30일 (목) 15:00 / 강남 지점</td>
	                    </tr>
	                    <tr>
	                        <td>차량 상세 정보</td>
	                        <td>롤스로이스 고스트</td>
	                    </tr>
	                </table>
	                <br>
	                <span>총 대여 기간</span>
	                <p id="rentalDate">1 일 0 시간 0 분</p>
	                <li class="section-script-title">예약자 정보</li>
	                <hr style="width: 90%;">
	                <table id="rentalMember">
	                    <tr>
	                        <td>이름</td>
	                        <td>이정환</td>
	                    </tr>
	                    <tr>
	                        <td>성별</td>
	                        <td>남자</td>
	                    </tr>
	                    <tr>
	                        <td>이메일</td>
	                        <td>orderby@naver.com</td>
	                    </tr>
	                    <tr>
	                        <td>전화번호</td>
	                        <td>010-1234-5678</td>
	                    </tr>
	                </table>
	            </ul>
	        </div>
	
	        <div id="button-div">
	            <button class="button button--aylen button--border-thin button--round-s"><span>다음</span></button>
	        </div>
	    </section>
		
		<%@ include file="/WEB-INF/views/common/footer.jsp" %>
		
		
	</body>
</html>