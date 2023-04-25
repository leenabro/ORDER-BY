<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <title>Motocycle</title>
    <script src="${ path }/resources/js/jquery-3.6.3.js"></script>
</head>
<style>
    h3 {
        font-weight: 700;
        margin: 0;
        padding: 10px;
    }
    div *{
        /* border: 1px solid gray; */
        box-sizing: border-box;
    }
    .container {
        width: 1200px;
        height: 700px;
        padding: 0px;
    }
    .container > div {
        height: 100%;
        float: left;
    }
    .content {
        width: 75%;
    }
    .content-tabs {
        width: 25%;
        background-color: whitesmoke;
    }

    #content-date {
        height: 100%;
    }
    #calendar {
        width: 50%;
        height: 100%;
        float: left;
    }
    #calendar2 {
        width: 50%;
        height: 100%;
        float: left;
    }

    #rentdateText {
        width: 50%;
        height: 100%;
        float: left;
        font-size: large;
    }
    #returndateText {
        width: 50%;
        height: 100%;
        float: left;
        font-size: large;
    }
    #calendar-wrap{
        
        height: 66%;
    }
    #date-wrap, #period{
        
        height: 12%;
    }
    #period {
        text-align: center;
        font-size: large;
        
        font-size: large;
    }
    #period-default {
        text-align: center;
        font-size: large;
    }

    @import url('https://fonts.googleapis.com/css?family=Questrial&display=swap');

    
    #calendar, #calendar2 {
        background-color : white;
        width: 445px;
        height: 450px;
        margin: 0px;
        padding: 20px;
        margin: 0 auto;
        border-radius:0px;
        /* box-shadow:0px 40px 30px -20px rgba(0,0,0,0.3); */
        align-items: center;
    }

    #calendar-wrap td {
        width: 50px;
        height: 50px;
    }

    .Calendar, .Calendar2 {
        text-align: center;
    }

    .Calendar>thead>tr:first-child>td, .Calendar2>thead>tr:first-child>td {
        font-family: 'Questrial', sans-serif;
        font-size: 1.1em;
        font-weight: bold;
    }

    .Calendar>thead>tr:last-child>td, .Calendar2>thead>tr:last-child>td {
        font-family: 'Questrial', sans-serif;
        font-weight: 600;     
    }

    .Calendar>tbody>tr>td>p, .Calendar2>tbody>tr>td>p {
        font-family: 'Montserrat', sans-serif;
        height: 45px;
        width: 45px;
        border-radius: 45px;
        transition-duration: .2s;
        line-height: 45px;
        margin: 2.5px;
        display: block;
        text-align: center;
    }        

    .pastDay {
        color: lightgray;
    }

    .today {
        background-color: #F5D042;            
        color: #fff;
        font-weight: 600;
        cursor: pointer;
    }

    .futureDay {
        background-color: #FFFFFF;
        cursor: pointer;
    }
    .futureDay:hover{
        background:#eee;
    }


    p.futureDay.choiceDay, p.futureDat.on{
        background: #0A174E;
        color: #fff;
        font-weight: 600;
        cursor: pointer;
    }
    
    #storehover:hover {
    	
    	background:#eee;
    	cursor: pointer;
    }
    #storehover * {
    	cursor: pointer;
    }
    

    .car {
        width: 300px;
        padding-bottom: 10px;
    }
    .textBox p {
        margin: 0px;
    }
    #car-list li, #car-list div, #car-list img,
    #mc-list li, #mc-list div, #mc-list img{
        float:left;
        list-style:none;
        width: 288px;
        cursor: pointer;
    }
    #car-list img, #mc-list img{
    	height: 216px;
    }
    #car-list, #mc-list{
        padding-left: 10px;
        margin: 0px;
    }
    #car-list [type=radio], #mc-list [type=radio] { 
	    position: absolute;
	    opacity: 0;
	    width: 0;
	    height: 0;
    }
    
    #mc-list li:hover, #car-list li:hover {
    	background:#eee;
    	
    }
    #car-no-data {
           padding-left: 350px;
    }
	#modal-mcCode, #modal-cCode {
		opacity:0;	
	}
	
    #modal.modal-overlay {
        width: 100%;
        height: 100%;
        position: absolute;
        left: 0;
        top: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;

        background: rgba(29, 29, 29, 0.5);
        box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
        backdrop-filter: blur(1.5px);
        -webkit-backdrop-filter: blur(1.5px);
        border-radius: 10px;
        border: 1px solid rgba(255, 255, 255, 0.18);
    }

    #modal .modal-window {
        background: white;
        box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
        backdrop-filter: blur( 13.5px );
        -webkit-backdrop-filter: blur( 13.5px );
        border-radius: 10px;
        border: 1px solid rgba( 255, 255, 255, 0.18 );
        width: 680px;
        height: 400px;
        position: relative;
        float: left;
        /* padding: 10px; */
    }

    #modal .title {
        padding-left: 10px;
        display: inline;
        /* text-shadow: 1px 1px 1px gray; */
        color: black;
        margin-top: 10px;
	}

    #modal .title h3 {
        display: inline;
    }

    #modal .close-area {
        display: inline;
        float: right;
        padding-right: 10px;
        cursor: pointer;
        /* text-shadow: 1px 1px 2px gray; */
        color: black;
        font-size: larger
    }
        
    #modal-content {
        display: flex;
        margin-top: 20px;
        padding: 0px 10px;
        height: 310px;
        width: auto;
        /* text-shadow: 1px 1px 2px gray; */
        color: black;
        flex-direction: row;
	}
    #modal-image {
        width: 400px;
        height: 100%;
/*             flex:auto; */
    }
    #modal-info{
/*             width: 40%;  */
            
            /* width: 200px; */
            /* height: 100%; */
        flex: 110px;
        font-size: medium;
    }
    #modal-info div{
        padding-top: 10px;
    }
    #modal-button{
        margin-top: 15px;
        margin-right: 120px;
    }
    .modal-window label {
        display: inline;
    }
    
    .content-tab {
       	padding-left:15px; padding-top:15px; padding-bottom:15px;
    }
    .tab-title {
       	padding-bottom:10px;
    }
    .tab-input {
       	width:220px;
    }
    .tab-next {
       	display: none; float:right; margin-right:10px;	
    }
    
</style>
<body>
    
    <div class="container">
        <div class="content">
            <div id="content-date">
                <h3>대여 기간 선택</h3>
                <div id="calendar-wrap">
                    <div id="calendar">
                        <table class="Calendar">
                        <thead>
                            <tr>
                                <td onClick="prevCalendar();" style="cursor:pointer;">&#60;</td>
                                <td colspan="6">
                                    <span id="calYear"></span>년
                                    <span id="calMonth"></span>월
                                </td>
                            </tr>
                            <tr>
                                <td>일</td>
                                <td>월</td>
                                <td>화</td>
                                <td>수</td>
                                <td>목</td>
                                <td>금</td>
                                <td>토</td>
                            </tr>
                        </thead>
                        
                        <tbody>
                        </tbody>
                    </table>
                </div>
                <div id="calendar2">
                    <table class="Calendar2">
                        <thead>
                            <tr>
            
                                <td colspan="6">
                                    <span id="calYear2"></span>년
                                    <span id="calMonth2"></span>월
                                </td>
                                <td onClick="nextCalendar();" style="cursor:pointer;">&#62;</td>
                            </tr>
                            <tr>
                                <td>일</td>
                                <td>월</td>
                                <td>화</td>
                                <td>수</td>
                                <td>목</td>
                                <td>금</td>
                                <td>토</td>
                            </tr>
                        </thead>
                        
                        <tbody>
                        </tbody>
                    </table>
                </div>
                
                </div>
                <div id="date-wrap">
                    <div id="rentdateText">
                        <span>대여일시</span>
                        <span id="rent-date-text"></span>
                        
                    </div>
                    <div id="returndateText">
                        <span>반납일시</span>
                        <span id="return-date-text"></span>
                        
                    </div>
                
                </div>
                <div id="period-default"><span><b>대여기간을 선택하세요.</b></span></div>
            </div>

            

            
            <div id="content-map" >
                <h3 id="chooseStore">지점 선택</h3>
                <div id="map" style="width:100%;height: 450px;"></div>
				<select name="storeLocation" id="storeLocation">
	                <option value="">-----</option>
	                <option value="서울">서울</option>
	                <option value="대전">대전</option>
	                <option value="대구">대구</option>
	                <option value="부산">부산</option>
	                <option value="울산">울산</option>
	                <option value="인천">인천</option>
	                <option value="경기">경기</option>
	                <option value="광주">광주</option>
	                <option value="전주">전주</option>
	                <option value="강원">강원</option>
	                <option value="제주">제주</option>
	            </select>
	
				<c:if test="${ not empty storeList }">
	            <table id="storeTable" style="text-align: center; border-bottom: 1px solid;">
	                <tr>
	                    <th style="width:250px">지점</th>
	                    <th style="width:650px">주소</th>
	                </tr>
					<c:forEach var="store" items="${ storeList }">
	                <tr>

	                    	<td id="storehover" style="height:40px">
		                    	<label for="${store.no }">${ store.name }</label>
		                    	<input type="radio" id="${store.no }" name="storeName" value=${ store.no } onclick="selectStore(this)" style="opacity:0">
	                    	

	                    	</td>
	                    	<td>${ store.address }</td>
	                </tr>
					</c:forEach>
	            </table>
				</c:if>
            </div>
            
            
            <div id="content-vehicle">
                <h3 id="chooseMotocycle">오토바이 선택</h3>

                <div id="selectKind_motocycle">
                    <label for="brand">브랜드</label>
                    <select name="brand" id="brand">
                        <option value="">------</option>
                        <option value="BMW">BMW</option>
                        <option value="Ducati">Ducati</option>
                        <option value="Honda">Honda</option>
                        <option value="Kawasaki">Kawasaki</option>
                        <option value="Suzuki">Suzuki</option>
                        <option value="Yamaha">Yamaha</option>
                    </select>
                    <label for="mccc">배기량</label>
                    <select name="mccc" id="mccc">
                        <option value="">------</option>
                        <option value="down1000">1000cc 이하</option>
                        <option value="up1000down1300cc">1000 ~ 1300cc</option>
                        <option value="up1300down1600cc">1300 ~ 1600cc</option>
                    </select>

                    
                    <ul id="mc-list" class="vehicle-list">
                    <c:if test="${ not empty motocycleList }">
                    <c:forEach var="motocycle" items="${ motocycleList }">
	                    <li>
	                    <label  for="mcCode" class="vehicle-element" >
	                        <input id="mcCode" type="radio" name="mcCode" value="${ motocycle.no }">
	                        
	                        <div class="vehicle-div">
	                            <img src="${ path }/resources/images/motocycle/${ motocycle.brand }/${ motocycle.name }.png"
									onclick="modalOn(${ motocycle.no },'${ motocycle.brand }', '${ motocycle.name }',${ motocycle.cc }, ${ motocycle.output },
									${ motocycle.torque },${ motocycle.fuel },${ motocycle.year },'${ motocycle.engine }', ${ motocycle.price });">
							</div>

	                        <div class="textBox">
	                            <b>${ motocycle.name }</b>
								<c:if test="${ motocycle.sale eq 'C' }">	                            
	                            	<p>${ motocycle.price }원</p>
								</c:if>
                            	<c:if test="${ motocycle.sale eq 'S' }">
	                            	<p>1원
                                		<s>${ motocycle.price }원</s> <span>(30% 할인)</span>
		                            </p>
                            	</c:if>
	                            
	                        </div>
	                        <div class="showBrand">
	                            <em>${ motocycle.brand }<span></span></em>
	                        </div>
	                    </label>		
	                    </li>
                    
                    </c:forEach>
                    </c:if>
                    </ul>
                    
                    <div id="modal" class="modal-overlay" style="display: none;">
                    <div class="modal-window">
                        <div class="title">
                            <h3>${ motocycle.brand } ${ motocycle.name }</h3>
                        </div>
                        <div class="close-area" onclick="modalOff();">X</div>
                        <label  for="modal-mcCode" class="vehicle-element" >
                            <input id="modal-mcCode" type="radio" name="mcCode" value="${ motocycle.no }">
                            <div id="modal-content">
                                <div id="modal-image">
                                    <img src="${ path }/resources/images/motocycle/${ motocycle.brand }/${ motocycle.name}.png" style="width: 380px; height: 300px;">
                                </div>F
                                <div id="modal-info">
                                    
                                    <div style="padding-top: 20px;">배기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="modal-info-1">${ motocycle.cc }</span>cc</div>
                                    <div>출력 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="modal-info-2">${ motocycle.output }</span>rpm</div>
                                    <div>토크 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="modal-info-3">${ motocycle.torque }</span>rpm</div>
                                    <div>연료탱크 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="modal-info-4">${ motocycle.fuel }</span>L</div>
                                    <div>연식 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="modal-info-5">${ motocycle.year }</span>년</div>
                                    <div>엔진형식 &nbsp;&nbsp;<span id="modal-info-6">${ motocycle.engine }</span></div>
                                    <div>1일 비용 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="modal-info-7">${ motocycle.price }</span>원 </div>
                                    <button type="button" id="modal-button" style="float: right;" onclick="modalOff(); selectCar();">선택</button>
                                </div>
                             </div>
                           </label>
                        </div>
                   </div>
                    
                    
<%--                     <c:if test="${ empty motocycleList}"> --%>
<!-- 	                <div id="car-no-data" class="vehicle-no-data" style="display: flex;"> -->
<!-- 	                    <p><i class="bi bi-chat-right-dots-fill"></i><b> 검색된 차량이 없습니다. </b></p> -->
<!-- 	                </div> -->
<%-- 				</c:if> --%>
                </div>

               
            </div>
			
            

            
        </div>
        <div class="content-tabs" style="display: inline-block;">
            <div class="content-tab" id="tab-1" >
                <div class="tab-title">
                    <span> <i class="bi bi-calendar2-week-fill"></i> 대여 기간</span>
                </div>
                <input id="rentPeriodText" class="tab-input" placeholder="기간을 선택하세요." readonly>
                <button class="tab-next" id="tab-next1">다음</button>
            </div>

            <div class="content-tab" id="tab-2">
                <div class="tab-title">
                    <span><i class="bi bi-geo-alt-fill"></i> 차량 대여 장소</span>
                </div>
                <input id="rentStoreText" class="tab-input" placeholder="대여할 장소를 선택하세요." value="" readonly>
                <button class="tab-next" id="tab-next2">다음</button>
            </div>
            
            <div class="content-tab active" id="tab-3">
                <div class="tab-title">
                    <span> <img src="${ path }/resources/images/car-front-fill.svg" width="18px"> 차량 선택</span>
                </div>
                <input id="rentCarText" class="tab-input" placeholder="차량을 선택하세요." readonly>
<!--                 <button class="tab-next" id="tab-next3">다음</button> -->
            </div>
            
            <form action="${ path }/payment" method="GET">
            	<input type="hidden" id="rentDate" name="rentDate" value="">
                <input type="hidden" id="returnDate" name="returnDate" value="">
                <input type="hidden" id="sNo" name="sNo" value="">
                <input type="hidden" id="mcNo" name="mcNo" value="">
                
                <input type="submit" class="tab-next" id="tab-next3" value="다음" >
            </form>
        </div>
    </div>

    
    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

    <script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=00be5712acaed1c7ea1e3d8899cba967"></script>

    <script>
        window.onload = function () { buildCalendar(); choiceDate();  }    // 웹 페이지가 로드되면 buildCalendar 실행

        let nowMonth = new Date();  // 현재 달을 페이지를 로드한 날의 달로 초기화
        let today = new Date();     // 페이지를 로드한 날짜를 저장
        today.setHours(0, 0, 0, 0);    // 비교 편의를 위해 today의 시간을 초기화

        // 달력 생성 : 해당 달에 맞춰 테이블을 만들고, 날짜를 채워 넣는다.
        function buildCalendar() {

            let firstDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth(), 1);     // 이번달 1일
            let lastDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth() + 1, 0);  // 이번달 마지막날

            let tbody_Calendar = document.querySelector(".Calendar > tbody");
            document.getElementById("calYear").innerText = nowMonth.getFullYear();             // 연도 숫자 갱신
            document.getElementById("calMonth").innerText = leftPad(nowMonth.getMonth() + 1);  // 월 숫자 갱신
            
            while (tbody_Calendar.rows.length > 0) {                        // 이전 출력결과가 남아있는 경우 초기화
                tbody_Calendar.deleteRow(tbody_Calendar.rows.length - 1);
            }
            
            let nowRow = tbody_Calendar.insertRow();        // 첫번째 행 추가  
            
            for (let j = 0; j < firstDate.getDay(); j++) {  // 이번달 1일의 요일만큼
                let nowColumn = nowRow.insertCell();        // 열 추가
            }
            
            for (let nowDay = firstDate; nowDay <= lastDate; nowDay.setDate(nowDay.getDate() + 1)) {   // day는 날짜를 저장하는 변수, 이번달 마지막날까지 증가시키며 반복  

                let nowColumn = nowRow.insertCell();        // 새 열을 추가하고
                let newDIV = document.createElement("p");
                choiceDate();
                newDIV.innerHTML = leftPad(nowDay.getDate());        // 추가한 열에 날짜 입력
                nowColumn.appendChild(newDIV);

                if (nowDay.getDay() == 6) {                 // 토요일인 경우
                    nowRow = tbody_Calendar.insertRow();    // 새로운 행 추가
                }

                if (nowDay < today) {                       // 지난날인 경우
                    newDIV.className = "pastDay";
                }
                else if (nowDay.getFullYear() == today.getFullYear() && nowDay.getMonth() == today.getMonth() && nowDay.getDate() == today.getDate()) { // 오늘인 경우           
                    newDIV.className = "today";
                    // newDIV.onclick = function () { choiceDate() }
                }
                else {                                      // 미래인 경우
                    newDIV.className = "futureDay";
                    // newDIV.onclick = function () { choiceDate() }
                }
            }

            let firstDate2 = new Date(nowMonth.getFullYear(), nowMonth.getMonth()+1, 1);    ////두번째캘린더1일
            let lastDate2 = new Date(nowMonth.getFullYear(), nowMonth.getMonth() + 2, 0);  // 두번째캘린더 마지막날
            
            let tbody_Calendar2 = document.querySelector(".Calendar2 > tbody");
            document.getElementById("calYear2").innerText = nowMonth.getFullYear();             // 연도 숫자 갱신
            if(leftPad(nowMonth.getMonth() + 2) >= 13) {
                document.getElementById("calYear2").innerText = nowMonth.getFullYear() + 1;  
                document.getElementById("calMonth2").innerText = leftPad(nowMonth.getMonth() + 1) - 11;  // 월 숫자 갱신
            } else {
                document.getElementById("calMonth2").innerText = leftPad(nowMonth.getMonth() + 2);  // 월 숫자 갱신
            }

            while (tbody_Calendar2.rows.length > 0) {                        
                tbody_Calendar2.deleteRow(tbody_Calendar2.rows.length - 1);
            }
            let nowRow2 = tbody_Calendar2.insertRow();         


            for (let j = 0; j < firstDate2.getDay(); j++) {  
                let nowColumn2 = nowRow2.insertCell();        
            }

            

            for (let nowDay2 = firstDate2; nowDay2 <= lastDate2; nowDay2.setDate(nowDay2.getDate() + 1)) {   // day는 날짜를 저장하는 변수, 이번달 마지막날까지 증가시키며 반복  

                let nowColumn2 = nowRow2.insertCell();        // 새 열을 추가하고


                let newDIV2 = document.createElement("p");
                choiceDate();
                newDIV2.innerHTML = leftPad(nowDay2.getDate());        // 추가한 열에 날짜 입력
                nowColumn2.appendChild(newDIV2);

                if (nowDay2.getDay() == 6) {                 // 토요일인 경우
                    nowRow2 = tbody_Calendar2.insertRow();    // 새로운 행 추가
                }

                if (nowDay2 < today) {                       // 지난날인 경우
                    newDIV2.className = "pastDay";
                }
                else if (nowDay2.getFullYear() == today.getFullYear() && nowDay2.getMonth() == today.getMonth() && nowDay2.getDate() == today.getDate()) { // 오늘인 경우           
                    newDIV2.className = "today";
                    newDIV2.className = "futureDay";

                    // newDIV2.onclick = function () { choiceDate() }
                }
                else {                                      // 미래인 경우
                    newDIV2.className = "futureDay";
                    // newDIV2.onclick = function () { choiceDate() }
                }
            }
        }

        let element = document.getElementsByClassName('futureDay');

        // 날짜 선택
        function choiceDate(e) {


                var selArray = [];
                for(let i= 0;i<element.length;i++){
                    element[i].addEventListener('click', function(e){
                        this.classList.add('on');
                        this.classList.add('choiceDay');
                        if(selArray.length < 2){
                            let thisIndex = Array.prototype.indexOf.call(element, this);
                            selArray.push(thisIndex);
                            selArray.sort();
                            // console.log(selArray);
                            addAll(selArray);
                            
                            let year1, month1, day1, year2, month2, day2;
                            let rentDay = new Date();
                            let returnDay = new Date();

                            let rentDate, returnDate;

                        
                        if($(".on").first().parents('table').hasClass('Calendar') === true
                        && $(".on").last().parents('table').hasClass('Calendar') === true){
                            year1 = document.getElementById("calYear").innerText;
                            month1 = document.getElementById("calMonth").innerText;
                            day1 = document.getElementsByClassName("on")[0].innerText;
                            year2 = document.getElementById("calYear").innerText;
                            month2 = document.getElementById("calMonth").innerText;
                            day2 = document.getElementsByClassName("on")[1].innerText;
                        
                        }
                        
                        else if($(".on").first().parents('table').hasClass('Calendar') === true &&
                        $(".on").last().parents('table').hasClass('Calendar2') === true){
                            year1 = document.getElementById("calYear").innerText;
                            month1 = document.getElementById("calMonth").innerText;
                            day1 = document.getElementsByClassName("on")[0].innerText;
                            year2 = document.getElementById("calYear2").innerText;
                            month2 = document.getElementById("calMonth2").innerText;
                            day2 = document.getElementsByClassName("on")[1].innerText;
                        }

                        else if($(".on").first().parents('table').hasClass('Calendar2') === true
                        && $(".on").last().parents('table').hasClass('Calendar2') === true){
                            year1 = document.getElementById("calYear2").innerText;
                            month1 = document.getElementById("calMonth2").innerText;
                            day1 = document.getElementsByClassName("on")[0].innerText;
                            year2 = document.getElementById("calYear2").innerText;
                            month2 = document.getElementById("calMonth2").innerText;
                            day2 = document.getElementsByClassName("on")[1].innerText;

                        }

                        document.getElementById("rent-date-text").innerText = year1+"-"+month1+"-"+day1;
                        document.getElementById("return-date-text").innerText = year2+"-"+month2+"-"+day2;
                        document.getElementById("rentPeriodText").value = year1+"/"+month1+"/"+day1+" ~ "+year2+"/"+month2+"/"+day2;
                        console.log(year1+"/"+month1+"/"+day1+"~"+year2+"/"+month2+"/"+day2);
                        
                        console.log(document.getElementById("rent-date-text").innerText);
                        document.getElementById('rentDate').value = document.getElementById("rent-date-text").innerText;
                        document.getElementById("returnDate").value = document.getElementById("return-date-text").innerText;
                        
                        
                        rentDay = new Date(year1, month1-1, day1);
                        returnDay = new Date(year2, month2-1, day2);


                        rentDate = rentDay.getFullYear() +
						'-' + ( (rentDay.getMonth()+1) < 9 ? "0" + (rentDay.getMonth()+1) : (rentDay.getMonth()+1) )+
						'-' + ( (rentDay.getDate()) < 9 ? "0" + (rentDay.getDate()) : (rentDay.getDate()) );
					
					    returnDate = returnDay.getFullYear() +
						'-' + ( (returnDay.getMonth()+1) < 9 ? "0" + (returnDay.getMonth()+1) : (returnDay.getMonth()+1) )+
						'-' + ( (returnDay.getDate()) < 9 ? "0" + (returnDay.getDate()) : (returnDay.getDate()) );
					
					    
                            addAll(selArray);
                            
                            document.getElementById('tab-next1').style.display="flex";
                        } else {
                            selArray = [];
                            resetAll();
                        }
                    });

                }
        }

        function addAll(e) {
            let startNum = e[0];
            let howlong = e[e.length-1] - e[0];
            for(let i = 0; i< e[e.length-1] - e[0]; i++){
                element[startNum+1].classList.add('choiceDay');
                startNum++;
            }
            console.log(howlong);
            if(howlong > 0) {
                document.getElementById("period-default").innerHTML = '총 <b>' + howlong + '</b>일 사용';
            }
            selArray = [];
        }


        function resetAll(){
            for(let i=0; i<element.length;i++){
                element[i].classList.remove('on');
                element[i].classList.remove('choiceDay');
                selArray = [];
                document.getElementById("period-default").innerHTML = '<b>대여기간을 선택하세요.<b>';
                document.getElementById("rent-date-text").innerHTML = '';
                document.getElementById("return-date-text").innerHTML = '';
            }
        }


        // 이전달 버튼 클릭
        function prevCalendar() {
            nowMonth = new Date(nowMonth.getFullYear(), nowMonth.getMonth() - 1, nowMonth.getDate());   // 현재 달을 1 감소
            document.getElementById("period-default").innerHTML = '<b>대여기간을 선택하세요.<b>';
            buildCalendar();    // 달력 다시 생성+
        }
        // 다음달 버튼 클릭
        function nextCalendar() {
            nowMonth = new Date(nowMonth.getFullYear(), nowMonth.getMonth() + 1, nowMonth.getDate());   // 현재 달을 1 증가
            document.getElementById("period-default").innerHTML = '<b>대여기간을 선택하세요.<b>';
            buildCalendar();    // 달력 다시 생성
        }

        // input값이 한자리 숫자인 경우 앞에 '0' 붙혀주는 함수
        function leftPad(value) {
            if (value < 10) {
                value = "0" + value;
                return value;
            }
            return value;
        }
        
        function selectStore(e) {
        	console.log(e.value);
        	console.log(e);
        	let selectSno = $('input[name="storeName"]:checked').val();
        	let selectSname = $("label[for='"+selectSno+"']").text();
        	console.log(selectSno);
        	console.log(selectSname);
        	document.getElementById('rentStoreText').value = $("label[for='"+selectSno+"']").text();
        	document.getElementById('sNo').value = e.value;
        	document.getElementById('tab-next2').style.display="flex";
        	
        	
        }

    </script>

    <script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
        mapOption = { 
            center: new kakao.maps.LatLng(37.4989761690588, 127.03290014843104), // 지도의 중심좌표
            level: 8 // 지도의 확대 레벨
        };
    
    var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
    
    var positions = [	// 마커의 위치
        {
            title: '서울 강남지점', 
            latlng: new kakao.maps.LatLng(37.4989761690588, 127.03290014843104)
        },
        {
        	title: '서울 영등포지점', 
            latlng: new kakao.maps.LatLng(37.5249988126906,126.92594967251503)
        },
        {
        	title: '대전 서구점', 
            latlng: new kakao.maps.LatLng(36.3519273184447 ,127.37829380780403)
        },
        {
        	title: '대구 중구점',
            latlng: new kakao.maps.LatLng(35.869314703493,128.59507903510735)
        },
        {
        	title: '대구 달서점',
            latlng: new kakao.maps.LatLng(35.853345904396 ,128.508798462966)
        },
        {
        	title: '부산 수영점',
            latlng: new kakao.maps.LatLng(35.1605527151131 ,129.12451977276584)
        },
        {
        	title: '부산 사상점',
            latlng: new kakao.maps.LatLng(35.1641642222102 ,128.9789077794985)
        },
        {
        	title: '울산 남구점',
            latlng: new kakao.maps.LatLng(35.5395655670538 ,129.3115915622437)
        },
        {
        	title: '울산 북구점',
            latlng: new kakao.maps.LatLng(35.5931478165657 ,129.3550462377374)
        },
        {
        	title: '인천 연수점',
            latlng: new kakao.maps.LatLng(37.3882171255216,126.64329287461538)
        },
        {
        	title: '인천 중구점',
            latlng: new kakao.maps.LatLng(37.4933046839883 ,126.48835085024388)
        },
        {
        	title: '경기 수원점',
            latlng: new kakao.maps.LatLng(37.2595760617385 ,127.0467206073721)
        },
        {
        	title: '경기 평택점',
            latlng: new kakao.maps.LatLng(36.9922989075909 ,127.11275471967605)
        },
        {
        	title: '경기 가평점',
            latlng: new kakao.maps.LatLng(37.8315112353014 ,127.50965074589541)
        },
        {
        	title: '광주 서구점',
            latlng: new kakao.maps.LatLng(35.160083721041,126.8514571244133)
        },
        {
        	title: '전주 전주점',
            latlng: new kakao.maps.LatLng(35.8291924669786,127.1373816940671)
        },
        {
        	title: '강원 양양점',
            latlng: new kakao.maps.LatLng(38.0754594563481,128.6190086264827)
        },
        {
        	title: '강원 강릉점',
            latlng: new kakao.maps.LatLng(37.7644829376663,128.89952098203378)
        },
        {
        	title: '제주 항공점',
            latlng: new kakao.maps.LatLng(33.5071985198936,126.49290391265892)
        }
    ], selectedMarker = null;
   
	
	var i, marker;
	for (i = 0; i < positions.length; i++) {
	    addMarker(positions[i].latlng);
	}
	
	function addMarker(position){
		var marker = new kakao.maps.Marker({
			map: map,
			position: positions[i].latlng,
			title: positions[i].title,
			
		});
		
		kakao.maps.event.addListener(marker, 'click', function() {
			selectedMarker = marker;
		
			document.getElementById('rentStoreText').value = selectedMarker.getTitle();
			document.getElementById('tab-next2').style.display="flex";
			let sNo;
			if(document.getElementById('rentStoreText').value=="서울 강남지점"){
				sNo = 1;
			} else if(document.getElementById('rentStoreText').value=="서울 영등포지점"){
				sNo = 2;
			} else if(document.getElementById('rentStoreText').value=="대전 서구점"){
				sNo = 3;
			} else if(document.getElementById('rentStoreText').value=="대구 중구점"){
				sNo = 4;
			} else if(document.getElementById('rentStoreText').value=="대구 달서점"){
				sNo = 5;
			} else if(document.getElementById('rentStoreText').value=="부산 수영점"){
				sNo = 6;
			} else if(document.getElementById('rentStoreText').value=="부산 사상점"){
				sNo = 7;
			} else if(document.getElementById('rentStoreText').value=="울산 남구점"){
				sNo = 8;
			} else if(document.getElementById('rentStoreText').value=="울산 북구점"){
				sNo = 9;
			} else if(document.getElementById('rentStoreText').value=="인천 연수점"){
				sNo = 10;
			} else if(document.getElementById('rentStoreText').value=="인천 중구점"){
				sNo = 11;
			} else if(document.getElementById('rentStoreText').value=="경기 수원점"){
				sNo = 12;
			} else if(document.getElementById('rentStoreText').value=="경기 평택점"){
				sNo = 13;
			} else if(document.getElementById('rentStoreText').value=="경기 가평점"){
				sNo = 14;
			} else if(document.getElementById('rentStoreText').value=="광주 서구점"){
				sNo = 15;
			} else if(document.getElementById('rentStoreText').value=="전주 전주점"){
				sNo = 16;
			} else if(document.getElementById('rentStoreText').value=="강원 양양점"){
				sNo = 17;
			} else if(document.getElementById('rentStoreText').value=="강원 강릉점"){
				sNo = 18;
			} else if(document.getElementById('rentStoreText').value=="제주 공항점"){
				sNo = 19;
			} 
			document.getElementById('sNo').value = sNo;
			
			
		});

		
	}

	
    
    </script>

<script>

    let modal = document.getElementById("modal");

	function modalOn(no, brand, name, cc, output, torque, fuel, year, engine, price) {

        modal.style.display = "flex";
        
        document.getElementById('modal-mcCode').value=no;
        $('#modal h3').text(brand + " " + name);
        $('#modal-info-1').text(cc);
        $('#modal-info-2').text(output);
        $('#modal-info-3').text(torque);
        $('#modal-info-4').text(fuel);
        $('#modal-info-5').text(year);
        $('#modal-info-6').text(engine);
        $('#modal-info-7').text(price);
        $('#modal-image>img').attr("src", "${path}/resources/images/motocycle/"+brand+"/"+name+".png");
    }
    
//     function modalOn(e){
//     	modal.style.display = "flex"
//     }
    
    function isModalOn() {
        return modal.style.display === "flex"
    }
    
    function modalOff() {
        modal.style.display = "none"
        
    }
    function selectCar() {
    	let rentCarText = $('#modal h3').text();
    	document.getElementById('rentCarText').value = rentCarText;
    	document.getElementById('mcNo').value = document.getElementById('modal-mcCode').value;
    	document.getElementById('tab-next3').style.display="flex";
    }
    
//     function transferVehicle(rid){

//     	$('#rerid').val(rid)

//     }
    
    
    let modalButton = document.getElementById("modal-button");
    
//     modalButton.addEventListener("click", function() {
        
//         modalOff();
//         let carCodeText = document.getElementById("car-code").value;
//         document.getElementById('rentCarText').value=carCodeText;
// //         $('#rentCarText').value = $('car-code').value;
// //         document.getElementById("rentCarText").value = 'z';
//     })
    

    
    // let closeBtn = modal.querySelector(".close-area")
    // closeBtn.addEventListener("click", e => {
    //     modalOff()
    // })
    
    modal.addEventListener("click", e => {
        let evTarget = e.target
        if(evTarget.classList.contains("modal-overlay")) {
            modalOff()
        }
    })
    
    window.addEventListener("keyup", e => {
        if(isModalOn() && e.key === "Escape") {
            modalOff()
        }
    })
        </script>
    
<script>
    $(document).ready(function() {
        $('#content-vehicle').hide();
        $('#content-map').hide();
        $('#tab-2').hide();
        $('#tab-3').hide();

        $('#tab-next1').click(function(){
            $('#content-date').hide();
            $('#content-map').show();
            $('#content-vehicle').hide();
            $('#tab-2').show();

        });

        $('#tab-next2').click(function(){
            $('#content-date').hide();
            $('#content-map').hide();
            $('#content-vehicle').show();
            $('#tab-3').show();
        });

//         $("input[name='kind']").change(function(){
//             if($("input[name='kind']:checked").val() == 'car'){
//                 $('#chooseCar').show();
//                 $('#chooseMotocycle').hide();

//                 $('#selectKind_car').show();
//                 $('#selectKind_motocycle').hide();
//             }
//             if($("input[name='kind']:checked").val() == 'motocycle'){
//                 $('#chooseCar').hide();
//                 $('#chooseMotocycle').show();
                
//                 $('#selectKind_motocycle').show();
//                 $('#selectKind_car').hide();
//             }
//         });
//         $("#storeLocation").on('change', () => {
//         	let storeLocation = $('#storeLocation').val();
//         	$.ajax({
//         		type: 'GET',
//         		url: '${path}/rent/motocycle/',
//         		dataType: 'json',
//         		data: {
//         			storeLocation
//         		},
//         		success: (stores) => {
//         			console.log(stores);
//         		},
//         		error: (error) =>{
//         			console.log('에러;;;;;');
//         		}
        	
//         	})
//         })
        
//         날짜지점 적용x 브랜드가져오기 
//         $("#selectKind_motocycle #brand").on('change', () => {
//             let brand = $("#brand>option:selected").val();
//             $('#mc-list').empty();
//             $.ajax({
//                type: 'GET',
//                url: '${ path }/rent/motocycle/'+brand,

//                dataType: 'json',
//                data: {
//                   brand
//                },
//                success: (motocycles) => {
                  
//                   console.log(motocycles);

                  
//                   for(let i = 0; i < motocycles.length; i++) {
//                       $('#mc-list').append('<li><label  for="mcCode" class="vehicle-element" ><input id="mcCode" type="radio" name="mcCode" value='+motocycles[i].no+'>'
//                         +'<div class="vehicle-div"><img src="${ path }/resources/images/motocycle/'+motocycles[i].brand+'/'+motocycles[i].name+'.png" onclick=modalOn('+motocycles[i].no + ",'"+motocycles[i].brand+"','"
//                         +motocycles[i].name+"',"+motocycles[i].cc+','+motocycles[i].output+','+motocycles[i].torque+','+motocycles[i].fuel+','+motocycles[i].year+",'"+motocycles[i].engine+"',"+motocycles[i].price
//                         +');></div><div class="textBox"><b>'+motocycles[i].name+'</b><p>'+motocycles[i].price+'원</p></div><div class="showBrand"><em>'+motocycles[i].brand+'<span></span></em></div></label></li>'

//                       );
//                   }
                  
//                },
//                error: (error) => {
//                 console.log(error);
//              	}
//                })
               
//          });

        	
//         //날짜지점 적용해서 브랜드뽑기
//         $("#selectKind_motocycle #brand").on('change', () => {
//         	let rentDate = $('#rentDate').val();
//         	let returnDate = $('#returnDate').val();
//         	let sNo = $('#sNo').val();
//             let brand = $("#brand>option:selected").val();
//             console.log(brand);
//             $('#mc-list').empty();
//             $.ajax({
//                type: 'GET',
//                url: '${ path }/rent/motocycles/'+rentDate+'&'+returnDate+'&'+sNo+'&'+brand,
               
//                dataType: 'json',
//                data: {
//             	   rentDate,
// 	       			returnDate,
// 	       			sNo,
// 	                brand
//                },
//                success: (motocycles) => {
                  
//                   console.log(motocycles);
//                   console.log('dddd');
                  
//                },
//                error: (error) => {
//                 console.log(error);
//              }
               
//             });
//          });
        
		// 날짜 지점 선택후 전체 리스트
			$('#tab-next2').on('click', () => {
				
        	let rentDate = $('#rentDate').val();
        	let returnDate = $('#returnDate').val();
        	let sNo = $('#sNo').val();
        	
        	
        	$.ajax({
        		type: 'GET',
        		url: '${ path }/rent/motocycles/'+rentDate+'&'+returnDate+'&'+sNo,
        		dataType: 'json',
        		async: false, 
        		data: {
        			rentDate,
        			returnDate,
        			sNo
        		},
        		success: (motocycles) => {
                    
                    console.log(motocycles);

                    
                    if(motocycles==""){
                    	$('#mc-list').append('<p style="padding-left:300px; padding-top: 30px;"><i class="bi bi-chat-right-dots-fill"></i><b> 검색된 차량이 없습니다. </b></p>');
                    }
                    for(let i = 0; i < motocycles.length; i++) {
                    	if(motocycles[i].sale=='C'){
                    		
                        $('#mc-list').append('<li><label  for="mcCode" class="vehicle-element" ><input id="mcCode" type="radio" name="mcCode" value='+motocycles[i].no+'>'
                          +'<div class="vehicle-div"><img src="${ path }/resources/images/motocycle/'+motocycles[i].brand+'/'+motocycles[i].name+'.png" onclick=modalOn('+motocycles[i].no + ",'"+motocycles[i].brand+"','"
                          +motocycles[i].name+"',"+motocycles[i].cc+','+motocycles[i].output+','+motocycles[i].torque+','+motocycles[i].fuel+','+motocycles[i].year+",'"+motocycles[i].engine+"',"+motocycles[i].price
                          +');></div><div class="textBox"><b>'+motocycles[i].name+'</b><p>'+motocycles[i].price+'원</p></div><div class="showBrand"><em>'+motocycles[i].brand+'<span></span></em></div></label></li>'

                        );
                        
                    	} else if(motocycles[i].sale=='S'){
                    		 $('#mc-list').append('<li><label  for="mcCode" class="vehicle-element" ><input id="mcCode" type="radio" name="mcCode" value='+motocycles[i].no+'>'
                              +'<div class="vehicle-div"><img src="${ path }/resources/images/motocycle/'+motocycles[i].brand+'/'+motocycles[i].name+'.png" onclick=modalOn('+motocycles[i].no + ",'"+motocycles[i].brand+"','"
                              +motocycles[i].name+"',"+motocycles[i].cc+','+motocycles[i].output+','+motocycles[i].torque+','+motocycles[i].fuel+','+motocycles[i].year+",'"+motocycles[i].engine+"',"+motocycles[i].price
                              +');></div><div class="textBox"><b>'+motocycles[i].name+'</b><p>'+motocycles[i].price*0.7+'원<s>'+motocycles[i].price+'원</s> <span>(30% 할인)</span></p></div><div class="showBrand"><em>'+motocycles[i].brand+'<span></span></em></div></label></li>');
                    	}
                    }
                    
                    
                 },

        		error:(error) => {
        			console.log(error);
        		}
        	})
        })

    });

</script>
</body>
</html>