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
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${ path }/resources/static/assets/css/main.css" />
		
	    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    	<link rel="stylesheet" href="${ path }/resources/static/assets/css/slide.css">
		
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
	</head>
	<body class="homepage is-preload">
		<footer id="footer" class="wrapper">
			<div class="container">
				<h1>Order By</h1>
				<br>
				<p class="footer-information">
					사업자등록번호 : 123-45-6789 &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; 대표자 : 정주리
					&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; 주소 : 서울특별시 강남구 테헤란로14길 6 남도빌딩 4F  
				<br>
					전화번호 : 02-123-4567 &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; E-mail : orderby@naver.com
					&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;개인정보관리 책임자 : 한상우 (orderby@naver.com)
				<br> 
				영업시간 : AM 09 : 00 ~ PM 18 : 00&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; 점심시간 : AM 11 : 30 ~ PM 12 : 30
				</p>
				<div id="copyright">
					<ul>
						<li>&copy; Untitled.</li>
						<li>Design: Order By</li>
					</ul>
				</div>
			</div>
			
		</footer>
		
		<script>
	        new Swiper('.swiper-container', {
		        slidesPerView : 3, // 동시에 보여줄 슬라이드 갯수
		        spaceBetween : 30, // 슬라이드간 간격
		        slidesPerGroup : 1, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음
		
		        // 그룹수가 맞지 않을 경우 빈칸으로 메우기
		        // 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
		        loopFillGroupWithBlank : true,
		
		        loop : true, // 무한 반복
		
		        pagination : { // 페이징
		        	el : '.swiper-pagination',
		        	clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
		        },
		        navigation : { // 네비게이션
		        	nextEl : '.swiper-button-next', // 다음 버튼 클래스명
		        	prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
		        },
	        });
		</script>


		<!-- Scripts -->
<!-- 			<script src="assets/js/jquery.min.js"></script> -->
		<script src="${ path }/resources/static/assets/js/jquery.min.js"></script>
		<script src="${ path }/resources/static/assets/js/jquery.dropotron.min.js"></script>
		<script src="${ path }/resources/static/assets/js/browser.min.js"></script>
		<script src="${ path }/resources/static/assets/js/breakpoints.min.js"></script>
		<script src="${ path }/resources/static/assets/js/util.js"></script>
		<script src="${ path }/resources/static/assets/js/main.js"></script>
		
	</body>
	

</html>