<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<c:set var="path" value="${ pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${path}/resources/css/member/login.css">
<script src="${ path }/resources/js/jquery-3.6.3.js"></script>
<title>로그인</title>
</head>
<body>
<%-- 		<form name="loginForm" action="${ path }/member/login" method="POST"> --%>
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
		
					<!--NAVER LOGO-->
					<div class="logo">
						<a href="https://www.naver.com/" target="_blank" title="네이버 홈페이지"><img src="image/NAVER_LOGO.png"
								class="image"></a>
					</div>
				</header>
		
		
				<c:if test="${ empty loginMember }">
					<form name="loginForm" action="${ path }/member/login" method="POST">
						<!--로그인 부분-->
						<section class="login-wrap">
				
							<div class="login-id-wrap">
								<input id="input-id" name="mId" placeholder="아이디" type="text"></input>
							</div>
							<div class="login-pw-wrap">
								<input id="input-pw" name="mPassword" placeholder="비밀번호" type="password"></input>
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
									<a href="https://nid.naver.com/login/ext/help_ip3.html" target="_blank" title="네이버 IP 보안">IP 보안</a>
									<input id="ip-checkbox" type="checkbox" style="display:none;" onclick="ipCheck()"></input>
									<label for="ip-checkbox">
										<span id="ip-context">OFF</span>
									</label>
									<!-- IP 보안 <input class="ip-checkbox" type="checkbox" name="stay-btn" value="stay"> -->
								</span>
							</div>
						</section>
					</form>
				</c:if>
				
				<!--간편한 로그인 부분-->
				<section id="easy-login-wrap">
		
					<div class="easy-login">
						<p id="easy-login-text">더욱 간편한 로그인</p>
					</div>
		
					<div id="easy-login-wrap-ko">
						<div class="easy-login-box">
							<div class="qr-login">
								<a href="https://nid.naver.com/nidlogin.login?mode=qrcode" target="_blank" title="QR코드 로그인">QR
									코드 로그인</a>
							</div>
		
							<div class="onetime-login">
								<a href="https://nid.naver.com/nidlogin.login?mode=number&url=https%3A%2F%2Fwww.naver.com&locale=ko_KR&svctype=1"
									target="_blank" title="일회용번호 로그인">일회용 번호 로그인</a>
							</div>
						</div>
					</div>
		
					<div id="easy-login-wrap-en" style="display:none;">
						<div class="easy-login-box-en">
		
							<div class="qr-login-en">
								<img src="image/qr.png">
								<a href="https://nid.naver.com/nidlogin.login?mode=qrcode" target="_blank" title="QR코드 로그인">Sign
									in with QR code</a>
							</div>
							<div class="facebook-login">
								<img src="image/facebook.png">
								<a href="https://www.facebook.com/" target="_blank" title="일회용번호 로그인">Facebook</a>
							</div>
							<div class="line-login">
								<img src="image/line.png">
								<a href="https://line.me/ko/" target="_blank" title="일회용번호 로그인">line</a>
							</div>
						</div>
					</div>
		
				</section>
		
				<!--class,PW 찾기 및 회원가입 부분-->
				<section class="find-signup-wrap">
		
					<div id="find-signup-wrap-ko">
						<span class="find-id">
							<a href="https://nid.naver.com/user2/help/idInquiry?lang=ko_KR" target="_blank" title="QR코드 로그인">아이디
								찾기</a>
						</span>
		
						<span class="find-pw">
							<a href="https://nid.naver.com/user2/help/pwInquiry?lang=ko_KR" target="_blank"
								title="일회용번호 로그인">비밀번호 찾기</a>
						</span>
		
						<span class="sign-up">
<%-- 							<a onclick="location.href='${path}/member/enroll'" title="회원가입">회원가입</a> --%>
							<a href="${path}/member/enroll" title="회원가입">회원가입</a>
						</span>
					</div>
		
					<div id="find-signup-wrap-en" style="display:none;">
						
						<span class="find-id-en">
							<span>Forgot your</span> 
							<a href="https://nid.naver.com/user2/help/idInquiry?lang=ko_KR" target="_blank" title="QR코드 로그인">Username</a>
						</span>
		
						<span class="find-pw">
							<span>or</span> 
							<a href="https://nid.naver.com/user2/help/pwInquiry?lang=ko_KR" target="_blank"
								title="일회용번호 로그인">Password?</a>
						</span>
		
						<span class="sign-up">
							<a href="https://nid.naver.com/user2/V2Join?m=agree&lang=ko_KR" target="_blank"
								title="일회용번호 로그인">Sign up</a>
						</span>
					</div>
		
		
				</section>
		
				<!--저작권 정보-->
				<footer>
					<div class="copyright-wrap">
						<span> <img src="image/NAVER_LOGO.png" width=70px> Copyright © NAVER Corp. All Rights Reserved.</span>
					</div>
				</footer>
			</div>
<!-- 		</form> -->

<script src="${path}/resources/js/member/login.js"></script>
</body>
</html>