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
		<script src="${path }/resources/js/jquery-3.6.3.js"></script>
    <!-- Custom styles for this template-->
    <link href="${ path }/resources/static/assets/css/admin2.css" rel="stylesheet">
        <style>
        .outer{
            background: rgb(248, 249, 250);
            box-shadow: rgba(0, 0, 0, 0.06) 0px 0px 4px 0px;
            margin:auto;
            margin-bottom : 70px;
            margin-top: -30px;
        }
    
        #joinForm {
            margin: auto;
            margin-left:15%;
            margin-right:10%;
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
	<h1 class="h3 mb-2 text-gray-800">쿠폰 생성</h1>
	<br><br>

	<div class="outer">
		<div id="joinInfoArea">
		       
    		<form id="joinForm" action="${ path }/admin/createCoupon" method="POST">
    			<security:csrfInput/>
			    <div style="width:40%; margin-left: 2%; float: right; margin-top:8%;  margin-right:10%" >
					<input type="file" id="upfile" name="upfile" onchange="readURL(this);" style="margin-left: 25%; margin-bottom: 4%; ">
					<img id="preview" style="width: 100%; height: 350px;">
				</div>
			        
				<h6>* 쿠폰 이름</h6>
				<span class="input_area"><input type="text"  name="name"></span>
                    
				<h6>* 할인 (%)</h6>
				<span class="input_area"><input type="number"  name="percent"></span>
                
                <h6>* 쿠폰 기간 (일)</h6>
				<span class="input_area"><input type="number"  name="period"></span>
                
				<div class="btnArea">
                    <button id="insertBtn" type="submit">쿠폰 생성</button>
                    <button id="joinBtn" type="button" onclick="location.href='${path}/admin/view'">뒤로가기</button>
                </div>
			</form>
       	</div>
       </div>
    </div>

	<script>
      
	function readURL(input) {
    	if (input.files && input.files[0]) {
        	var reader = new FileReader();
			reader.onload = function(e) {
            	document.getElementById('preview').src = e.target.result;
            };
            reader.readAsDataURL(input.files[0]);
  		} else {
      		document.getElementById('preview').src = "";
      	}
  	}

	</script>


    <!-- Custom scripts for all pages-->
    <script src="${ path }/resources/static/assets/js/admin/sb-admin-2.min.js"></script>
    
        <script src="${ path }/resources/static/assets/js/admin/bootstrap.bundle.min.js"></script>

    </body>
</html>