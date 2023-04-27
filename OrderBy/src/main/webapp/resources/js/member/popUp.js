// 엔터누르면!!!!!개행!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
function onTestChange(event) {
	var key = event.keyCode;

	if (key === 13) {
		event.preventDefault();
		contentInput.value += '\n';
	}
}







// 폼 전송!!!!!!!!!!!!
$(function() {
  // 폼 전송 버튼 클릭 시 이벤트 핸들러 등록
  $("#popSubmit").click(function(e) {
    e.preventDefault(); // 폼 전송을 막기 위해 기본 이벤트 제거
    submitPopQNAForm(); // 폼 전송 함수 호출
  });
});

	function submitPopQNAForm() {
		var popQNA = {
	    // 폼 데이터를 JavaScript 객체로 변환하여 popQNA 변수에 할당
	    popName: $("#popName").val(),
	    popEmail: $("#popEmail").val(),
	    popPhone: $("#popPhone").val(),
	    popContent: $("#popContent").val(),
	};
		var header = $("meta[name='_csrf_header']").attr('content'); // 토큰
		var token = $("meta[name='_csrf']").attr('content'); // 토큰
	  
	  // 서버로 폼 데이터 전송
	$.ajax({
	    type: "POST",
	    url: "/member/popUp",
	    data: JSON.stringify(popQNA),
	    contentType: "application/json",
        beforeSend : function(xhr) {
            xhr.setRequestHeader(header, token);
        },
	    success: function(response) {
			// 폼 전송이 성공하면 리다이렉트
			alert("문의가 완료되었습니다. 메일로 답변 드리겠습니다.");
			window.location.href = "/";
			window.close();
	    },
	    error: function(xhr, status, error) {
			console.error(xhr.responseText);
			alert("폼 전송에 실패했습니다.");
	    }
	});
}




  
