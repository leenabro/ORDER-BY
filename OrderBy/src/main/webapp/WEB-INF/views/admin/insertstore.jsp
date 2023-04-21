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
        <script src="${path }/resources/static/assets/js/jquery.min.js"></script>

    <!-- Custom styles for this template-->
    <link href="${ path }/resources/static/assets/css/admin2.css" rel="stylesheet">
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
<%@ include file="/WEB-INF/views/common/adminheader.jsp" %>

                <div class="container-fluid">
<!--                    <div id="map" style="width:50%; height:600px; box-sizing: border-box; float: left;"></div> -->
                   <div class="detail_view">

                            <table
                            class="table table-bordered"
                            id="dataTable"
                            style="width: 45%; margin-left: 53%;"
                            cellspacing="0"
                            >
                            <div id="joinInfoArea" >
 							<form id="joinForm" action="${path }/admin/insertstore" method="POST">
 							<security:csrfInput/>		
 					
 										<div>
<!--                                    <div style="float: left; margin-left: 2%; margin-top:13%" > -->
										<div id="map" style="width:700px;height:400px;margin-top:10px;display:none; float:right;"></div>
                                   		<div style="margin-left:10%">
                                       <h6>매장 이름</h6>
                                       <span class="input_area"><input type="text" maxlength="13" name="name" value="" ></span>
                                       
                                       <h6>매장 보유 차종 수</h6>
                                       <span class="input_area"><input type="text" maxlength="15" name="count" value=""></span>
                                       
                                       <h6>매장 지역</h6>
                                       <span class="input_area"><input type="text" maxlength="5" id="location" name="location" value=""></span>
<!--                                     </div> -->

<!--                                     <div style="float: right; margin-right: 2%; margin-top:13%">         -->
                                        <h6>위도</h6>
                                        <span class="input_area"><input type="text" maxlength="5" id="slat" name="slat" value=""></span>
                                                
                                        <h6>경도</h6>
                                        <span class="input_area"><input type="text" maxlength="5" id="slong" name="slong" value=""></span>
                                        <h6>매장 상세 주소</h6>
<!--                                         <span class="input_area"><input type="text" maxlength="5" name="slong" value=""></span> -->
										<input type="text" name="address" id="sample5_address" placeholder="주소" style="width:300px">
										<input type="button" onclick="sample5_execDaumPostcode()" value="주소 검색"><br>
<!--                                     </div> -->
                                   		</div>
    

                                    <div class="btnArea">
                                        <button id="insertBtn" type="submit">매장 등록</button>
                                        <button id="delBtn" type="button">뒤로 가기</button>
                                     </div>
 								</div>
 							</form>
                            </div>
                    </table>
                </div>
                </div>
                </div>

<script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=00be5712acaed1c7ea1e3d8899cba967&libraries=services"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="${ path }/resources/static/assets/js/admin/bootstrap.bundle.min.js"></script>

<script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
            level: 5 // 지도의 확대 레벨
        };

    //지도를 미리 생성
    var map = new daum.maps.Map(mapContainer, mapOption);
    //주소-좌표 변환 객체를 생성
    var geocoder = new daum.maps.services.Geocoder();
    //마커를 미리 생성
    var marker = new daum.maps.Marker({
        position: new daum.maps.LatLng(37.537187, 127.005476),
        map: map
    });


    function sample5_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = data.address; // 최종 주소 변수

                // 주소 정보를 해당 필드에 넣는다.
                document.getElementById("sample5_address").value = addr;
                // 주소로 상세 정보를 검색
             
                geocoder.addressSearch(data.address, function(results, status) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === daum.maps.services.Status.OK) {

                        var result = results[0]; //첫번째 결과의 값을 활용

                        // 해당 주소에 대한 좌표를 받아서
                        var coords = new daum.maps.LatLng(result.y, result.x);
                        // 지도를 보여준다.
                        mapContainer.style.display = "block";
                        map.relayout();
                        // 지도 중심을 변경한다.
                        map.setCenter(coords);
                        // 마커를 결과값으로 받은 위치로 옮긴다.
                        marker.setPosition(coords);
                        
                        document.getElementById("slat").value = result.y;
                        document.getElementById("slong").value = result.x;
                        
                        var addr1 = addr.substring(0, 2);
                        
                        document.getElementById("location").value = addr1;
                        
                    }
                });
            }
        }).open();
    }
</script>
</body>
</html>