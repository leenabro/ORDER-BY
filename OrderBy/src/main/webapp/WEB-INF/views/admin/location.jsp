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
        <script src="${ path }/resources/static/assets/js/admin/sb-admin-2.min.js"></script>
<style>
         .title {
        margin: 0 0 4px;
        font-size: 24px;
        font-weight: 600;
        color: #4e5968;
        text-align: center;
      }
      .input_area {
            border: solid 1px #dadada;
            padding : 7px 7px 9px 7px;
            background : white;
        }

        .input_area input:not([type=checkbox]) {
            width : 250px;
            height : 30px;
            border: 0px;
        }

        h6 {
            padding-top: 20px;
        }

        .btnArea {
            text-align:center;
            padding-bottom: 50px;
            width: 100%;
        }
    
        button {
            width : 120px;
            height : 35px;
            border : 0px;
            color:white;
            background:#282A35;
            margin : 5px;
            margin-top: 30px;
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
                    <h1 class="h3 mb-2 text-gray-800">매장 관리</h1>
                    <p class="mb-4">Ordry By에서 관리중인 매장</p>
                    <!-- 지도 사이즈 -->
                    
                    <div id="map" style="width:50%; height:600px; box-sizing: border-box; float: left;"></div>
                    
                    <div class="location_checked">
                        <input type="radio" name="location" id="location_select" value="location_select" onchange="setDisplay()" checked >
                        <label for="location_select"  style="font-size: large; padding-right: 30px;">매장 조회 </label>
                        <input type="radio" name="location" id="location_insert" value="location_insert" onchange="setDisplay()" >
                        <label for="location_insert"   style="font-size: large;">매장 등록 </label>

                    </div>
                    <div id="location_all_select">

                        <div class="location_content" style="padding-left: 53%;">
                            <span>지역 검색 : </span>
                            <select name="location" id="location" style="width: 150px; text-align: center;">
                                <option value="S1">서울 강남구</option>
                                <option value="S1">서울 영등포구</option>
                                <option value="GE1">경기 수원시</option>
                                <option value="GE2">경기 평택시</option>
                                <option value="GE3">경기 가평군</option>
                                <option value="D1">대전 중구</option>
                                <option value="D2">대전 달서구</option>
                                <option value="B1">부산 수영구</option>
                                <option value="B2">부산 사상구</option>
                                <option value="U1">울산 남구</option>
                                <option value="U2">울산 북구</option>
                                <option value="I1">인천 연수구</option>
                                <option value="I2">인천 중구</option>
                                <option value="G1">광주 서구</option>
                                <option value="JU1">전주 전주시</option>
                                <option value="GW1">강원 양양군</option>
                                <option value="GW2">강원 강릉시</option>
                                <option value="J1">제주 제주시</option>
                            </select>
                        </div>
                        <br>

                        <div class="detail_view">
                            <details open>
                                <summary class="title">매장 정보</summary>
                            <table
                            class="table table-bordered"
                            id="dataTable"
                            style="width: 45%; margin-left: 53%;"
                            cellspacing="0"
                            >
                            <div id="joinInfoArea">
                                <form id="joinForm" action=""
                                method="post" onsubmit="return validate();">
                                   <div style="float: left; margin-left: 2%;" >
                                       <h6>매장 이름</h6>
                                       <span class="input_area"><input type="text" maxlength="13" name="userId" value="서울1" ></span>
                                       
                                       <h6>매장 보유 차종 수</h6>
                                       <span class="input_area"><input type="text" maxlength="15" name="userPwd" value="8대"></span>
                                       
                                       <h6>매장 지역</h6>
                                       <span class="input_area"><input type="text" maxlength="5" name="userName" value="서울시"></span>
                                    </div>

                                    <div style="float: right; margin-right: 2%;">
                                        <h6>매장 상세 주소</h6>
                                        <span class="input_area"><input type="text" name="userPoint" value="서울 강남구 테헤란로14길 6 남도빌딩"></span>
                                            
                                        <h6>위도</h6>
                                        <span class="input_area"><input type="text" maxlength="5" name="userName" value="37.4989761690588"></span>
                                                
                                        <h6>경도</h6>
                                        <span class="input_area"><input type="text" maxlength="5" name="userName" value="127.03290014843104"></span>
                                    </div>

                                    <div class="btnArea">
                                        <button id="joinBtn">매장 정보 수정</button>
                                        <button id="joinBtn">매장 삭제</button>
                                     </div>
                                </form>
                            </div>
                    </table>
                    </details>
                </div>
                
                <div class="detail_view">
                            <details open>
                                <summary class="title">매장 보유 차종 정보</summary>
                                <table
                                class="table table-bordered"
                                id="dataTable"
                                style="width: 45%; margin-left: 53%; font-size: small;"
                                cellspacing="0" 
                                >
                                <thead>
                                    <tr>
                                        <th>차종</th>
                                        <th>차종 번호</th>
                                        <th>차종 이름</th>
                                <th>차종 지역</th>
                                <th>대여 비용</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>오토바이</td>
                                <td>103</td>
                                <td>오토바이다 이새끼야</td>
                                <td>서울 강남구</td>
                                <td>500,000원</td>
                            </tr>
                            <tr>
                                <td>오토바이</td>
                                <td>103</td>
                                <td>오토바이다 이새끼야</td>
                                <td>서울 강남구</td>
                                <td>500,000원</td>
                            </tr>
                            <tr>
                                <td>오토바이</td>
                                <td>103</td>
                                <td>오토바이다 이새끼야</td>
                                <td>서울 강남구</td>
                                <td>500,000원</td>
                            </tr>
                            <tr>
                                <td>오토바이</td>
                                <td>103</td>
                                <td>오토바이다 이새끼야</td>
                                <td>서울 강남구</td>
                                <td>500,000원</td>
                            </tr>
                            <tr>
                                <td>오토바이</td>
                                <td>103</td>
                                <td>오토바이다 이새끼야</td>
                                <td>서울 강남구</td>
                                <td>500,000원</td>
                            </tr>
                            <tr>
                                <td>오토바이</td>
                                <td>103</td>
                                <td>오토바이다 이새끼야</td>
                                <td>서울 강남구</td>
                                <td>500,000원</td>
                            </tr>
                        </tbody>
                    </table>
                </details>
            </div>
        </div>
        
        <div id="location_all_insert">
            <div class="detail_view">
                <table
                class="table table-bordered"
                id="dataTable"
                style="width: 45%; margin-left: 53%;"
                cellspacing="0"
                >
                <div id="joinInfoArea">
                    <form id="joinForm" action=""
                    method="post" onsubmit="return validate();">
                       <div style="float: left; margin-left: 2%;" >
                           <h6>매장 이름</h6>
                           <span class="input_area"><input type="text" maxlength="13" name="userId" value="서울1" ></span>
                           
                           <h6>매장 지역</h6>
                           <span class="input_area"><input type="text" maxlength="5" name="userName" value="서울시"></span>

                        </div>
                        
                        <div style="float: right; margin-right: 2%;">

                            <h6>위도</h6>
                            <span class="input_area"><input type="text" maxlength="5" name="userName" value="37.4989761690588"></span>
                            
                            <h6>경도</h6>
                            <span class="input_area"><input type="text" maxlength="5" name="userName" value="127.03290014843104"></span>
                            
                        </div>
                        
                        <div style="margin-left: 52%; padding-top: 16%;">
                            <h6>매장 상세 주소</h6>
                            <input type="text" id="sample6_postcode" placeholder="우편번호">
							<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
							<input type="text" id="sample6_address" placeholder="주소"><br>
							<input type="text" id="sample6_detailAddress" placeholder="상세주소">
							<input type="text" id="sample6_extraAddress" placeholder="참고항목" style="display:none;">
                         </div>


                        <div class="btnArea">
                            <button id="joinBtn">매장 등록</button>
                            <button id="joinBtn">매장 등록 취소</button>
                        </div>
                    </form>
                </div>
            </table>
        </div>
    </div>
        
        
                <script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=00be5712acaed1c7ea1e3d8899cba967"></script>
                <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
                    <script src="${ path }/resources/static/assets/js/admin/bootstrap.bundle.min.js"></script>
<script>
$('#location_all_insert').hide();
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
                    <script>
                        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.4989761690588, 127.03290014843104), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
 
// 버튼을 클릭하면 아래 배열의 좌표들이 모두 보이게 지도 범위를 재설정합니다 
var points = [
    // 서울 1
    new kakao.maps.LatLng(37.4989761690588 , 127.03290014843104 ),
    // 서울 2
    new kakao.maps.LatLng(37.5249988126906 ,126.92594967251503 ),
    // 대전
    new kakao.maps.LatLng(36.3519273184447 ,127.37829380780403 ),
    // 대구 1
    new kakao.maps.LatLng(35.869314703493,128.59507903510735 ),
    // 대구 2
    new kakao.maps.LatLng(35.853345904396 ,128.508798462966 ),
    // 부산 1
    new kakao.maps.LatLng(35.1605527151131 ,129.12451977276584 ),
    // 부산 2
    new kakao.maps.LatLng(35.1641642222102 ,128.9789077794985 ),
    // 울산 1
    new kakao.maps.LatLng(35.5395655670538 ,129.3115915622437  ),
    // 울산 2
    new kakao.maps.LatLng(35.5931478165657 ,129.3550462377374 ),
    // 인천 1
    new kakao.maps.LatLng(37.3882171255216,126.64329287461538  ),
    // 부산 2
    new kakao.maps.LatLng(37.4933046839883 ,126.48835085024388  ),
    // 경기 1
    new kakao.maps.LatLng(37.2595760617385 ,127.0467206073721  ),
    // 경기 2
    new kakao.maps.LatLng(36.9922989075909 ,127.11275471967605   ),
    // 경기 3
    new kakao.maps.LatLng(37.8315112353014 ,127.50965074589541   ),
    // 광주 1
    new kakao.maps.LatLng(35.160083721041,126.8514571244133  ),
    // 전주 1
    new kakao.maps.LatLng(35.8291924669786,127.1373816940671   ),
    // 강원 1
    new kakao.maps.LatLng(38.0754594563481,128.6190086264827    ),
    // 강원 2
    new kakao.maps.LatLng(37.7644829376663,128.89952098203378    ),
    // 제주 1
    new kakao.maps.LatLng(33.5071985198936,126.49290391265892   ),


];

// 지도를 재설정할 범위정보를 가지고 있을 LatLngBounds 객체를 생성합니다
var bounds = new kakao.maps.LatLngBounds();    

var i, marker;
for (i = 0; i < points.length; i++) {
    // 배열의 좌표들이 잘 보이게 마커를 지도에 추가합니다
    marker =     new kakao.maps.Marker({ position : points[i] });
    marker.setMap(map);
    
    // LatLngBounds 객체에 좌표를 추가합니다
    bounds.extend(points[i]);
}

function setBounds() {
    // LatLngBounds 객체에 추가된 좌표들을 기준으로 지도의 범위를 재설정합니다
    // 이때 지도의 중심좌표와 레벨이 변경될 수 있습니다
    map.setBounds(bounds);
}

function setDisplay() {
    if($('input:radio[id=location_select]').is(':checked')) {
        $('#location_all_select').show();
        $('#location_all_insert').hide();
    }else{
        $('#location_all_select').hide();
        $('#location_all_insert').show();
    }
}

</script>

            

  </body>
</html>
