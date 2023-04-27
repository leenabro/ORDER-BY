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


<link rel="shortcut icon" href="#">

<script src="${ path }/resources/js/jquery-3.6.3.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<title>비밀번호 찾기</title>
</head>
<body>

	<h1>비밀번호 찾기</h1>
	<div class="search" align="center">
		<form action="${ path }/member/findPwResult" method="post">
		<security:csrfInput/>
			<label>아이디 : <input type="text" name="id" required/></label><br><br>
			<div class="btnAll" align="center">
			     <input type="submit" id="btn1" value="검색">
			     <button id="btn2" onclick="window.close();">취소</button>
			</div>
		</form>
	</div>



</body>
</html>