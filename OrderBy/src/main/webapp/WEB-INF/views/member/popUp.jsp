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


<link rel="stylesheet" href="${path}/resources/css/member/popUp.css"/>
<link rel="stylesheet" href="${path}/resources/js/member/popUp.js"/>
<link rel="shortcut icon" href="#">

<script src="${ path }/resources/js/jquery-3.6.3.js"></script>
<script src="${ path }/resources/js/member/popUp.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<!-- =============================================================================================================== -->
<title>비회원 문의</title>
<!-- =============================================================================================================== -->
</head>
<body>
<!-- =============================================================================================================== -->
	<div id="popFloating-banner">
		<h2>비회원 렌트 문의</h2>
<%-- 		<form id="popup-form" action="${ path }/popqna" method="POST"> --%>
		<security:csrfInput/>
			<input type="hidden" id="popNo">
			<label for="popName" class="popLabel">이름</label>
			<input type="text" id="popName" name="popName" required>
			<label for="popEmail" class="popLabel">이메일</label>
			<input type="email" id="popEmail" name="popEmail" required>
			<label for="popPhone" class="popLabel">연락처</label>
			<input type="tel" id="popPhone" name="popPhone" required>
			<label for="popContent" class="popLabel">문의 내용</label>
			<textarea id="popContent" name="popContent" onkeypress="onTestChange(event);" required></textarea>
			<input type="hidden" id="popDate">
			<input type="hidden" id="popStatus">
			<input type="submit" id="popSubmit" value="문의하기">
<!-- 		</form> -->
		<button id="popHide-banner" onclick="hidePopup()">24시간 열지않기</button>
	</div>
<!-- =============================================================================================================== -->    
</body>
</html>