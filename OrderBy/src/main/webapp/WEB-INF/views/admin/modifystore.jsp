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
<body>
    <%@ include file="/WEB-INF/views/common/adminheader.jsp" %>
                <div class="container-fluid">
                   <div id="map" style="width:50%; height:600px; box-sizing: border-box; float: left;"></div>
                   <div class="detail_view">

                            <table
                            class="table table-bordered"
                            id="dataTable"
                            style="width: 45%; margin-left: 53%;"
                            cellspacing="0"
                            >
                            <div id="joinInfoArea" >
 							<form id="joinForm" action="${path }/admin/modifystoreupdate" method="POST">
 									<security:csrfInput/>
 							        <input style="display:none" value="${store.no}" name="no">
                                   <div style="float: left; margin-left: 2%; margin-top:13%" >
                                   
                                       <h6>매장 이름</h6>
                                       <span class="input_area"><input type="text" maxlength="13" name="name" value="${store.name }" ></span>
                                       
                                       <h6>매장 보유 차종 수</h6>
                                       <span class="input_area"><input type="text" maxlength="15" name="count" value="${store.count }"></span>
                                       
                                       <h6>매장 지역</h6>
                                       <span class="input_area"><input type="text" maxlength="5" name="location" value="${store.location }"></span>
                                    </div>

                                    <div style="float: right; margin-right: 2%; margin-top:13%">
                                        <h6>매장 상세 주소</h6>
                                        <span class="input_area"><input type="text" name="address" value="${store.address }"></span>
                                            
                                        <h6>위도</h6>
                                        <span class="input_area"><input type="text" maxlength="5" name="slat" value="${store.slat }"></span>
                                                
                                        <h6>경도</h6>
                                        <span class="input_area"><input type="text" maxlength="5" name="slong" value="${store.slong }"></span>
                                    </div>
    

                                    <div class="btnArea">
                                        <button id="updateBtn" type="submit">매장 정보 수정</button>
                                        <c:if test="${store.status eq 'N' }">
                                        <button id="activateBtn" type="button">매장 활성화</button>
                                        </c:if>
                                        <c:if test="${store.status eq 'Y' }">
                                        <button id="delBtn" type="button">매장 삭제</button>
                                        </c:if>
                                     </div>
 							</form>
                            </div>
                    </table>
                </div>
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

    
                    var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
                    var options = { //지도를 생성할 때 필요한 기본 옵션
                    	center: new kakao.maps.LatLng(${store.slat}, ${store.slong}), //지도의 중심좌표.
                    	level: 3 //지도의 레벨(확대, 축소 정도)
                    };

                    var map = new kakao.maps.Map(container, options);
 
// 버튼을 클릭하면 아래 배열의 좌표들이 모두 보이게 지도 범위를 재설정합니다 
var points = [
    // 서울 1
    new kakao.maps.LatLng(${store.slat}, ${store.slong}),
//     // 서울 2
//     new kakao.maps.LatLng(37.5249988126906 ,126.92594967251503 ),
//     // 대전
//     new kakao.maps.LatLng(36.3519273184447 ,127.37829380780403 ),
//     // 대구 1
//     new kakao.maps.LatLng(35.869314703493,128.59507903510735 ),
//     // 대구 2
//     new kakao.maps.LatLng(35.853345904396 ,128.508798462966 ),
//     // 부산 1
//     new kakao.maps.LatLng(35.1605527151131 ,129.12451977276584 ),
//     // 부산 2
//     new kakao.maps.LatLng(35.1641642222102 ,128.9789077794985 ),
//     // 울산 1
//     new kakao.maps.LatLng(35.5395655670538 ,129.3115915622437  ),
//     // 울산 2
//     new kakao.maps.LatLng(35.5931478165657 ,129.3550462377374 ),
//     // 인천 1
//     new kakao.maps.LatLng(37.3882171255216,126.64329287461538  ),
//     // 부산 2
//     new kakao.maps.LatLng(37.4933046839883 ,126.48835085024388  ),
//     // 경기 1
//     new kakao.maps.LatLng(37.2595760617385 ,127.0467206073721  ),
//     // 경기 2
//     new kakao.maps.LatLng(36.9922989075909 ,127.11275471967605   ),
//     // 경기 3
//     new kakao.maps.LatLng(37.8315112353014 ,127.50965074589541   ),
//     // 광주 1
//     new kakao.maps.LatLng(35.160083721041,126.8514571244133  ),
//     // 전주 1
//     new kakao.maps.LatLng(35.8291924669786,127.1373816940671   ),
//     // 강원 1
//     new kakao.maps.LatLng(38.0754594563481,128.6190086264827    ),
//     // 강원 2
//     new kakao.maps.LatLng(37.7644829376663,128.89952098203378    ),
//     // 제주 1
//     new kakao.maps.LatLng(33.5071985198936,126.49290391265892   ),


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

$(document).ready(() => {
	$('#delBtn').on('click', () => {
		if(confirm('매장 정보를 삭제 하시겠습니까?')) {
			location.replace('${path}/admin/modifystoredelete?no=${store.no}');
		}
	});
});

$(document).ready(() => {
	$('#updateBtn').on('click', () => {
		if(confirm('매장 정보를 수정 하시겠습니까?')) {
			location.replace('${path}/admin/modifystoreupdate?no=${store.no}');
		}
	});
});
$(document).ready(() => {
	$('#activateBtn').on('click', () => {
		if(confirm('매장을 활성화 하시겠습니까?')) {
			location.replace('${path}/admin/modifystoreactivate?no=${store.no}');
		}
	});
});
</script>
</body>
</html>