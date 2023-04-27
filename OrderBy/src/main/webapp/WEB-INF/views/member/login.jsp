<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>

<c:set var="path" value="${ pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- ajax 통신을 위한 meta tag -->
<meta name="_csrf" content="${_csrf.token}">
<meta name="_csrf_header" content="${_csrf.headerName}">
<security:csrfMetaTags/>

<link rel="stylesheet" href="${path}/resources/css/member/login.css"/>
<link rel="stylesheet" href="${path}/resources/js/member/login.js"/>

<link rel="shortcut icon" href="#">

<script src="${ path }/resources/js/jquery-3.6.3.js"></script>
<script src="${ path }/resources/js/member/login.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<title>로그인</title>
</head>
<body>
    <div class="main">
		<!--웹페이지 상단-->
		<header>
			<!--language select-->

			<div class="select-lang">
				<select id="id-lang" class="selectbox" name="lang" onchange="chageLangSelect()">
					<option value="ko">한국어</option>
					<option value="en">English</option>
				</select>
			</div>

			<!--LOGO-->
			<div class="logo">
				<a href="#" target="_blank" title="홈페이지"><img src="" class="image"></a>
			</div>
		</header>

		<!--로그인 부분-->
		<section class="login-wrap">
			<security:authorize access="isAnonymous()">
				<!-- 폼은 ${path}/member/login 으로 하면 필터 못타서 ${path}/login으로 해줘야함 -->
				<form action="${path}/login" method="POST">
					<div class="login-id-wrap">
						<input id="input-id" name="id" placeholder="아이디" type="text"></input>
					</div>
					<div class="login-pw-wrap">
						<input id="input-pw" name="password" placeholder="비밀번호" type="password" autoComplete="off"></input>
					</div>
					<div class="login-btn-wrap">
						<security:csrfInput/>
						<button id="login-btn" type="submit">로그인</button>
					</div>
					<div class="under-login">
						<span class="stay-check">
							<input id="stay-checkbox" type="checkbox"></input>
							<label for="stay-checkbox" id="stay-text" name="remember-me">로그인 상태 유지</label>
						</span>
						<span id="ip-check">
							<a target="_blank" title="IP 보안">IP 보안</a>
							<input id="ip-checkbox" type="checkbox" style="display:none;" onclick="ipCheck()"></input>
							<label for="ip-checkbox">
								<span id="ip-context">OFF</span>
							</label>
							<!-- IP 보안 <input class="ip-checkbox" type="checkbox" name="stay-btn" value="stay"> -->
						</span>
					</div>
				</form>
			</security:authorize>
		</section>

		<!--간편한 로그인 부분-->
		<section id="easy-login-wrap">

			<div class="easy-login">
				<p id="easy-login-text">또는</p>
			</div>

			<div id="easy-login-wrap-ko">
				<div class="easy-login-box-ko">
					<div class="qr-login-ko" style="background-color: transparent; border: 0;">
						<!-- 소셜로그인 영역 -->
					    <!-- 네이버 로그인 버튼 노출 영역 -->
						<div align="center" style="margin: 0; background-color: #03c75a;">
							<a id="naverLoginBtn" href="${naverAuthUrl}" style="margin: 0px; background-color: green; cursor: pointer;">
								<img margin="0" width="200" height="50" src="${ path }/resources/images/member/btnG_완성형.png" style="margin: 0px; background-color: #03c75a; cursor: pointer;">
							</a>
						</div>
					    <!-- 카카오 로그인 버튼 노출 영역 -->
						<div align="center" style="margin: 0; background-color: #FEE500; margin-top: 10px;">
							<a id="kakaoLoginBtn" href="${kakaoAuthUrl}" style="margin: 0px; background-color: green; cursor: pointer;">
								<img margin="0" width="200" height="50" src="${ path }/resources/images/member/kakao_login_large_narrow.png" style="margin: 0px; background-color: #FEE500; cursor: pointer;">
							</a>
						</div>
					</div>



					<div class="facebook-login">
						<img src="#">
						<a href="#" target="_blank" title="일회용번호 로그인">Facebook</a>
					</div>
					<div class="line-login">
						<img src="#">
						<a href="#" target="_blank" title="일회용번호 로그인">line</a>
					</div>
				</div>

			</div>

			<div id="easy-login-wrap-en" style="display:none;">
				<div class="easy-login-box-en">

					<div class="qr-login-en">
						<img src="#">
						<a href="#" target="_blank" title="QR코드 로그인">Sign
							in with QR code</a>
					</div>
					<div class="facebook-login">
						<img src="#">
						<a href="#" target="_blank" title="일회용번호 로그인">Facebook</a>
					</div>
					<div class="line-login">
						<img src="#">
						<a href="#" target="_blank" title="일회용번호 로그인">line</a>
					</div>
				</div>
			</div>

		</section>

		<!--class,PW 찾기 및 회원가입 부분-->
		<section class="find-signup-wrap">

			<div id="find-signup-wrap-ko">
				<span class="find-id">
					<a href="#" title="비밀번호 찾기" onclick="window.open('${ path }/member/findId', '아이디찾기', 'width=500, height=400');">아이디 찾기</a>
				</span>

				<span class="find-pw">
					<a href="#" title="비밀번호 찾기" onclick="window.open('${ path }/member/findPwd', '비밀번호찾기', 'width=500, height=400');">비밀번호 찾기</a>
				</span>

				<span class="sign-up">
					<a href="${ path }/member/enroll"
						title="회원가입">회원가입</a>
				</span>
			</div>

			<div id="find-signup-wrap-en" style="display:none;">
				
				<span class="find-id-en">
					<span>Forgot your</span> 
					<a href="#" title="Id?" onclick="window.open('${ path }/member/findId', '아이디찾기', 'width=500, height=400');">Id?</a>
					
				</span>

				<span class="find-pw">
					<span>or</span>
					<a href="#" title="Password?" onclick="window.open('${ path }/member/findPwd', '비밀번호찾기', 'width=500, height=400');">Password?</a>
				</span>

				<span class="sign-up">
					<a href="#" target="_blank"
						title="sign up">Sign up</a>
				</span>
			</div>


		</section>

		<!--저작권 정보-->
		<footer>
			<div class="copyright-wrap">
				<span>Copyright © Order By Corp. All Rights Reserved.</span>
			</div>
		</footer>

	</div>
<script src="${path}/resources/js/member/login.js"></script>
</body>
</html>