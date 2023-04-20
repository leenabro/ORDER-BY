<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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
      .dataTables_filter {
        margin-left: 55%;
      }

      .col-sm-12 .dataTables_info {
        display: none;
      }
    </style>
</head>

 <body id="page-top">
      <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
             <a class="sidebar-brand d-flex align-items-center justify-content-center" href="${path }/admin/view">
                <div class="sidebar-brand-icon rotate-n-15" style="transform: rotate(0deg)">
                     <img src="${path }/resources/static/assets/css/images/main_logo.png" style="width: 50px; margin-right: -20px;">
                </div>
                <div class="sidebar-brand-text mx-3">Order By</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="${path }/admin/view">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>현황판</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                user
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            
            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="${path }/admin/member">
                    <i class="fas fa-fw fa-table"></i>
                    <span>회원 관리</span></a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="${path }/admin/popqna">
                    <i class="fas fa-fw fa-table"></i>
                    <span>상담 관리</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Products
            </div>
			<li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>차종 현황</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">차종 현황:</h6>
                        <a class="collapse-item" href="${path }/admin/carproduct">자동차</a>
                        <a class="collapse-item" href="${path }/admin/motocycleproduct">오토바이</a>
                    </div>
                </div>
            </li>
<!--             <li class="nav-item"> -->
<%--                 <a class="nav-link" href="${path }/admin/carproduct"> --%>
<!--                     <i class="fas fa-fw fa-table"></i> -->
<!--                     <span>차동차 현황</span></a> -->
<!--             </li> -->
            
<!--               <li class="nav-item"> -->
<%--                 <a class="nav-link" href="${path }/admin/motocycleproduct"> --%>
<!--                     <i class="fas fa-fw fa-table"></i> -->
<!--                     <span>오토바이 현황</span></a> -->
<!--             </li> -->
			<li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>차종 등록</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">차종 등록:</h6>
                        <a class="collapse-item" href="${path }/admin/insertcarproduct">자동차</a>
                        <a class="collapse-item" href="${path }/admin/insertmotocycleproduct">오토바이</a>
                    </div>
                </div>
            </li>

<!--             <li class="nav-item"> -->
<%--                 <a class="nav-link" href="${path }/admin/insertproduct"> --%>
<!--                     <i class="fas fa-fw fa-table"></i> -->
<!--                     <span>차종 등록</span></a> -->
<!--             </li> -->
            <li class="nav-item">
                <a class="nav-link" href="${path }/admin/store">
                    <i class="fas fa-fw fa-table"></i>
                    <span>매장 관리</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${path }/admin/insertstore">
                    <i class="fas fa-fw fa-table"></i>
                    <span>매장 등록</span></a>
            </li>


            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>


        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>



                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

 
                    </ul>

                </nav>
                <!-- End of Topbar -->

          <!-- Begin Page Content -->
          <div class="container-fluid">
            <!-- Page Heading -->
            <h1 class="h3 mb-2 text-gray-800">상담 관리</h1>
            <p class="mb-4">Order By에서 팝업 상담들을 관리</p>

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
                      	<th>상담 번호</th>
                        <th>상담 제목</th>
                        <th>전화 번호</th>
                        <th>상담 내용</th>
                        <th>상담 여부 확인</th>
                        <th>상담 등록 날짜</th>
                      </tr>
                    </thead>

                    <tbody>
                    <c:if test="${ empty list }">
                    	<tr>
                    		<td colspan="6" style="text-align:center">
                    			조회되는 상담이 없습니다.
                    		</td>
                    		
                    	</tr>
                    </c:if>
                      <c:if test="${ not empty list }">
                    	<c:forEach var="popqna" items="${list }">
                      <tr>
                      	<td>${popqna.no }</td>
                        <td>${popqna.title }</td>
                        <td>${popqna.phone }</td>
                        <td style="display:none">${popqna.no }</td>
                        <td>
                          <a href="${path }/admin/viewpopqna?no=${popqna.no}"
                            >${popqna.content }</a
                          >
                        </td>
                        <td style="color: green">${popqna.status }</td>
                        <td>${popqna.enrolldate }</td>
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