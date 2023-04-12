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
<link rel="stylesheet" href="${path}/resources/css/member/enroll.css"/>
<link rel="stylesheet" href="${path}/resources/js/member/enroll.js"/>
<link rel="shortcut icon" href="#">

<script src="${ path }/resources/js/jquery-3.6.3.js"></script>
<script src="${ path }/resources/js/member/enroll.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<title>회원가입</title>
</head>



<body>
    <!-- 사전.... ㅠㅠ
        한영모드 옵션 팁!
        <h3>한영모드</h3>
        <input style="ime-mode:auto"></input>
        
        <h3>첫 로딩시 한글모드(영어모드 가능)</h3>
        <input style="ime-mode:active"></input>
        
        <h3>첫 로딩시 영어모드(한글모드 가능)</h3>
        <input style="ime-mode:inactive"></input>
        
        <h3>영문만 가능(한글모드 불가)</h3>
        <input style="ime-mode:disabled"></input>
        
        autocapitalize : 사용자 영어립력에 대하여 자동 대문자 변환
        autocomplete : 자동완성기능 (off할거임)
    -->
    
        <!--웹페이지 상단-->
        <header>
            <!-- LOGO -->
            
        </header>
        
        
        <!--회원가입 부분-->
	<c:if test="${ empty loginMember }">
	    
	        <fieldset style="border: none; margin: 0; padding: 0;">
	            <div class="mainEnroll">
		            <section class="signupWrap">
		                    <!-- 아이디 -->
                    	<form name="signupForm" id="signupForm" action="#" method="POST" onsubmit="return checkAll();">
			                <div>
			                    <h3>아이디</h3>
			                    <label for="memberId" class="signupInput">
			                        <input name="memberId" id="memberId" type="text" style="ime-mode:disabled" autocomplete="off" maxlength="20" placeholder="4 ~ 20자리 / 영문, 숫자, 특수문자 '_'사용가능" oninput="memberIdch(this)" required autofocus />
			                        <input type="hidden" id="idDoubleChk"/>
			                        <!-- <span class="bnum_btn_wrap">
			                            <button id="bnum_btn" onclick="confirmId(event)">중복확인</button>
			                        </span> -->
			                        
			                    </label>
		                        <!-- 조건 3개 -->
		                        <!--focus 시 텍스트 -->
		                        <p class="msgInvalId" id="idFocusMsg" style="display:none; color:gray;"></p>
		                        <!-- 오류 시 텍스트 -->
		                        <p class="msgInvalId" id="idCheckMsg1" style="display:none; color:red;"></p>
		                        <!-- 완료 시 텍스트 -->
		                        <p class="msgInvalId" id="idCheckMsg2" style="display:none; color:green;"></p>
			
			
			                    <h3>비밀번호</h3>
			                    <label for="memberPwd1" class="lockBox">
			                        <!-- <input id="memberPwd" type="text"></input> -->
			                        <input name="memberPwd1" id="memberPwd1" type="text" style="ime-mode:disabled" autocomplete="off" minlength="8" maxlength="16" placeholder="비밀번호 입력" oninput="memberPwd1ch()" required autofocus />
			                        <!-- <span class="pwdLock"> -->
		                            <img src="${ path }/resources/images/pngwing1.png" id="eye" class="pwdLock">
			                        <!-- </span> -->
			                    </label>
		                        <!-- 조건 3개 -->
		                        <!--focus 시 텍스트 -->
		                        <p class="msgInvalId" id="password1FocusMsg" style="display:none; color:gray;"></p>
		                        <!-- 오류 시 텍스트 -->
		                        <p class="msgInvalId" id="password1warningMsg" style="display:none; color:red;"></p>
		                        <!-- 완료 시 텍스트 -->
		                        <p class="msgInvalId" id="password1goodMsg" style="display:none; color:green;"></p>
			
			
			                    <h3>비밀번호 재확인</h3>
			                    <label for="memberPwd2" class="lockBox">
			                        <input name="memberPwd2" id="memberPwd2" type="text" style="ime-mode:disabled" autocomplete="off" maxlength="16" placeholder="비밀번호 재확인" oninput="memberPwd2ch()" required autofocus />
			                    </label>
		                        <!-- 조건 3개 -->
		                        <!--focus 시 텍스트 -->
		                        <p class="msgInvalId" id="password2FocusMsg" style="display:none; color:gray;" ></p>
		                        <!-- 오류 시 텍스트 -->
		                        <p class="msgInvalId" id="password2warningMsg" style="display:none; color:red;"></p>
		                        <!-- 완료 시 텍스트 -->
		                        <p class="msgInvalId" id="password2goodMsg" style="display:none; color:green;"></p>
			                </div>
						</form>
			
						<form action="" name="YYMMDDForm" onsubmit="return check_submit()">
			                <div style="margin-top: 35px;">
			                    <!--이름,생년월일,성별,이메일-->
			                    <h3>이름</h3>
			                    <label for="memberName" class="signupInput">
			                        <input name="memberName" id="memberName" type="text" style="ime-mode:disabled" autocomplete="off" maxlength="10" placeholder="이름 입력" oninput="$memberName(this)" required autofocus />
			                    </label>
			                    <p class="msgInvalId" id="memberNameMsg" name="memberNameMsg" style="display:none;"></p>
			                    <h3>생년월일</h3>
		                        <div class="YYMMDD" id="YYMMDD">
		                            <select class="YYMMDD" id="memberBirthYY" name="memberBirthYY">
		                                <option disabled selected value="">출생 연도</option>
		                            </select>
		                            <select class="YYMMDD" id="memberBirthMM" name="memberBirthMM">
		                                <option disabled selected value="">월</option>
		                            </select>
		                            <select class="YYMMDD" id="memberBirthDD" name="memberBirthDD">
		                                <option disabled selected value="">일</option>
		                            </select>
		                        </div>
			                    <p class="YYMMDD" id="memberBirthMsg" name="memberBirthMsg" style="display:none;"></p>
				
			                    <h3>성별</h3>
			                    <label for="genderSelectBox" class="signupInput">
			                        <select name="genderSelectBox" id="genderSelectBox">
			                            <option value="" selected disabled>성별</option>
			                            <option name="genderSelectBox" value="man">남자</option>
			                            <option name="genderSelectBox" value="woman">여자</option>
			                        </select>
			                        <input type="text" id="genderValueHtml" style="display:none;" />
			                    </label>
			                    <p class="YYMMDD" id="memberGenderMsg" name="memberGenderMsg" style="display:none;"></p>
			                    
			                    
			                    <!-- 주소 영역 -->
			                    <h3>주소</h3>
			                    <div class="ADD0">
			                        <div class="ADD" id="ADD">
			                            <input type="text" id="sample6_postcode" class="address1" placeholder="우편번호">
			                            <input type="button" onclick="sample6_execDaumPostcode()" class="addressBtn" value="우편번호 찾기"><br>
			                        </div>
			                        <input type="text" id="sample6_address" class="address2" placeholder="주소"><br>
			                        <input type="text" id="sample6_detailAddress" class="address3" placeholder="상세주소">
			                        <input type="text" id="sample6_extraAddress" class="address4" placeholder="참고항목" style="display: none;">
			                    </div>
			                    
			                    <!-- 휴대전화 영역 -->
			                    <h3>휴대전화</h3>
			                    <label for="memberPhone" class="signupInput">
			                        <input name="memberPhone" id="memberPhone" type="text" style="ime-mode:disabled" autocomplete="off" maxlength="13" placeholder="전화번호 입력" oninput="$memberPhone(this)" autofocus />
			                    </label>
			                    <p class="msgInvalId" id="memberPhoneMsg" name="memberPhoneMsg" style="display:none;"></p>
			                </div>
						</form>
						
						<form action="">
		                    <!-- 이메일 영역 -->
			                <div style="margin-top: 35px;">
			                    <h3>이메일</h3>
			                    <label for="memberEmail" class="memberEmail">
			                        <input name="memberEmail" id="memberEmail" type="text" style="ime-mode:disabled" autocomplete="on" placeholder="이메일 입력" oninput="$memberEmail()" required autofocus />
			                        <span class="cnum_btn_wrap">
			                            <button id="cnum_btn">인증번호 받기</button>
			                        </span>
			                    </label>
			
			                    <!-- 자동리스트 영역 -->
			                    <ul class="email_list_area email_list scrollbar" style="display: none;">
			                        <li class="email_list"><a href="javascript:;" onclick="return false;" class="email_domain"><strong class="txt_input"></strong>@naver.com</a></li>
			                        <li class="email_list"><a href="javascript:;" onclick="return false;" class="email_domain"><strong class="txt_input"></strong>@gmail.com</a></li>
			                        <li class="email_list"><a href="javascript:;" onclick="return false;" class="email_domain"><strong class="txt_input"></strong>@daum.net</a></li>
			                        <li class="email_list"><a href="javascript:;" onclick="return false;" class="email_domain"><strong class="txt_input"></strong>@nate.com</a></li>
			                        <li class="email_list"><a href="javascript:;" onclick="return false;" class="email_domain"><strong class="txt_input"></strong>@outlook.com</a></li>
			                    </ul>
			
			                    <span class="signupInput_c" style="">
			                        <input id="memberCnum" type="text" placeholder="인증번호를 입력하세요"></input>
			                    </span>
			                </div>
			
						</form>
			
			
			
			
						<!-- 약관동의 -->
	                	<form action="" id="joinForm">
		                    <ul class="join_box">
		                        <li class="checkBox check01">
		                            <ul class="clearfix">
		                                <li>이용약관, 개인정보 수집 및 이용,
		                                    위치정보 이용약관(선택), 프로모션 안내
		                                    메일 수신(선택)에 모두 동의합니다.</li>
		                                <li class="checkAllBtn">
		                                    <input type="checkbox" name="chkAll" id="chkAll" class="chkAll">
		                                </li>
		                            </ul>
		                        </li>
		                        <li class="checkBox check02">
		                            <ul class="clearfix">
		                                <li>이용약관 동의(필수)</li>
		                                <li class="checkBtn">
		                                    <input type="checkbox" name="chk1" class="chk"> 
		                                </li>
		                            </ul>
		                            <textarea name="" id="">여러분을 환영합니다.
										ORDER BY 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 ORDER BY 서비스의 이용과 관련하여 ORDER BY 서비스를 제공하는 ORDER BY 렌트(이하 ‘ORDER BY’)와 이를 이용하는 ORDER BY 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 ORDER BY 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
					                </textarea>
		                        </li>
		                        <li class="checkBox check03">
		                            <ul class="clearfix">
		                                <li>개인정보 수집 및 이용에 대한 안내(필수)</li>
		                                <li class="checkBtn">
		                                    <input type="checkbox" name="chk2" class="chk">
		                                </li>
		                            </ul>
		                            <textarea name="" id="">여러분을 환영합니다.
										ORDER BY 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 ORDER BY 서비스의 이용과 관련하여 ORDER BY 서비스를 제공하는 ORDER BY 렌트(이하 ‘ORDER BY’)와 이를 이용하는 ORDER BY 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 ORDER BY 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
					                </textarea>
		                        </li>
		                        <li class="checkBox check03">
		                            <ul class="clearfix">
		                                <li>위치정보 이용약관 동의(선택)</li>
		                                <li class="checkBtn">
		                                    <input type="checkbox" name="chk3" class="chk">
		                                </li>
		                            </ul>
		                            <textarea name="" id="">여러분을 환영합니다.
										ORDER BY 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 ORDER BY 서비스의 이용과 관련하여 ORDER BY 서비스를 제공하는 ORDER BY 렌트(이하 ‘ORDER BY’)와 이를 이용하는 ORDER BY 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 ORDER BY 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
					                </textarea>
		                        </li>
		                        <li class="checkBox check04">
		                            <ul class="clearfix">
		                                <li>이벤트 등 프로모션 알림 메일 수신(선택)</li>
		                                <li class="checkBtn">
		                                    <input type="checkbox" name="chk4" class="chk">
		                                </li>
		                            </ul>
		        
		                        </li>
		                    </ul>
		                    <!-- <ul class="footBtwrap clearfix">
		                        <li><button class="fpmgBt1">비동의</button></li>
		                        <li><button class="fpmgBt2">동의</button></li>
		                    </ul> -->

			
			                <!--가입하기-->
			                <div>
			                    <div class="signup_btn_wrap" >
			                        <button id="signup_btn">가입하기</button>
			                        <!-- onclick="signupCheckForm()" -->
			                    </div>
			                </div>
						</form>
		            
		            <!--저작권 정보-->
		            <span>
		                <div class="copyright_wrap" style="font-size: 12px;">
		                    <span>이용약관 | 개인정보처리방침 | 책임의 한계와 고지 | 회원정보 고객센터</span>
		                    <div>© ORDER BY Corp.</div>
		                </div>
		            </span>
		            </section>
		        </div>
        	</fieldset>
	</c:if>

<script src="${path}/resources/js/member/enroll.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>