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

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Order By</title>

    <!-- Custom fonts for this template--> 
    <link href="${ path }/resources/static/assets/css/admin.all.min.css" rel="stylesheet" type="text/css">
    <link
        href="${ path }/resources/static/assets/css/admin.font.css" rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="${ path }/resources/static/assets/css/admin2.css" rel="stylesheet">
    <script src="${path }/resources/js/jquery-3.6.3.js"></script>
    <!-- Custom styles for this template-->
<!--     <link href="css/sb-admin-2.min.css" rel="stylesheet" /> -->
<style>
        .outer{
            width:80%;
            min-width : 650px;
            background: rgb(248, 249, 250);
            box-shadow: rgba(0, 0, 0, 0.06) 0px 0px 4px 0px;
            margin:auto;
            margin-top : 70px;
            margin-bottom : 70px;
        }
    
        #joinForm {
            width : 400px;
            margin: auto;
            padding: 10px;
        }
    
        #joinForm h1 {
            text-align:center;
        }
    
    
        .input_area {
            border: solid 1px #dadada;
            padding : 7px 7px 9px 7px;
            background : white;
        }
    
    
        .input_area input:not([type=checkbox]) {
            width : 400px;
            height : 30px;
            border: 0px;
        }
    
        .btnArea {
            text-align:center;
            padding-top: 50px;
            padding-bottom: 50px;
            width: 100%;
        }
    
        button {
            width : 90px;
            height : 35px;
            border : 0px;
            color:white;
            background:#282A35;
            margin : 5px;
        }
    
        h6 {
            padding-top: 20px;
        }
    </style>
  </head>
<%@ include file="/WEB-INF/views/common/adminheader.jsp" %>

          <div class="container-fluid">
            <!-- Page Heading -->
            <h1 class="h3 mb-2 text-gray-800">회원 정보 수정</h1>
   <!-- index.jsp 생성 후 모든 페이지에 include할 menubar.jsp 생성 -->

   <div class="outer">
      <div id="joinInfoArea">
         <form id="joinForm" action="${path}/admin/modifyupdate"
         method="POST">
            <security:csrfInput/>
            <input style="display:none" value="${member.no}" name="no">
            
            <h6>* 아이디</h6>
            <span class="input_area"><input type="text" maxlength="13" name="userId" value="${member.id}" readonly></span>
            
            <h6>* 비밀번호</h6>
            <span class="input_area"><input type="password" maxlength="15" name="userPwd" value="${member.password}"></span>
                        
            <h6>* 이름</h6>
            <span class="input_area"><input type="text" maxlength="5" name="userName" value="${member.name}" readonly></span>

            <h6>* 포인트</h6>
            <span class="input_area"><input type="text" name="userPoint" value="${member.point}"></span>
            
            <h6>* 회원등급</h6>
<%--             <span class="input_area"><input type="text" name="userGrade" value="${member.role}" readonly></span> --%>
            <select name="userGrade" class="input_area" >
                        <option value="${member.role }" id="sale_product" name="userGrade">${member.role }</option>
                        <c:choose>
                        	<c:when test="${member.role =='B' }">
                        	    <option value="S" id="sale_product" name="userGrade">S</option> 
                        		<option value="G" id="sale_product" name="userGrade">G</option> 
                        		<option value="D" id="sale_product" name="userGrade">D</option> 
                        		<option value="M" id="sale_product" name="userGrade">M</option> 
                        	</c:when>
                        	<c:when test="${member.role =='S' }">
                        	    <option value="B" id="sale_product" name="userGrade">B</option> 
                        		<option value="G" id="sale_product" name="userGrade">G</option> 
                        		<option value="D" id="sale_product" name="userGrade">D</option> 
                        		<option value="M" id="sale_product" name="userGrade">M</option> 
                        	</c:when>
                        	<c:when test="${member.role =='G' }">
                        	    <option value="B" id="sale_product" name="userGrade">B</option> 
                        		<option value="S" id="sale_product" name="userGrade">S</option> 
                        		<option value="D" id="sale_product" name="userGrade">D</option> 
                        		<option value="M" id="sale_product" name="userGrade">M</option> 
                        	</c:when>
                        	<c:when test="${member.role =='D' }">
                        	    <option value="B" id="sale_product" name="userGrade">B</option> 
                        		<option value="S" id="sale_product" name="userGrade">S</option> 
                        		<option value="G" id="sale_product" name="userGrade">G</option> 
                        		<option value="M" id="sale_product" name="userGrade">M</option> 
                        	</c:when>
                        	<c:otherwise>
                        	    <option value="B" id="sale_product" name="userGrade">B</option> 
                        		<option value="S" id="sale_product" name="userGrade">S</option> 
                        		<option value="G" id="sale_product" name="userGrade">G</option> 
                        		<option value="D" id="sale_product" name="userGrade">D</option> 
                        	</c:otherwise>
                        </c:choose>
                        </select>

            <h6>* 생년월일</h6>
            <span class="input_area"><input type="text" name="userBirth" value="${member.birth}" readonly></span>

            <h6>* 연락처</h6>
            <span class="input_area"><input type="tel" maxlength="15" name="phone" value="${member.phone}" ></span>
                              
            <h6>* 이메일</h6>
            <span class="input_area"><input type="email" name="email" value="${member.email}" readonly></span>

            <h6>* 도로명주소</h6>
            <span class="input_area"><input type="text" name="address" class="postcodify_address" value="${member.address}" ></span>
            <h6>* 상세주소</h6>
            <span class="input_area"><input type="text" name="address1" class="postcodify_details" value="${member.detailAdd}"></span>
            
            <div class="btnArea">
               <button id="updateBtn" type="submit">회원 수정</button>
               <c:if test="${member.status eq 'Y'}">
               <button id="delBtn" type="button">회원 삭제</button>
               </c:if>
               <c:if test="${member.status eq 'N'}">
               <button id="activeBtn" type="button">활성화</button>
               </c:if>
               <button id="joinBtn" type="button" onclick="location.href='${path}/admin/member'">뒤로가기</button>
            </div>
         </form>
      </div>
   </div>
   </div>
    <script src="${ path }/resources/static/assets/js/admin/sb-admin-2.min.js"></script>
    
        <script src="${ path }/resources/static/assets/js/admin/bootstrap.bundle.min.js"></script>
            
    <script>
		$(document).ready(() => {
			$('#delBtn').on('click', () => {
				if(confirm('회원을 삭제 하시겠습니까?')) {
					location.replace('${path}/admin/modifydelete?no=${member.no}');
				}
			});
		});
		
		$(document).ready(() => {
			$('#updateBtn').on('click', () => {
				if(confirm('회원정보를 수정 하시겠습니까?')) {
					location.replace('${path}/admin/modifyupdate?no=${member.no}');
				}
			});
		});
		
        $(document).ready(() => {
			$('#activeBtn').on('click', () => {
				if(confirm('회원정보를 활성화 하시겠습니까?')) {
					location.replace('${path}/admin/modifymemberactive?no=${member.no}');
				}
			});
		});
	</script>

  </body>
</html>
