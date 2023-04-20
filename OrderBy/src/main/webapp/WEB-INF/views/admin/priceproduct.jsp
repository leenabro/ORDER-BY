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
</head>
<body>
<div class="centerimage">
      <h1>Models</h1>
      <h2>차종 및 요금</h2>
    </div>

    <div class="fulldiv">
      <h1 class="title">
        <span>Models</span>
        "보유 차종 현황"
      </h1>

      <h3>Order By 회원만이 누릴 수 있는 특별한 혜택</h3>
      <h4>
        Order By 차종 대여료 금액을 아래의 표로 한눈에 확인하실수 있습니다.
      </h4>

      <div class="price">
        <p>단위 : 원</p>
      </div>

      <div class="cartable">
        <span>자동차</span>
        <table class="cartableclass">
          <thead>
            <tr>
              <th>브랜드</th>
              <th>차량 이름</th>
              <th>차량 년식</th>
              <th>차량 배기</th>
              <th>차량 금액(일)<br />VAT 별도</th>
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
              <td>${procar.brand }</td>
              <td>${procar.name }</td>
              <td>${procar.year }</td>
              <td>${procar.cc }</td>
              <td>${procar.price }</td>
            </tr>
            	</c:forEach>
            </c:if>
          </tbody>
        </table>
      </div>

      <div class="price1">
        <p>단위 : 원</p>
      </div>

      <div class="motocycletable">
        <span>오토바이</span>
        <table class="motocycletableclass">
          <thead>
            <tr>
              <th>브랜드</th>
              <th>오토바이 이름</th>
              <th>오토바이 년식</th>
              <th>오토바이 배기</th>
              <th>오토바이 금액(일)<br />VAT 별도</th>
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
              <td>${promoto.brand }</td>
              <td>${promoto.name }</td>
              <td>${promoto.year }</td>
              <td>${promoto.cc }</td>
              <td>${promoto.price }</td>
            </tr>
            </c:forEach>
            </c:if>    
          </tbody>
        </table>
      </div>
    </div>
</body>
</html>