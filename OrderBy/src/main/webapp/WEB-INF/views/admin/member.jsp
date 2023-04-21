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
    <style>
      .dataTables_filter {
        margin-left: 55%;
      }

      .col-sm-12 .dataTables_info {
        display: none;
      }
    </style>
</head>
<%@ include file="/WEB-INF/views/common/adminheader.jsp" %>

          <!-- Begin Page Content -->
          <div class="container-fluid">
            <!-- Page Heading -->
            <h1 class="h3 mb-2 text-gray-800">회원 관리</h1>
            <p class="mb-4">Order By에서 보유중인 회원들을 관리</p>

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
                        <th>회원 이름</th>
                        <th>회원 주소</th>
                        <th>전화번호</th>
                        <th>성별</th>
                        <th>생년월일</th>
                        <th>상태</th>
                      </tr>
                    </thead>
                    <tbody>
                    <c:if test="${ empty list }">
                    	<tr>
                    		<td colspan="7" style="text-align:center">
                    			조회되는 매장이 없습니다.
                    		</td>
                    	</tr>
                    </c:if>
                    <c:if test="${ not empty list }">
                    	<c:forEach var="member" items="${list }">
                      <tr>
                      	<td>${member.no}</td>
                        <td><a href="${path }/admin/modifymember?no=${member.no}">${member.name}</a></td>
                        <td>${member.address} ${member.detailAdd }</td>
                        <td>${member.phone }</td>
                        <td>${member.gender }</td>
                        <td>${member.birth }</td>
                        <td>${member.status }</td>
                      </tr>
                       </c:forEach>
                    </c:if>
                    </tbody>
 
                  </table>
                </div>
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


</body>

</html>