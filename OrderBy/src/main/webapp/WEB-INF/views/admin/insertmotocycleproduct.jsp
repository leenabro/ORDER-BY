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
/*             width:100%; */
/*             min-width : 650px; */
            background: rgb(248, 249, 250);
            box-shadow: rgba(0, 0, 0, 0.06) 0px 0px 4px 0px;
            margin:auto;
            margin-bottom : 70px;
/*             float: left; */
            margin-top: -30px;
        }
    
        #joinForm {
/*             width : 400px; */
            margin: auto;
            margin-left:15%;
            margin-right:10%
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

        <div class="container-fluid">
            <!-- Page Heading -->
            <h1 class="h3 mb-2 text-gray-800">오토바이 등록</h1>
            <p class="mb-4">Order By에 오토바이를 등록하는 곳</p>
            <br><br>

        
        <div class="outer">
            <div id="joinInfoArea">
               <form id="joinForm" action="${path }/admin/insertmotocylceproduct" method="POST" enctype="multipart/form-data">
               		<div style="width:40%; margin-left: 2%; float: right; margin-top:8%;  margin-right:10%" >
			            <input type="file"
			            id="upfile" name="upfile" onchange="readURL(this);" style="margin-left: 25%; margin-bottom: 4%; ">
			            <img id="preview" style="width: 100%; height: 350px;">
			        </div>
                    <h6>* 오토바이 이름</h6>
                    <span class="input_area"><input type="text"  name="name"></span>
                    
                    <h6>* 오토바이 브랜드</h6>
                    <span class="input_area">	
                    <select name="brand" id="brand" style="width: 150px; text-align: center;" required>
                      <option selected>----- 선택 ------</option>
                      <option value="BMW">BMW</option>
                      <option value="Ducati">Ducati</option>
                      <option value="Honda">Honda</option>
                      <option value="Kawasaki">Kawasaki</option>
                      <option value="Suzuki">Suzuki</option>
                      <option value="Ymaha">Ymaha</option>
                      </select>
                      </span>
<!--                     <span class="input_area"><input type="text"  name="brand"></span> -->
                        
                  <h6>* 오토바이 엔진 형식</h6>
                  <span class="input_area"><input type="text" name="engine"></span>             
                                      
      				<h6>* 오토바이 배기량</h6>
                  	<span class="input_area"><input type="text" name="cc"></span>
                  	
                    <h6>* 오토바이 출력</h6>
                    <span class="input_area"><input type="text"  name="output"></span>
                    
                    <h6>* 오토바이 토크</h6>
                    <span class="input_area"><input type="text"  name="torque"></span>
      		
                  <h6>* 오토바이 연료탱크</h6>
                  <span class="input_area"><input type="text" name="fuel"></span>

      				<h6>* 오토바이 연식</h6>
                    <span class="input_area"><input type="text"  name="year"></span>
                    
                    <h6>* 오토바이 키로수</h6>
                    <span class="input_area"><input type="text"  name="km"></span>
                
                  <h6>* 대여 비용(일)</h6>
                  <span class="input_area"><input type="text" name="price"></span>

                  <h6>* 매장 위치</h6>
                  <span class="input_area">
				 <select name="position" id="locationNo" style="width: 150px; text-align: center;" required>
                      <option selected>----- 선택 ------</option>
                      <option value="서울1">서울1</option>
                      <option value="서울2">서울2</option>
                      <option value="대전">대전</option>
                      <option value="대구1">대구1</option>
                      <option value="대구2">대구2</option>
                      <option value="부산1">부산1</option>
                      <option value="부산2">부산2</option>
                      <option value="울산1">울산1</option>
                      <option value="울산2">울산2</option>
                      <option value="인천1">인천1</option>
                      <option value="인천2">인천2</option>
                      <option value="경기1">경기1</option>
                      <option value="경기2">경기2</option>
                      <option value="경기3">경기3</option>
                      <option value="광주">광주</option>
                      <option value="전주">전주</option>
                      <option value="강원1">강원1</option>
                      <option value="강원2">강원2</option>
                      <option value="제주">제주</option>
                  </select>
                  </span>
<!--                   <span class="input_area"><input type="text" name="position"></span> -->
                  
                  <h6>* 특가 유무</h6>
                  <select name="sale_product_check" class="input_area" id="sale">
                    <option value="C" selected="selected">일반 상품</option>
                    <option value="S">특가 상품</option>
                  </select>
              
                
                  <div class="btnArea">
                    <button id="insertBtn" type="submit">차종 등록</button>
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

            $(document).ready(() => {
    			$('#insertBtn').on('click', () => {
    				if(confirm('상품을 등록 하시겠습니까?')) {
    					location.replace('${path}/admin/motocycleproduct');
    				}
    			});
    		});
            
        
        </script>


    <!-- Custom scripts for all pages-->
    <script src="${ path }/resources/static/assets/js/admin/sb-admin-2.min.js"></script>
    
        <script src="${ path }/resources/static/assets/js/admin/bootstrap.bundle.min.js"></script>

    </body>
</html>