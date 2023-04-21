<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:set var="path" value="${ pageContext.request.contextPath }"/>

<%@ page session="false" %>
<!DOCTYPE HTML>
<html>
<head>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <link href="${path }/resources/static/assets/css/priceproduct.css" rel="stylesheet">
	<style>
	.cartableclass tr
 	{
 		border: 1px solid rgb(209, 208, 208);
	}
	
	.cartableclass th
 	{	
	 	font-family: "Roboto";
		background-color: rgb(110, 131, 160);
		color: white;
		height: 70px;
		font-size: 20px;
 		border: 1px solid rgb(209, 208, 208);
 		text-align: center;
  		width: 300px;	
	}
	
	.cartableclass td
 	{
 		font-family: "Roboto";
  		height: 50px;
 		font-size: 15px;
 		border: 1px solid rgb(209, 208, 208);
 		color: black;
 		text-align: center;
 		text-align: center;
  		width: 300px;
	}
	
	.cartableclass .motocycletableclass {
	border : 1px solid grey;
	}
	
	.motocycletableclass tr
 	{
 		border: 1px solid rgb(209, 208, 208);
	}
	
	.motocycletableclass th
 	{
	 	font-family: "Roboto";
		background-color: rgb(110, 131, 160);
		color: white;
		height: 70px;
		font-size: 20px;
 		border: 1px solid rgb(209, 208, 208);
 		text-align: center;
  		width: 300px;
	}
	
	.motocycletableclass td
 	{
 		font-family: "Roboto";
  		height: 50px;
 		font-size: 15px;
 		color: black;
 		text-align: center;
 		border: 1px solid rgb(209, 208, 208);
 		text-align: center;
  		width: 300px;
	}
	.cartable {
	  margin-top: 4%;
	}
	
	.motocycletable {
	  margin-top: 5%;
	  margin-bottom: 10%;
	}
	
	.cartableclass {
	  width: 90%;
	  margin-left: 5%;
	  margin-right: 5%;
	  margin-top: 2%;
	}
	
	.motocycletableclass {
	  width: 90%;
	  margin-left: 5%;
	  margin-right: 5%;
	  margin-top: 2%;
	}
	.motocycletable > span {
	  font-size: 40px;
	  font-weight: bold;
	  margin-left: 5%;
	  color: black;
	}
	.cartable > span {
	  font-size: 40px;
	  font-weight: bold;
	  margin-left: 5%;
	  color: black;
	}
	

	</style>
</head>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<div class="centerimage">
      <h1 class="imagetext" style="margin-top:90px; padding-bottom:45px;">Models</h1>
      <h2 class="imagetext2">차종 및 요금</h2>
    </div>

    <div class="fulldiv">
      <h1 class="maintext" style="  font-size: 30px;font-weight: 500; color: #c12a5f; margin-bottom: 30px;margin-left: 5%; margin-top:3%">
        <span class="mainspan" style="  font-size: 40px;font-weight: bold;color: #000; margin-right: 10px;">Models</span>
        "보유 차종 현황"
      </h1>

      <h3 style="margin-left: 5%; font-size:23px; margin-bottom:10px;">Order By 회원만이 누릴 수 있는 특별한 혜택</h3>
      <h4 style="margin-left: 5%; font-size:19px;">
        Order By 차종 대여료 금액을 아래의 표로 한눈에 확인하실수 있습니다.
      </h4>



      <div class="cartable">
        <span>자동차</span>
        <table class="cartableclass">
          <thead>
            <tr>
              <th style="vertical-align: middle; font-size:22px; font-weight:bold">브랜드</th>
              <th style="vertical-align: middle; font-size:22px; font-weight:bold">차량 이름</th>
              <th style="vertical-align: middle; font-size:22px; font-weight:bold">차량 년식</th>
              <th style="vertical-align: middle; font-size:22px; font-weight:bold">차량 배기</th>
              <th style="vertical-align: middle; font-size:22px; font-weight:bold">차량 금액(일)<br />VAT 별도</th>
            </tr>
          </thead>
          <tbody>
            <c:if test="${ empty procar }">
              <tr>
                <td colspan="5" style="text-align: center">
                  조회되는 차량이 없습니다.
                </td>
              </tr>
            </c:if>
            <c:if test="${ not empty procar }">
            	<c:forEach var="procar" items="${procar }">
            <tr>
              <td style="vertical-align: middle;">${procar.brand }</td>
              <td style="vertical-align: middle;">${procar.name }</td>
              <td style="vertical-align: middle;">${procar.year }<span> 년식</span></td>
              <td style="vertical-align: middle;">${procar.cc } <span> CC</span></td>
              <td style="vertical-align: middle;"><fmt:formatNumber value="${procar.price }" pattern="#,###"/><span>원</span></td>
            </tr>
            	</c:forEach>
            </c:if>
          </tbody>
        </table>
      </div>



      <div class="motocycletable" >
        <span>오토바이</span>
        <table class="motocycletableclass" >
          <thead >
            <tr >
              <th style="vertical-align: middle; font-size:22px; font-weight:bold">브랜드</th>
              <th style="vertical-align: middle; font-size:22px; font-weight:bold">오토바이 이름</th>
              <th style="vertical-align: middle; font-size:22px; font-weight:bold">오토바이 년식</th>
              <th style="vertical-align: middle; font-size:22px; font-weight:bold">오토바이 배기</th>
              <th style="vertical-align: middle; font-size:22px; font-weight:bold">오토바이 금액(일)<br />VAT 별도</th>
            </tr>
          </thead>
          <tbody>
            <c:if test="${ empty promoto }">

              <tr>
                <td colspan="5" style="text-align: center">
                  조회되는 오토바이가 없습니다.
                </td>
              </tr>
            </c:if>
            <c:if test="${ not empty promoto }">
             <c:forEach var="promoto" items="${promoto }">
            <tr>
              <td style="vertical-align: middle;">${promoto.brand }</td>
              <td style="vertical-align: middle;">${promoto.name }</td>
              <td style="vertical-align: middle;">${promoto.year }<span> 년식</span></td>
              <td style="vertical-align: middle;">${promoto.cc }<span> CC</span></td>
              <td style="vertical-align: middle;"><fmt:formatNumber value="${promoto.price }" pattern="#,###"/><span>원</span></td>
            </tr>
            </c:forEach>
            </c:if>    
          </tbody>
        </table>
      </div>
    </div>
</body>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</html>