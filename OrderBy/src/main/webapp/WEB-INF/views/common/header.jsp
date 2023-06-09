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
		<link rel="icon" type="image/png" href="${ path }/resources/images/common/favicon.png" />
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta name="_csrf" content="${_csrf.token}">
		<meta name="_csrf_header" content="${_csrf.headerName}">
		
		
		<link rel="stylesheet" href="${ path }/resources/static/assets/css/main.css" />
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
		<link rel="stylesheet" href="${ path }/resources/static/assets/css/slide.css">
		
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
		<!-- 상우 1 -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
			
		<title>Order By</title>
	</head>
	<body class="homepage is-preload">
		<div id="page-wrapper">
			<header id="header" class="wrapper" style="background: url('${ path }/resources/static/assets/css/images/banner.jpg'); center; center;">
				<!-- Logo -->
		        <div id="logo">
		          <h1>Order By</h1>
		          <p>단 한번의 선택으로 당신의 위상을 높여드립니다.</p>
		        </div>
		        <!-- Nav -->
		        <nav id="nav">
					<ul>
					  <li class="current"><a href="/">Order By</a></li>
					  <li>
					    <a href="#">대여</a>
					    <ul>
					      <li><a href="${ path }/rent/car">자동차</a></li>
					      <li><a href="${ path }/rent/motocycle">바이크</a></li>
					    </ul>
					  </li>
					  <li><a href="${path }/admin/priceproduct">차종 및 요금</a></li>
					  <li>
					    <a href="#">고객센터</a>
					    <ul>
					      <li><a href="${path }/notice/faq">자주 묻는 질문</a></li>
					      <li><a href="${path }/notice/notice">공지사항</a></li>
					    </ul>
					  </li>
					        <li><a href="no-sidebar.html">회사소개</a></li>
					</ul>
					

					
					<!-- 비회원 권한 -->
					<security:authorize access="isAnonymous()">
				      	<a href="${ path }/member/login" class="button style4 small" id="jrLoginBtn">Login</a>
					</security:authorize>
				
					<!-- 관리자빼고 유저만 보이는 권한 -->
					<!-- 권한이 M이 아닌 사용자 -->
					<security:authorize access="isAuthenticated()">
						<p style="position: fixed; top: 15px; right: 10px;">
       					<security:authentication property="principal.username"/>님 안녕하세요.
						<a href="${ path }/mypage/main" class="button style4 small" id="jrMypageBtn">Mypage</a>
						<form action="${ path }/member/logout" method="POST">
							<button class="button style4 small" id="jrLogoutBtn">Logout</button>
							<security:csrfInput/>
						</form>
					</security:authorize>

						<!-- 관리자 권한 -->
					
					<security:authorize access="hasAnyRole('ROLE_ADMIN', 'M')">
						<p style="position: fixed; top: 15px; right: 10px;">
       					<security:authentication property="principal.username"/>님 안녕하세요.
						<a href="${ path }/admin/view" class="button style4 small" id="jrAdminBtn">Admin</a>
						<form action="${ path }/member/logout" method="POST">
							<button class="button style4 small" id="jrLogoutBtn">Logout</button>
							<security:csrfInput/>
						</form>
					</security:authorize>
				

					
		        </nav>
			</header>
		</div>
			
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
	
	
	