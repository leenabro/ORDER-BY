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
            <h1 class="h3 mb-2 text-gray-800">회원 정보 수정</h1>
   <!-- index.jsp 생성 후 모든 페이지에 include할 menubar.jsp 생성 -->

   <div class="outer">
      <div id="joinInfoArea">
         <form id="joinForm" action="${path}/admin/modifyupdate"
         method="POST">
            
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
