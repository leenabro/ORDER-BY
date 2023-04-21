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
		<script src="${path }/resources/js/jquery-3.6.3.js"></script>
    <!-- Custom styles for this template-->
    <link href="${ path }/resources/static/assets/css/admin2.css" rel="stylesheet">
    <style>
        /* layout */
html,
body {
  padding: 0;
  margin: 0;
  width: 100%;
  height: 100%;
  overflow: hidden;
}

#wrap {
  position: relative;
  width: 100%;
  height: 100%;
}
#container {
  position: absolute;
  top: 10px;
  right: 0;
  bottom: 38px;
  left: 0;
  overflow-x: hidden;
  overflow-y: auto;
}



table.table02 caption.center {
  padding-top: 6px;
  height: 39px;
  line-height: 130%;
  text-align: center;
  color: #333;
  padding-left: 0;
  border: 1px solid rgb(209, 208, 208);
  background-color: rgb(110, 131, 160);
}
table.table02 tbody th {
  padding: 10px;
  vertical-align: middle;
  font-family: "malgunbd";
  color: white;
	border: 1px solid rgb(209, 208, 208);
  background-color: rgb(110, 131, 160);
  text-align: center;
}
table.table02 tbody td {
  padding: 10px;
  vertical-align: middle;
  padding-left: 15px;
  background: #fafafa;
  border: 1px solid rgb(209, 208, 208);
}

/* textbox_style */
input.tbox01 {
  width: 200px;
  height: 26px;
  line-height: 26px;
}

/* textarea */
textarea.textarea01 {
  width: 700px;
  height: 95px;
  margin: 10px 0;
  resize: none;
}

/* text_color_style */
.t_blue {
  color: #004fa8;
}
.t_red {
  color: #f55500;
}

/* button */
.btn {
  font-family: "malgunbd";
  display: inline-block;
  padding: 3px 20px 6px 20px;
  margin: 0;
  border: 1px solid #aaa;
  cursor: pointer;
  color: #333;
  border-radius: 2px;
  vertical-align: middle;
  font-size: 13px;
  letter-spacing: -1px;
  line-height: normal;
  background-color: #feffff;
  text-decoration: none;
}

.tbox01  {
	border:none;
}

.textarea01 {
	border:none;
}

.btn.black {
  border-color: #191919;
  color: #fff;
  background-color: #333;
  text-decoration: none;
}

/* button_align */
.btn_left {
  clear: both;
  text-align: left;
}
.btn_right {
  clear: both;
  text-align: right;
}
.btn_center {
  clear: both;
  text-align: center;
}
    </style>
</head>
<%@ include file="/WEB-INF/views/common/adminheader.jsp" %>
            <div class="container-fluid">
                <!-- Page Heading -->
                <h1 class="h3 mb-2 text-gray-800">상담 내용 확인</h1>
                <p class="mb-4">실시간 상담 문의 요청에 대한 내용 확인</p>

                <div id="viewadivce">
                    <div id="view_container">
                      <div class="inner">
                        <form id="boardForm" name="boardForm">
                          <table width="80%" class="table02" style="border: 1px solid; margin-left: 10%; margin-top: 4%;">
                            <colgroup>
                              <col width="20%" />
                              <col width="*" />
                            </colgroup>
                            <tbody id="tbody">
                              <tr>
                                <th>상담 제목</th>
                                <td style="display:none">${popqna.no }</td>
                                <td>
                                  <input
                                    id="board_subject"
                                    name="board_subject"
                                    value="${popqna.title} "
                                    class="tbox01"
                                    readonly
                                  />
                                </td>
                              </tr>
                              <tr>
                                <th>전화번호</th>
                                <td>
                                  <input
                                    id="board_writer"
                                    name="board_writer"
                                    value="${popqna.phone}"
                                    class="tbox01"
                                    readonly
                                  />
                                </td>
                              </tr>
                              <tr>
                                <th>상담 등록 날자</th>
                                <td>
                                  <input
                                    id="board_writer"
                                    name="board_writer"
                                    value="${popqna.enrolldate}"
                                    class="tbox01"
                                    readonly
                                  />
                                </td>
                              </tr>
                              <tr>
                                <th>상담 여부 확인</th>
                                <td>
                                  <input
                                    id="board_writer"
                                    name="board_writer"
                                    value="${popqna.status}"
                                    class="tbox01"
                                    readonly
                                    style="width:55px"
                                  />
                                </td>
                              </tr>
                              <tr>
                                <th>내용</th>
                                <td>
                                  <input
                                    id="board_content"
                                    name="board_content"
                                    cols="10"
                                    rows="5"
                                    value="${popqna.content}"
                                    class="textarea01"
                                    style="width:60%; height:200px"
                                  >
                                </td>
                              </tr>
                            </tbody>
                          </table>
                          <div class="btn_right mt15" style="margin-right: 42%; margin-top: 4%;">
                            <button
                              type="button"
                              class="btn black mr5"
                              onclick="location.href='${path}/admin/popqna';"
                            >
                              목록으로
                            </button>
                            <button
                              type="button"
                              class="btn black"
                              id="checkBtn"
                            >
                              답변 확인
                            </button>
                        </form>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- Custom scripts for all pages-->
    <script src="${ path }/resources/static/assets/js/admin/sb-admin-2.min.js"></script>
    
        <script src="${ path }/resources/static/assets/js/admin/bootstrap.bundle.min.js"></script>
         <script>
		$(document).ready(() => {
			$('#checkBtn').on('click', () => {
				if(confirm('상담 답변 확인을 하셨습니까?')) {
					location.replace('${path}/admin/popqnacheck?no=${popqna.no}');
				}
			});
		});
		</script>

            </body>
        
            </html>