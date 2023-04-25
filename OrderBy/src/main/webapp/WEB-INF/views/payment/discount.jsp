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
<!-- ajax 통신을 위한 meta tag -->
<meta name="_csrf" content="${_csrf.token}">
<meta name="_csrf_header" content="${_csrf.headerName}">
<security:csrfMetaTags/>
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
						<p class="car-spec-title">대여 정보</p> <span>강남 지점</span> <br> <span>2023년
							3월 29일 (수) 15:00</span>
					</li>
					<li class="car-spec-li">
						<p class="car-spec-title">반납 정보</p> <span>강남 지점</span> <br> <span>2023년
							3월 30일 (목) 15:00</span>
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
						<p id="dicPrice" class="car-spec-price">- 0 원</p>
						<div>
							<ul id="dicContent">
								<li id="couponList"></li>
								<li></li>
							</ul>
						</div>
					</li>
					<li id="totalPrice" class="car-spec-li">
						<p class="car-spec-title">총 금액</p>
						<c:choose>
	                    	<c:when test="${ not empty car.brand }">
	                    		<p class="car-spec-price" id="finalPrice"><strong><fmt:formatNumber value="${ car.price }" pattern="#,###"/> 원</strong></p>	
	                    	</c:when>
	                    	<c:when test="${ not empty motocycle.brand }">
	                    		<p class="car-spec-price" id="finalPrice"><strong><fmt:formatNumber value="${ motocycle.price }" pattern="#,###"/> 원</strong></p>
	                    	</c:when>
	                    </c:choose>
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
									<div id="memberRole">브론즈</div>
								</c:when>
								<c:when test="${ member.role eq 'S' }">
									<div id="memberRole" style="color: mintcream">실버</div>
								</c:when>
								<c:when test="${ member.role eq 'G' }">
									<div id="memberRole" style="color: gold">골드</div>
								</c:when>
								<c:when test="${ member.role eq 'D' }">
									<div id="memberRole" style="color: cadetblue;">다이아</div>
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
								<input id="usePoint" type="text" class="script-point" value="0"> p
								<input type="button" id="pointButton" value="모두 사용">
								<input type="button" id="applyButton" value="적용">
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
		
		<form name="payForm" action="${ path }/payment/success" method="POST">
			<security:csrfInput/>
			<input type="hidden" id="uid" name="uid"/>
			<input type="hidden" id="finPrice" name="finPrice"/>
			<input type="hidden" id="buyerName" name="buyerName"/>
		</form>
	</section>


	<script>
		let today = new Date();
		let year = today.getFullYear(); // 년도
		let month = today.getMonth(); // 월
		let date = today.getDate(); // 일
		let productNo = 0;
		let productName = "";
		let productFullName = "";
		let productPrice = 0;
		let productId = "";
		let productCate = "";
		let memberPoint = '${ member.point }';
		
		const character = ['1','2','3','4','5','6','7','8','9','0','A','B','C','D','E','F',
			'G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V',
			'W','X','Y','Z'];
		
		for(let i = 0; i < 3; i++) {
			let randomIndex = Math.floor(Math.random()*35+1);
			productId += character[randomIndex];
		};
		
		if('${car.no}' === null || '${car.no}' === '') {
			productNo = '${ motocycle.no }';
			productName = '${ motocycle.name }';
			productFullName = '${ motocycle.brand } ${ motocycle.name }';
			productPrice = '${ motocycle.price }';
			productCate = 'M';
		} else {
			productNo = '${ car.no }';
			productName = '${ car.name }';
			productFullName = '${ car.brand } ${ car.name }';
			productPrice = '${ car.price }';
			productCate = 'C';
		}
		
		
		productId = productCate + productId + year + month + date + 0 + productNo;
		
		$(document).ready(() => {
			
			$('#prevButton').on('click', () => {
				location.href = "${ path }/payment/reservation?name="+productName+"&price="+productPrice;
			});
			
			
			function comma(num) {
			    num = String(num);
			    return num.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
			};			
			
			// 멤버십 할인 및 쿠폰 할인 스크립트 문
			let price = productPrice;
			let discount = Number(0);
			$('#disCoupone').change(function() {
				price = productPrice;
				discount = Number(0);
				let ulNode = document.getElementById('dicContent');
				let liNode = document.createElement('li');
				let disPercent = 1;
				
				if($(this).val() === '' || $(this).val() === null) {
					discount = Number(0);
					price = productPrice;
					
					$('#dicPrice').html('- '+ discount +' 원');
					$('#couponList').html('');
					$('#finalPrice').html('<strong>' + comma(price) + ' 원</strong>');
				}; 
				
			
				for(var i = 0; i < ${coupons}.length; i++) {
					if($(this).val() == ${coupons}[i].name) {
						disPercent = (1-((${coupons}[i].percent)/100));
						discount = Math.floor(price * ((${coupons}[i].percent)/100));
						price = Math.round(price * disPercent);
						
						$('#finalPrice').html('<strong>' + comma(price) + ' 원</strong>');
						$('#dicPrice').html('- ' + comma(discount) + ' 원');

						$('#couponList').html(${coupons}[i].name + '('+${coupons}[i].percent+' % 할인)');
						
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

			
			$('#applyButton').on('click', () => {
				if(document.getElementById("usePoint").value >= 50000) {
					if(confirm("정말 적용 하시겠습니까? 한 번 적용되면 변경하실 수 없습니다.")) {
						let point = document.getElementById("usePoint").value;
						
						price = price - point; 
						discount = discount + Number(point);
						memberPoint = memberPoint - point;
						
						document.getElementById('usePoint').disabled = true;
						document.getElementById('applyButton').disabled = true;
						
						$('#dicPrice').html('- ' + comma(discount) + ' 원');
						$('#couponList+li').html(point + ' 포인트 사용');
						$('#finalPrice').html('<strong>' + comma(price) + ' 원</strong>');
					} else {
						alert("취소 되었습니다.");
					}
					
				} else {
					alert("누적 포인트가 50000 포인트가 아닙니다.");
				}
				
				
			})
			
		});
		
		// 결제 로직
		// 결제 사전 검증
// 		$.ajax({
// 			url: "https://api.iamport.kr/payments/prepare",
// 			beforeSend: function(xhr) {
//         		xhr.setRequestHeader($("meta[name='_csrf_header']").attr("content"), $("meta[name='_csrf']").attr("content"));
//         		xhr.setRequestHeader("Authorization", "검증코드");
//         	},
// 			method: "POST",
// 			contentType: "application/json; charset=utf-8",
// 			data: {
// 				merchant_uid: productId, // 가맹점 주문번호
// 				amount: 100 // 결제 예정금액
// 			},
// 			success: (result) => {
// 				console.log(result);  
// 			},
// 			error: (error) => {
// 				console.log(error);  
// 			}
// 		});
		
		// 객체 초기화 하기 
		IMP.init("imp53176208");
		
		function requestPay() {
				
			
				IMP.request_pay({
					pg: "danal_tpay.9810030929",
					pay_method: "card",
					merchant_uid: productId,   // 주문번호
					name: productFullName + " 1일",
					amount: 100,                         // 숫자 타입
					buyer_email: "${member.email}",
					buyer_name: "${member.name}",
					buyer_tel: "${member.phone}",
					buyer_addr: "${member.address}",
				}, function (rsp) { // callback
					if (rsp.success) {
					  // 결제 성공 시 로직
					  console.log(rsp);
					  var paymentData = {
							  method: rsp.pay_method,
						      uid: rsp.merchant_uid,
						      productName: rsp.name,
						      productCate: productCate,
						      productNo: productNo,
						      totPrice: productPrice,
						      finPrice: rsp.paid_amount,
						      email: rsp.buyer_email,
						      name: rsp.buyer_name,
						      tel: rsp.buyer_tel,
						      memberPoint: memberPoint
						      };
					  
					  $.ajax({
					        url: "${path}/payment/pay",
					        method: "POST",
					        beforeSend: function(xhr) {
			            		xhr.setRequestHeader($("meta[name='_csrf_header']").attr("content"), $("meta[name='_csrf']").attr("content"));
			            	},
					        data: JSON.stringify(paymentData),
					        contentType: "application/json; charset=utf-8",
					        success: function (response) {
					          console.log(response);
					          // 성공적으로 처리된 경우
					          $('#uid').attr('value', response.uid);
					          $('#finPrice').attr('value', response.finPrice);
					          $('#buyerName').attr('value', response.name);
					          
					          document.payForm.submit();
					        },
					        error: function (xhr, status, error) {
					          console.error(xhr);
					          // 에러 발생 시 처리할 로직
					        }
					  });
					  // 회원 검증 필요, 포인트 차감 필요
					} else {
					  // 결제 실패 시 로직
					  alert("결제가 취소 되었습니다.");
					  console.log(rsp);
					  // ajax 테스트
					  /*
					  let data = {
						  uid: rsp.merchant_uid,
						  method: rsp.pay_method,
					  };
					  
					$.ajax({
						url: "${path}/payment/pay",
						method: "POST",
						beforeSend: function(xhr) {
		            		xhr.setRequestHeader($("meta[name='_csrf_header']").attr("content"), $("meta[name='_csrf']").attr("content"));
						},
						data: JSON.stringify(data),
						contentType: "application/json; charset=UTF-8",
						success: function(response) {
							console.log(response);
						},
						error: (error) => {
							console.log(error);
						}
					  });
					  */
					  
					}
				});
		};
			
	</script>

</body>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>

</html>