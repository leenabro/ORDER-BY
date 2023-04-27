/*
	Escape Velocity by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/

/* 0427 주리 플로팅박스 시작 */
// 기본 위치(top)값
var floatPosition = parseInt($(".sideBanner").css('top'))

// scroll 인식
$(window).scroll(function() {
    
    // 현재 스크롤 위치
    var currentTop = $(window).scrollTop();
    var bannerTop = currentTop + floatPosition + "px";

    //이동 애니메이션
    $(".sideBanner").stop().animate({
        "top" : bannerTop
    }, 500);

}).scroll();


// 엔터누르면!!!!!개행!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
function onTestChange(event) {
	var key = event.keyCode;

	if (key === 13) {
		event.preventDefault();
		contentInput.value += '\n';
	}
} // 개행 끝

// 폼 전송!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

	// 폼 전송 버튼 클릭 시 이벤트 핸들러 등록
	$("#popSubmit").click(function(e) {
		e.preventDefault(); // 폼 전송을 막기 위해 기본 이벤트 제거
		submitPopQNAForm(); // 폼 전송 함수 호출
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
				alert("문의가 완료되었습니다. 빠른시일내에 메일로 답변 드리겠습니다.");
				window.location.href = "/";
		    },
		    error: function(xhr, status, error) {
				console.error(xhr.responseText);
				alert("폼 전송에 실패했습니다.");
		    }
		});
	}







/* 권한에따라 버튼 안보이게 스크립트 처리 시작 */
// 값이 m인 사람에게 안보이게


/* 권한에따라 버튼 안보이게 스크립트 처리 종료 */
/* 0427 주리 플로팅박스 종료 */



(function($) {

	var	$window = $(window),
		$body = $('body');

	// Breakpoints.
		breakpoints({
			xlarge:  [ '1281px',  '1680px' ],
			large:   [ '981px',   '1280px' ],
			medium:  [ '737px',   '980px'  ],
			small:   [ null,      '736px'  ]
		});

	// Play initial animations on page load.
		$window.on('load', function() {
			window.setTimeout(function() {
				$body.removeClass('is-preload');
			}, 100);
		});

	// Dropdowns.
		$('#nav > ul').dropotron({
			mode: 'fade',
			noOpenerFade: true,
			alignment: 'center',
			detach: false
		});

	// Nav.

		// Title Bar.
			$(
				'<div id="titleBar">' +
					'<a href="#navPanel" class="toggle"></a>' +
					'<span class="title">' + $('#logo h1').html() + '</span>' +
				'</div>'
			)
				.appendTo($body);

		// Panel.
			$(
				'<div id="navPanel">' +
					'<nav>' +
						$('#nav').navList() +
					'</nav>' +
				'</div>'
			)
				.appendTo($body)
				.panel({
					delay: 500,
					hideOnClick: true,
					hideOnSwipe: true,
					resetScroll: true,
					resetForms: true,
					side: 'left',
					target: $body,
					visibleClass: 'navPanel-visible'
				});

})(jQuery);