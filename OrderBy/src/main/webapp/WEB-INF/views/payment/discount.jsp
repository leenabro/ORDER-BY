<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<c:set var="path" value="${ pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>할인 / 결제</title>
	<link rel="stylesheet" href="${ path }/resources/css/payment/discount.css">
	<!-- iamport.payment.js -->
	<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
</head>

<%@ include file="/WEB-INF/views/common/header.jsp"%>

<body class="homepage is-preload">
	<section id="disSection" class="wrapper style3">
		<div class="title">
			<strong id="disTitle">할인 / 결제</strong>
		</div>
		<div>
			<div id="carIcon">
				<ul>
					<li class="car-icon"><img id="carIcon1"
						src="${ path }/resources/images/payment/caricon_01.png"><br>
						<p id="step1" class="step" style="filter: opacity(0.3)">예약 /
							약관</p></li>
					<li class="car-icon"><img id="carIcon2"
						src="${ path }/resources/images/payment/caricon_01.png"><br>
						<p id="step2" class="step">할인 / 결제</p></li>
					<li class="car-icon"><img id="carIcon3"
						src="${ path }/resources/images/payment/caricon_01.png"><br>
						<p id="step3" class="step" style="filter: opacity(0.3)">완료</p></li>
				</ul>
				<div id="navBar"></div>
			</div>
		</div>
		<br>
		<br>
		<div class="shortContainer">
			<div id="sectionImg" class="res-section-div">
				<div id="carName">
					<p style="padding: 25px 0px; margin: 0;">${ car.brand }${ car.name }</p>
				</div>
				<div id="carImg">
					<img
						src="${ path }/resources/images/car/${ car.brand }/${ car.name }.png">
				</div>
				<ul>
					<li class="car-spec-li">
						<p class="car-spec-title">대여 정보</p> <span>강남 지점</span> <br> <span>2023년
							3월 29일 (수) 15:00</span>
					</li>
					<li class="car-spec-li">
						<p class="car-spec-title">반납 정보</p> <span>강남 지점</span> <br> <span>2023년
							3월 30일 (목) 15:00</span>
					</li>
					<li class="car-spec-li">
						<p class="car-spec-title">차량 대여 요금</p>
						<p class="car-spec-price">
							<fmt:formatNumber value="${ car.price }" pattern="#,###" />
							원
						</p>
					</li>
					<li class="car-spec-li">
						<p class="car-spec-title">할인 요금</p>
						<p id="dicPrice" class="car-spec-price">- 0 원</p>
						<div>
							<ul id="dicContent">
							</ul>
						</div>
					</li>
					<li id="totalPrice" class="car-spec-li">
						<p class="car-spec-title">총 금액</p>
						<p class="car-spec-price" id="finalPrice">
							<strong><fmt:formatNumber value="${ car.price }"
									pattern="#,###" /> 원</strong>
						</p>
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
							<c:choose>
								<c:when test="${ member.role eq 'B' }">
									<div id="memberRole">브론즈(0 %)</div>
								</c:when>
								<c:when test="${ member.role eq 'S' }">
									<div id="memberRole" style="color: mintcream">실버(5 %)</div>
								</c:when>
								<c:when test="${ member.role eq 'G' }">
									<div id="memberRole" style="color: gold">골드(10 %)</div>
								</c:when>
								<c:when test="${ member.role eq 'D' }">
									<div id="memberRole" style="color: cadetblue;">다이아(20 %)</div>
								</c:when>
							</c:choose>
						</div>
						<div class="scriptRow">
							<span>지점 이벤트</span>
							<div>해당 지점 이벤트 없음</div>
						</div>
						<div class="scriptRow">
							<span>할인 쿠폰</span>
							<div>
								<select name="coupone" id="disCoupone">
									<option value="">--------------</option>
									<c:forEach var="coupon" items="${ coupon }">
										<option value="${ coupon.name }">${ coupon.name }</option>
									</c:forEach>
								</select>
							</div>
							<div>
								<p
									style="font-size: 0.5em; color: red; vertical-align: top; margin-left: 10px">쿠폰
									최대 사용 매수는 1 매입니다.</p>
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
								<span><input id="memberPoint" type="text" value="${ member.point }"></input></span>&nbsp;p
							</div>
						</div>
						<div class="scriptRow">
							<span style="padding-top: 20px;">사용할 포인트</span>
							<div>
								<input id="usePoint" type="text" class="script-point" value="0"> p <input
									type="button" id="pointButton" value="모두 사용">
								<div>
									<p id="pointMsg" style="font-size: 0.5em; color: red; vertical-align: top;">누적 포인트 50,000 포인트 이상이어야 사용 가능</p>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
		<hr>
		<p style="text-align: center;"><strong>차량 렌트 내용을 확인하였으며, 정보 제공 등에 동의합니다.</strong></p>
		<div id="button-div">
			<ul>
				<li class="button-list">
					<button id="prevButton"
						class="button button--aylen button--border-thin button--round-s">
						<span>이전</span>
					</button>
				</li>
				<li class="button-list">
					<button id="payments"
						class="button button--aylen button--border-thin button--round-s"
						onclick="requestPay()">
						<span>결제</span>
					</button>
				</li>
			</ul>
		</div>
	</section>


	<script>
		let today = new Date();
		let year = today.getFullYear(); // 년도
		let month = today.getMonth(); // 월
		let date = today.getDate(); // 일
		let carNo = '${ car.no }';
		
		let productId = "";
		const character = ['1','2','3','4','5','6','7','8','9','0','A','B','C','D','E','F',
			'G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V',
			'W','X','Y','Z'];
		
		for(let i = 0; i < 3; i++) {
			let randomIndex = Math.floor(Math.random()*36+1);
			productId += character[randomIndex];
		};
		
		productId = productId + year + month + date + 0 + carNo;
		
		// 객체 초기화 하기 
		IMP.init("imp53176208");
		
		function requestPay() {
				IMP.request_pay({
					pg: "danal_tpay.9810030929",
					pay_method: "card",
					merchant_uid: productId,   // 주문번호
					name: "${ car.brand } ${ car. name } 1일",
					amount: 100,                         // 숫자 타입
					buyer_email: "leenabro.be@gmail.com",
					buyer_name: "홍길동",
					buyer_tel: "010-4242-4242",
					buyer_addr: "서울특별시 강남구 신사동",
					buyer_postcode: "01181"
				}, function (rsp) { // callback
					if (rsp.success) {
					  // 결제 성공 시 로직
					  console.log(rsp);
					  // 회원 검증 필요, 포인트 차감 필요
					} else {
					  // 결제 실패 시 로직
					  alert("결제가 취소 되었습니다.");
					  $.ajax({
						 type: 'POST',
						 url: '${ path }/payment/success',
						 dataType: 'json',
						 data: {
							method: rsp.pay_method,
							merchant_uid: rsp.merchant_uid,
							name: rsp.name,
							amount: rsp.amount,
							buyer_email: rsp.buyer_email,
							buyer_name: rsp.buyer_name,
							buyer_tel: rsp.buyer_tel,
							buyer_addr: rsp.buyer_addr,
							buyer_postcode: rsp.buyer_postcode
						 },
						 success: (obj) => {
							 console.log("success");
							 location.replace("${ path }/payment/success");
						 }
					  });
					}
				});
		};
				
		$(document).ready(() => {
			$('#prevButton').on('click', () => {
				location.href = "${ path }/payment/reservation?name=${ car.name }&price=${ car.price }";
			});
			
			function comma(num) {
			    num = String(num);
			    return num.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
			};				
			
			// 멤버십 할인 및 쿠폰 할인 스크립트 문
			let price = ${ car.price };
			let role = document.getElementById('memberRole').innerText;
			let discount = 0;
			let ulNode = document.getElementById('dicContent');
			let liNode = document.createElement('li');
			
			console.log(role);
			if(role === '실버(5 %)') {
				discount = price * 0.05;
				price = price * 0.95;
				liNode.textContent = role + " 할인";
				ulNode.appendChild(liNode);
				
				$('#dicPrice').html('- '+ comma(discount) +' 원');
				$('#finalPrice').html('<strong>' + comma(price) + ' 원</strong>');
			}
			
			
			$('#disCoupone').change(function() {
				let disPercent = 1;
				
				if($(this).val() === '' && $(this).val() === null) {
					
					$('#dicPrice').html('- '+ comma(discount) +' 원');
					$('#dicContent').html('');
					$('#finalPrice').html('<strong>' + comma(price) + ' 원</strong>');
				}; 
				
			
				for(var i = 0; i < ${coupons}.length; i++) {
					if($(this).val() == ${coupons}[i].name) {
						disPercent = (1-((${coupons}[i].percent)/100));
						discount = Math.floor(price * ((${coupons}[i].percent)/100));
						price = Math.round(price * disPercent);
						
						
						$('#finalPrice').html('<strong>' + comma(price) + ' 원</strong>');
						$('#dicPrice').html('- ' + comma(discount) + ' 원');
						
						liNode.textContent = ${coupons}[i].name + '('+${coupons}[i].percent+' % 할인)';
						ulNode.appendChild(liNode);
						
					};
				};
				
				
			});
			
			$('#pointButton').on('click', () => {
				let toPoint = document.getElementById("memberPoint").value;
				
				document.getElementById("usePoint").value = toPoint;
			})
			
			$('#usePoint').keyup((event) => {
				let point = 0;
				if($(event.target).val() === null || $(event.target).val() === '') {
					point = 0;
				} else {
					point = parseInt($(event.target).val());
				}
				let toPoint = parseInt(document.getElementById("memberPoint").value);
				
				if(point > toPoint) {
					document.getElementById("usePoint").value = toPoint;		
				} else {
					document.getElementById("usePoint").value = point;
				}
				
			});
			
			
		});
			
	</script>

</body>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>

</html>