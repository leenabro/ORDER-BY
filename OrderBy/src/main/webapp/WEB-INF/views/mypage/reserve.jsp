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
<script src="${ path }/resources/js/jquery-3.6.3.js"></script>
 <style>
        div {
            /* border: 1px solid  wheat; */
            box-sizing: border-box;
        }


        /* 전체를 감싸는 div */
        .wrap123 {
           /*  width: 1000px; */
            height: 800px;
          /*   margin: auto; */
        }

        #header {
            height: 20%;
        }

        #content {
            height: 70%;
        }

        #footer {
            /* height: 20%; */
        }

        #content>div {
            height: 100%;
            float: left;
            /* display: inline-block; */
        }

        #content1 {
            width: 15%;
        
            
        }

        #content2 {
            width: 85%;
            /* margin-left: -4px; */
            padding-left: 5%;
            padding-right: 10%;
            padding-top: 3%;
        
        
            
            
        }
        .mypagelogo{
        font-size: 14pt;
        list-style-type: none;
        line-height: 200%;

        }
        
        a{
    text-decoration: none;
    color: black;
}
a:hover{
    color: gray;
}    

.d-none{
    display: none;
}
 
.board{
    width: 1200px;
    height: 100%;
    margin: auto;
}
 
.table{
    font-size :13px;
    border-collapse: collapse;
    width: 800px;
    /* margin-top:200px; */
    border: 1px solid #ccc;    
    text-align: center;
    border-left: none;
    border-right: none;
    
}
.thead td {
    background: #eee;
    font-size: 11px;
     text-align: center;
}
 
td{
    height: 50px;
    border-bottom:1px solid #ccc;
}
 
tr td:nth-child(2){
    width: 100px;
}
 
/* ********페이징******** */
.page-nation li{ 
    list-style: none;
} 
 
.page-wrap {
    text-align:center;
    font-size:0px;
 }
.page-nation  {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top:20px;
    margin-right:400px;
}
 
.page-nation a {
    display:block;
    margin:0 3px;
    float:left;
    border:1px solid #e6e6e6;
    width:28px;
    height:28px;
    line-height:28px;
    text-align:center;
    background-color: whitesmoke;
    font-size:11px;
    color: black;
    text-decoration:none;
    font-weight:bold;
    border: none;
}
.page-nation a:hover{
    background-color:gray;
    color:white;
}

.img2{
    width:15%;
    height: 100%;
    /* float: left; */
    vertical-align: middle;
}

.l_title{
margin-top:20px;
font-size: 25px;
}

.bt1{
border: none;
 background-color: white;
  color: black;
  width: 10%;
  
}
    </style>
</head>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<div class="wrap123">
        <div id="content">
            <div id="content1">
                <h1 class="l_title">My 페이지</h1>
                <br><br><br><br>

                 <ul class="mypagelogo">
                    <li><a href="${ path }/mypage/main" class="on"  >개인정보</a></li>
                    <li><a href="${ path }/mypage/payment" class="on">결제내역</a></li>
                    <li><a href="${ path }/mypage/reserve" class="on" >예약확인</a></li>
                    <li><a href="${ path }/mypage/dibs" class="on" >찜목록</a></li>
                </ul>
            </div>
            <div id="content2">
                <br><br><h1 class="main1">예약확인</h1>
                <section class="main">
                   
                        <div class="board">
                            <table class="table">
                                <thead class="thead">
                                    <tr>
                                        <td>예약 번호</td>
                                        <td>대여 일시</td>
                                        <td>반납 일시</td>
                                        <td>예약 코드</td>
                                        <td>예약 취소</td>
                                    </tr>
                                </thead>
                                <tbody class="tbody">
                                 	<c:if test="${ empty list }">
					                    <tr>
					                  <td colspan="6">
					                     조회된 게시글이 없습니다.
					                  	</td>
					               		</tr>   
		                                </c:if>
		                                <c:if test="${ not empty list }">
		                                <c:forEach var="reserve" items="${ list }">
                                    <tr>
                                        <td>${ reserve.no }</td>
                                        <td>${ reserve.rentdate}</td>
                                        <td>${ reserve.returndate }</td>
                                        <td>${ reserve.puid }</td>
                                        <td> <button class="btn1"  type="button"  id="btnDelete">취소하기</button></td>
                                    </tr>
                                    <!-- <button  type="button"  id="btnDelete">삭제</button> -->
                                     </c:forEach>
                                     </c:if>
                                </tbody>
                            </table>
                                                        <div class="page-wrap">
                               <div class="page-nation">
            <button onclick="location.href='${ path }/mypage/reserve?page=1'">&lt;&lt;</button>
   
            <!-- 이전 페이지로 -->
            <button onclick="location.href='${ path }/mypage/reserve?page=${ pageInfo.prevPage }'">&lt;</button>
   
            <!--  10개 페이지 목록 -->
            <c:forEach begin="${ pageInfo.startPage }" end="${ pageInfo.endPage }" varStatus="status">
               <c:choose>
                  <c:when test="${ status.current == pageInfo.currentPage}">
                     <button disabled>${ status.current }</button>
                  </c:when>
                  <c:otherwise>                  
                     <button onclick="location.href='${ path }/mypage/reserve?page=${ status.current }'">${ status.current }</button>
                  </c:otherwise>
               </c:choose>
            </c:forEach>
   
   
            <!-- 다음 페이지로 -->
            <button onclick="location.href='${ path }/mypage/reserve?page=${ pageInfo.nextPage }'">&gt;</button>
   
            <!-- 맨 끝으로 -->
            <button onclick="location.href='${ path }/mypage/reserve?page=${ pageInfo.maxPage }'">&gt;&gt;</button>
         </div>
                            </div>
                        </div>
                </section>
                
        </div>
     
    </div>
  	<script>
	$(document).ready(() => {
		$('#btnDelete').on('click', () => {
			if(confirm('취소 시  다시 되돌릴 수 없습니다 취소하시겠습니까?')) {
			 /* } else {
	                alert('돌아가기'); */
	           
				location.replace('${ path }/reserve/delete?no=${ reserve.no }');
			}
		});
	});
	
	/* 
	$(document).ready(() => {
		$('#btnDelete').on('click', () => {
			if(confirm('정말로 게시글을 삭제 하시겠습니까?')) {
				location.replace('${ path }/notice/delete?n_no=${ notice.n_no }');
			}
		});
	}); */
	
	</script>

</body>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</html>