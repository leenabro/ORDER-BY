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
    <style>
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
    </style>    
</head>
<body>
<%@ include file="/WEB-INF/views/common/adminheader.jsp" %>

	 <!-- Begin Page Content -->
	<div class="container-fluid">
	<!-- Page Heading -->
	<h1 class="h3 mb-2 text-gray-800">쿠폰 관리</h1>
	<p class="mb-4">Order By에서 보유중인 쿠폰 관리</p>

<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3"></div>
		<div class="card-body">
			<div class="table-responsive">
				<table
                    class="table table-bordered"
                    id="dataTable"
                    width="100%"
                    cellspacing="0"
                 >
					<thead>
						<tr>
	                      	<th>번호</th>
	                        <th>쿠폰 이름</th>
	                        <th>할인(%)</th>
	                        <th>생성일자</th>
	                        <th>쿠폰 기간(일)</th>
	                        <th>활성 상태</th>
						</tr>
					</thead>
                    <tbody>
	                    <c:if test="${ empty coupon }">
	                    	<tr>
	                    		<td colspan="7" style="text-align:center">
	                    			조회되는 쿠폰이 없습니다.
	                    		</td>
	                    	</tr>
	                    </c:if>
	                    <c:if test="${ not empty coupon }">
							<c:forEach var="coupon" items="${ coupon }">
		                      	<tr>
			                      	<td>${coupon.coNumber}</td>
			                        <td>${coupon.name}</td>
			                        <td>${coupon.percent}</td>
			                        <td>${coupon.createDate}</td>
			                        <td>${coupon.period}</td>
			                        <c:if test="${coupon.coStatus == 'Y'}">
				                        <td>활성</td>
			                        </c:if>
			                        <c:if test="${coupon.coStatus == 'N'}">
				                        <td>비활성</td>
			                        </c:if>
								</tr>
							</c:forEach>
	                    </c:if>
                    </tbody>
 
                  </table>
                </div>
              </div>
				<div class="btnArea">
                    <button id="createCoupon" type="button">쿠폰 생성</button>
                    <button id="injectCoupon" type="button">쿠폰 발행</button>
				</div>
            </div>
          </div>
          <!-- /.container-fluid -->
        </div>
        <!-- End of Main Content -->
      </div>
      <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

    <!-- Bootstrap core JavaScript-->
    <script src="${ path }/resources/static/assets/js/admin/jquery.min.js"></script>
    <script src="${ path }/resources/static/assets/js/admin/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${ path }/resources/static/assets/js/admin/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${ path }/resources/static/assets/js/admin/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="${ path }/resources/static/assets/js/admin/jquery.dataTables.min.js"></script>
    <script src="${ path }/resources/static/assets/js/admin/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="${ path }/resources/static/assets/js/admin/datatables-demo.js"></script>

	<script src="${ path }/resources/static/assets/js/admin/bootstrap.bundle.min.js"></script>
	
	<script>
		$(document).ready(function() {
			$('#createCoupon').on('click', function() {
				location.href = "${ path }/admin/createCoupon";
			});
			
			$('#injectCoupon').on('click', function() {
				location.href = "${ path }/admin/injectCoupon";
			});
			
			
		});
	
	</script>
	
</body>
</html>