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
    <link href="css/sb-admin-2.min.css" rel="stylesheet" />
<style>
        .outer{
            width:50%;
            min-width : 650px;
            background: rgb(248, 249, 250);
            box-shadow: rgba(0, 0, 0, 0.06) 0px 0px 4px 0px;
            margin:auto;
            margin-top : 70px;
            margin-bottom : 70px;
            float: left;
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
            <h1 class="h3 mb-2 text-gray-800">자동차 정보 수정</h1>
            
            
            <div style="width:40%; margin-left: 5%; float: right; margin-top: 20%;" >
<!--                 <input type="file" -->
<!--                 id="avatar" name="avatar" onchange="readURL(this);" style="margin-left: 20%; margin-bottom: 4%;"> -->
                <img id="preview" style="width: 80%; height: 350px;" src="${path }/resources/images/car/${procar.brand}/${procar.name}.png">
            </div>


            <div class="outer">
                <div id="joinInfoArea">
                   <form id="joinForm" action="${path }/admin/modifycarupdate" method="POST" >
					<security:csrfInput/>
					 <input style="display:none" value="${procar.no}" name="no">
					 
                        <h6>* 자동차 이름</h6>
                        <span class="input_area"><input type="text"  name="cname" value="${procar.name }"></span>
                        
                        <h6>* 자동차 브랜드</h6>
                        <span class="input_area"><input type="text"  name="cbrand" value="${procar.brand}"></span>
          
                      <h6>* 엔진 형식</h6>
                      <span class="input_area"><input type="text" name="cengine" value="${procar.engine }"></span>
                      
                      <h6>* 배기량</h6>
                      <span class="input_area"><input type="text" name="ccc" value="${procar.cc }"></span>
                      
                      <h6>* 연료</h6>
                      <span class="input_area"><input type="text" name="cfuel" value="${procar.fuel }"></span>
                      
                      <h6>* 대여 비용(일)</h6>
                      <span class="input_area"><input type="text" name="cprice" value="${procar.price } "></span>

                      <h6>* 매장 위치</h6>
                      <span class="input_area"><input type="text" name="cposition" value="${procar.position }"></span>
                      
                      <h6>* 주행 거리</h6>
                      <span class="input_area"><input type="text" name="ckm" value="${procar.km }"></span>
                      
                      
                      <h6>* 특가 유무</h6>
                      <select name="cstatus" class="input_area" >
                        <option value="${procar.sale }" id="sale_product" >${procar.sale }</option>
                        <c:choose>
                        	<c:when test="${procar.sale == 'S' }">
                        			<option value="C" id="sale_product">C</option> 
                        	</c:when>
                        	<c:otherwise>
                        		<option value="S" id="sale_product" >S</option> 
                        	</c:otherwise>
                        </c:choose>
                      </select>
					 
                      

                      <div class="btnArea">
                        <button id="updateBtn" type="submit">수정</button>
                        <c:if test="${procar.status eq 'Y'}">
                        <button id="delBtn" type="button">삭제</button>
                        </c:if>
                        <c:if test="${procar.status eq 'N'}">
                        <button id="activeBtn" type="button">활성화</button>
                        </c:if>
                        <button id="joinBtn" type="button" onclick="location.href='${path}/admin/carproduct';">뒤로가기</button>
                      </div>
                  </form>
                    </div>
               </div>
            </div>
            <script>
            $(document).ready(() => {
    			$('#delBtn').on('click', () => {
    				if(confirm('차량을 삭제 하시겠습니까?')) {
    					location.replace('${path}/admin/modifycardelete?no=${procar.no}');
    				}
    			});
    		});
            
            $(document).ready(() => {
    			$('#updateBtn').on('click', () => {
    				if(confirm('자동차를 수정 하시겠습니까?')) {
    					location.replace('${path}/admin/modifycarupdate?no=${procar.no}');
    				}
    			});
    		});
            
            $(document).ready(() => {
    			$('#activeBtn').on('click', () => {
    				if(confirm('자동차를 활성화 하시겠습니까?')) {
    					location.replace('${path}/admin/modifycaractive?no=${procar.no}');
    				}
    			});
    		});
              
//                 function readURL(input) {
//                   if (input.files && input.files[0]) {
//                         var reader = new FileReader();
//                         reader.onload = function(e) {
//                           document.getElementById('preview').src = e.target.result;
//                         };
//                         reader.readAsDataURL(input.files[0]);
//             } else {
//                 document.getElementById('preview').src = "";
//                 }
//             }

              

            </script>
                <!-- Custom scripts for all pages-->
    
        <script src="${ path }/resources/static/assets/js/admin/bootstrap.bundle.min.js"></script>
            

  </body>
</html>
