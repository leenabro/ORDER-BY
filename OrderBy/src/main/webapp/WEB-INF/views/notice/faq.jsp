<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        div {
            /* border: 1px solid  wheat; */
            box-sizing: border-box;
        }


        /* 전체를 감싸는 div */
        .wrap {
            width: 1000px;
            height: 800px;
            margin: auto;
        }

        #header {
            height: 20%;
        }

        #content {
            height: 50%;
        }

        #footer {
            height: 20%;
        }

        #content>div {
            height: 100%;
            float: left;
            display: inline-block;
        }

        #content1 {
            width: 15%;
            
        
            
        }

        #content2 {
            width: 85%;
            margin-left: -4px;
            padding-left: 20%;
            padding-right: 10%;
            padding-top: 3%;
        
        
            
            
        }
        .mypagelogo{
        font-size: 14pt;
        list-style-type: none;
        line-height: 200%;

        }
        


.main1{
    padding-left: 40%;
    margin-bottom: 10%;
}

/* *{
    margin:  0;
    padding: 0;
} */

body{
    display:  flex;
    height: 100%;
    justify-content: center;
    align-items: center;
}
.container{
    width: 120%;
    box-shadow: 0 0 20px #e5e5e5;
    padding: 0 40px;
    /* margin-top: 10%; */
    text-align: center;
}
input[id*="answer"]{
    display: none;
}

input[id*="answer"] + label{
    font-size: 13px;
    display: flex;
    line-height: 4em;
    justify-content: space-between;
    position: relative;
    border-bottom: 1px solid #d5d5d5;
    cursor: pointer;
}

input[id*="answer"] + label i { 
    position: absolute;
    top: 50%;
    right: 0;
    transform: translateY(-50%);
    transition: all .3s;
}

input[id*="answer"] + label + div{
    overflow: hidden;
    height: 0;
    display: flex;
    align-items: center;
    transition: all .3s;
}

input[id*="answer"] + label + div p{
    display: inline-block;
    padding: 20px 0;
}

input[id*="answer"]:checked + label + div{
    height: 250px;
    border-bottom: 2px solid #d5d5d5;
}

input[id*="answer"]:checked + label i{
    transform: rotate(180deg);
}

    </style>
</head>
<body>
<div class="wrap">
        <div id="header"></div>
        <!-- <div id="content"><div id="content1"></div><div id="content2"></div></div> -->
        <div id="content">
            
            <div id="content2">
                <br><br><h1 class="main1">자주묻는 질문</h1>
                <div class="container">
                    <input type="radio" name="accordion" id="answer1">
                    <label for="answer1">
                        주행 중 사고가 가면 어떡하죠?
                        <i class="fas fa-angle-down"></i>
                    </label>
                    <div>
                        <p>자동차 표준 대여약관 제 19조에 따라 사고 발생 시 회사에 즉시 통보하지 않고 방치할 경우 보험 보상의 일부 또는 전부를 보상받을 수 없습니다.</p>
                    </div>

                    <input type="radio" name="accordion" id="answer2">
                    <label for="answer2">
                        주유 충전은 어떻게 해야하나요?
                        <i class="fas fa-angle-down"></i>
                    </label>
                    <div>
                        <p> 앞에 있는 카드로 사용하시면 됩니다.</p>
                    </div>

                    <input type="radio" name="accordion" id="answer3">
                    <label for="answer3">
                        과속 카메라에 걸렸어요!
                        <i class="fas fa-angle-down"></i>
                    </label>
                    <div>
                        <p>등록되신 주소로 우편이 날라갑니다. </p>
                    </div>

                    <input type="radio" name="accordion" id="answer4">
                    <label for="answer4">
                        반납할 때 연료를 채워야 하나요?
                        <i class="fas fa-angle-down"></i>
                    </label>
                    <div>
                        <p>원활한 서비스 운영을 위해 반납 시 자동차 연료탱크의 25% 이상 주유를 권장합니다. </p>
                    </div>

                    <input type="radio" name="accordion" id="answer5">
                    <label for="answer5">
                        블루투스는 어떻게 연결 하나요?
                        <i class="fas fa-angle-down"></i>
                    </label>
                    <div>
                        <p>차량에서 설정 → 블루투스 확인 → 휴대폰에서 블루투스 실행 → 휴대폰에서 해당 차량을 찾아서 연결하시면 됩니다. </p>
                    </div>
                    
                      <input type="radio" name="accordion" id="answer6">
                    <label for="answer6">
                        사고 발생 시 기록해야 할 사항들은어떤 것들이 있나요?
                        <i class="fas fa-angle-down"></i>
                    </label>
                    <div>
                        <p>사고 발생 시 사고 경위 파악을 위하여 필수적으로 기록해야 할 사항들이며 해당 사항들로 인하여 사고처리 진행 과정이 지연될 수 있으니 이 점 유념하여 다음 내용을 기록해주세요.<br>
							1. 사고 발생 장소와 일시 <br>
							2. 부상자 여부<br>
							3. 동승자 및 관련자 이름과 연락처<br>
							4. 차량번호<br>
							5. 기타 파손된 구조물이 있다면 소유자 연락처<br>
							6. 사고 현장 및 차량은 사진 및 영상으로 촬영하여 보관<br>
							* 사고 발생 시 모든 사고 처리가 완료될 때까지 회원 자격이 일시 정지되며, 처리가 완료된 이후 다시 이용이 가능합니다. </p>
                    </div>
                    
                </div>
                <br><br><br><br>
        </div>
        <div id="footer"></div>
    </div>
    <script>
        var acc = 
        document.getElementsByClassName("fas fa-angle-down");
        var i;

        for (i = 0;  i < acc.length; i++) {
            acc[i].addEventListener("click", function(){

                this.classList.toggleO("active");

                var panel = this.nextEl
            })
            
        }
    </script>
</body>
</html>