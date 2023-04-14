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
		<script src="${path }/resources/js/jquery-3.6.3.js"></script>
    <!-- Custom styles for this template-->
    <link href="${ path }/resources/static/assets/css/admin2.css" rel="stylesheet">
        <style>
        .outer{
            width:50%;
            min-width : 650px;
            background: rgb(248, 249, 250);
            box-shadow: rgba(0, 0, 0, 0.06) 0px 0px 4px 0px;
            margin:auto;
            margin-bottom : 70px;
            float: left;
            margin-top: -30px;
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
                <a class="nav-link" href="${path }/admin/insertproduct">
                    <i class="fas fa-fw fa-table"></i>
                    <span>차종 등록</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${path }/admin/location">
                    <i class="fas fa-fw fa-table"></i>
                    <span>매장 관리</span></a>
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

        <div class="container-fluid">
            <!-- Page Heading -->
            <h1 class="h3 mb-2 text-gray-800">차종 등록</h1>
            <p class="mb-4">Order By에 보유한 차종을 등록하는 곳</p>
            <br><br>

        <div style="width:40%; margin-left: 2%; float: right; margin-top:8%" >
            <input type="file"
            id="avatar" name="avatar" onchange="readURL(this);" style="margin-left: 20%; margin-bottom: 4%;">
            <img id="preview" style="width: 80%; height: 350px;">
        </div>
        
        <div class="outer">
            <div id="joinInfoArea">
               <form id="joinForm" action=""
               method="post" onsubmit="return validate();">
                  
                  <h6>* 차종</h6>
                  <select name="insert_category" class="input_area" id="insert_product">
                    <option value="car" selected="selected">자동차</option>
                    <option value="motor">오토바이</option>
                  </select>
                  
                  <div id="joinInfoArea_car">

                    <h6>* 자동차 이름</h6>
                    <span class="input_area"><input type="text"  name="" value=""></span>
                    
                    <h6>* 자동차 브랜드</h6>
                    <span class="input_area"><input type="text"  name="" value=""></span>
      
                  <h6>* 엔진 형식</h6>
                  <span class="input_area"><input type="text" name="userPoint" value=""></span>
                  
                  <h6>* 배기량</h6>
                  <span class="input_area"><input type="text" name="userGrade" value=""></span>
                  
                  <h6>* 연료</h6>
                  <span class="input_area"><input type="text" name="userGrade" value=""></span>
                  
                  <h6>* 대여 비용(일)</h6>
                  <span class="input_area"><input type="text" name="userGrade" value=""></span>

                  <h6>* 매장 위치</h6>
                  <span class="input_area"><input type="text" name="userGrade" value=""></span>
                  
                  <h6>* 주행 거리</h6>
                  <span class="input_area"><input type="text" name="userGrade" value=""></span>
                  
                  <h6>* 특가 유무</h6>
                  <select name="sale_product_check" class="input_area" id="sale_product_id">
                    <option value="general_product" selected="selected">일반 상품</option>
                    <option value="sale_product">특가 상품</option>
                  </select>
                  
                </div>

                <div id="joinInfoArea_motor">

                  <h6>* 오토바이 이름</h6>
                  <span class="input_area"><input type="text"  name="" value=""></span>
                  
                  <h6>* 오토바이 브랜드</h6>
                  <span class="input_area"><input type="text"  name="" value=""></span>
    
                <h6>* 엔진 형식</h6>
                <span class="input_area"><input type="text" name="userPoint" value=""></span>
                
                <h6>* 배기량</h6>
                <span class="input_area"><input type="text" name="userGrade" value=""></span>
                
                <h6>* 출력</h6>
                <span class="input_area"><input type="text" name="userGrade" value=""></span>
                
                <h6>* 토크</h6>
                <span class="input_area"><input type="text" name="userGrade" value=""></span>  

                <h6>* 대여 비용(일)</h6>
                <span class="input_area"><input type="text" name="userGrade" value=""></span>

                <h6>* 매장 위치</h6>
                <span class="input_area"><input type="text" name="userGrade" value=""></span>
                
                <h6>* 주행 거리</h6>
                <span class="input_area"><input type="text" name="userGrade" value=""></span>
                
                <h6>* 특가 유무</h6>
                <select name="sale_product_check" class="input_area" id="sale_product_id">
                  <option value="general_product" selected="selected">일반 상품</option>
                  <option value="sale_product">특가 상품</option>
                </select>
                
              </div>
                  <div class="btnArea">
                    <button id="joinBtn">차종 등록</button>
                    <button id="joinBtn">뒤로가기</button>
                  </div>
                </div>
              </form>
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

        
        $('#joinInfoArea_motor').hide();

        $('#insert_product').change(function() {
                var result = $('#insert_product option:selected').val();
                if (result == 'car') {
                  $('#joinInfoArea_car').show();
                  $('#joinInfoArea_motor').hide();
                } else {
                  $('#joinInfoArea_motor').show();
                  $('#joinInfoArea_car').hide();
                }
              })

        </script>


    <!-- Custom scripts for all pages-->
    <script src="${ path }/resources/static/assets/js/admin/sb-admin-2.min.js"></script>
    
        <script src="${ path }/resources/static/assets/js/admin/bootstrap.bundle.min.js"></script>

    </body>
</html>