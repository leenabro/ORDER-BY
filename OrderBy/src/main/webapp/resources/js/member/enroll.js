

// window.onkeydown = (e) => console.log(e);

/*
    확인해야할 사항

    아이디 유효성
    - 완료
    비밀번호 유효성
    - 완료
    비밀번호 재확인 유효성
    - 완료
    비밀번호와 비밀번호 재확인이 일치해야함
    - 완료
    아이디와 비밀번호는 같을 수 없음
    - 완료
    이름 유효성
    - 한글만 가능하게 함 완료
    생년월일 유효성
    - 완료
    성별(값 잘받아옴)
    - 완료
    이메일 유효성
    - 완료(04/19)
    이메일 인증번호 받기(인증번호 맞아야 가입할수있음)
    - 완료(04/19)
    전체 체크
    - 
    간편가입
    - 
    간편로그인
    - 
    주소와 상세주소 넣기
    - 완료

*/



    
$(document).ready(function() {
	var $ = jQuery;
	var form = $('#signupForm');

	// 엔터 처리(없어도될듯)
	form
	.on('keydown', 'input[type="text"], input[type="email"], input[type="password"], input[type="number"]', function () {
		// console.log('엔터눌렀지 뿌우');
	})

// ======================================== 포커스 시 텍스트 시작 ========================================
	// 포커스 시 텍스트
	form
	.on('focus', '#memberId', function() {
	  $('#idFocusMsg').show().text("아이디는 필수 입력 정보 입니다.").css({color:"red"});
	})

	.on('focus', '.YYMMDD', function() {
	  $('#memberBirthMsg').show().text('생년월일은 필수 입력 정보 입니다.').css({color:"red"});
	})
	.on('focus', '#memberPhone', function() {
	  $('#memberPhoneMsg').show().text('ORDER BY의 다양한 혜택문자를 받아보세요.').css({color:"gray"});
	});
}); // 첫번째 함수 종료


// ======================================== 성별 유효성검사 시작 ========================================
	// 성별값 가져오기
	$('select[name=genderSelectBox]')
	.on({
	    "change":function() {
	        $('#genderSelectBox option:selected').text();
	        console.log($(this).val()); //value값
	        console.log($('select[name=genderSelectBox] option:selected').text()); //text값
	    }
	});

// ======================================== id 유효성검사 시작 ========================================
// 아이디 문자열 치환(변경)
	var memberIdch = (target) => {
    var memberId = target.value
        .replace(/[^a-z0-9\_]/gi, '');
	    target.value = memberId;
	    console.log(memberId);
};


// 아이디 중복확인 ajax포함
function checkId() {
    var memberId = $('#memberId').val().trim(); // #memberId에 입력되는 값
    $('#memberId').trigger('input');
}

$('#memberId')
	.on("propertychange change keyup paste input", function(){
		var memberId = $(this).val().trim(); // #memberId에 입력되는 값
	    var $idFocusMsg  = $('#idFocusMsg'), // 아이디 체크 메시지 포커스
	        $idCheckMsg1 = $('#idCheckMsg1'), // 아이디 체크 메시지 실패
	        $idCheckMsg2 = $('#idCheckMsg2'); // 아이디 체크 메시지 성공
        
		if(memberId === '') { // memberId가 빈 문자열인 경우 중복 체크를 하지 않음
			
			return;
		}
		
	    if(memberId.length < 4) { // 아이디가 4자 미만인 경우 중복 체크를 하지 않음
	        $('#idFocusMsg').show().text("아이디는 필수 입력 정보 입니다.").css({color:"red"});
	        $idCheckMsg2.hide();
	        $idFocusMsg.hide();
        
        	return;
    	}

	var data = {id : memberId}; // '컨트롤에 넘길 데이터 이름' : '데이터(#memberId에 입력되는 값)'
	var header = $("meta[name='_csrf_header']").attr('content'); // 토큰
	var token = $("meta[name='_csrf']").attr('content'); // 토큰

    var $idFocusMsg  = $('#idFocusMsg'), // 아이디 체크 메시지 포커스
        $idCheckMsg1 = $('#idCheckMsg1'), // 아이디 체크 메시지 실패
        $idCheckMsg2 = $('#idCheckMsg2'); // 아이디 체크 메시지 성공

    $.ajax({
        type : "get",
        url : "http://localhost:8088/member/checkId", // 요청 경로
        data : {id : memberId}, // 입력되는 아이디값을 mId로 넘김
        beforeSend : function(xhr) {
            xhr.setRequestHeader(header, token);
        },
        success:function(result) { //컨트롤러에서 넘어온 result값을 받는다

            if(result == 0){ //result가 1이 아니면(= 0일 경우) -> 사용 가능한 아이디
                $idFocusMsg.text("아이디는 필수 입력 정보 입니다.").css({color:"red"}).hide();
                $idCheckMsg2.text("사용가능한 아이디 입니다.").show();
                $idCheckMsg1.hide();
                
            } else { // result가 1일 경우 -> 이미 존재하는 아이디
                $idCheckMsg2.hide();
                $idCheckMsg1.text("이미 존재하는 아이디입니다.").show();
            }
        },
        error:function(xhr, status, error){
            if(xhr.status === 403){
                alert("세션이 만료되어 재로그인 해주세요.");
            } else {
                alert("에러 발생 : " + xhr.status + ", " + error);
            }
        }
    }); // ajax 종료	

}) // 함수 종료하려다가 포커스랑 블러 이벤트줬음..
.on('focus', function() {
    var $idFocusMsg  = $('#idFocusMsg'),
        $idCheckMsg1 = $('#idCheckMsg1'),
        $idCheckMsg2 = $('#idCheckMsg2');
	    $idCheckMsg1.hide();
	    $idCheckMsg2.hide();
	    $idFocusMsg.show();
}).on('blur', function() {
    var $idFocusMsg  = $('#idFocusMsg'),
        $idCheckMsg1 = $('#idCheckMsg1'),
        $idCheckMsg2 = $('#idCheckMsg2');
    	$idFocusMsg.hide();
}); // 두번째 함수 종료




// ======================================== password 유효성검사 시작 ========================================



function validatePassword() {
  var pw1 = $("#memberPwd1").val();
  var pw2 = $("#memberPwd2").val();
  var id = $("#memberId").val();

  var reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
  var hangulcheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;

  var $password1FocusMsg = $('#password1FocusMsg'), // 패스워드 체크1 메시지  포커스
      $password1warningMsg = $('#password1warningMsg'), // 패스워드 체크1 메시지 별로다!
      $password1goodMsg = $('#password1goodMsg'); // 패스워드 체크1 메시지 굳이다!

  // 비밀번호 체크1
  if (false === reg.test(pw1)) {
    $password1FocusMsg.text("8자 이상 영문 대/소문자, 숫자와 특수문자를 모두 포함해야 합니다.").show().css({ color: "red" });
    $password1warningMsg.hide();
    $password1goodMsg.hide();

    return false;
  }

  if (/(\w)\1\1\1/.test(pw1)) {
    $password1FocusMsg.hide();
    $password1warningMsg.text("같은 문자를 4번 이상 사용할 수 없습니다.").show();
    $password1goodMsg.hide();

    return false;
  }

  if (pw1.search(id) > -1) {
    $password1FocusMsg.hide();
    $password1warningMsg.text("비밀번호에 아이디가 포함되었습니다.").show();
    $password1goodMsg.hide();

    return false;
  }

  if (pw1.search(/\s/) != -1) {
    $password1FocusMsg.hide();
    alert("비밀번호는 공백 없이 입력해주세요.");
    $password1goodMsg.hide();

    return false;
  }

  if (hangulcheck.test(pw1)) {
    $password1FocusMsg.hide();
    alert("비밀번호에 한글을 사용 할 수 없습니다.");
    $password1goodMsg.hide();

    return false;
  }

  $password1FocusMsg.hide();
  $password1warningMsg.hide();
  $password1goodMsg.text("사용가능한 비밀번호 입니다.").show();

  return true;
}

	// 비밀번호 재확인 체크
	function memberPwd2ch() {
    var pw1 = $("#memberPwd1").val();
    var pw2 = $("#memberPwd2").val();

    var $password1FocusMsg = $('#password1FocusMsg'), // 패스워드 체크1 메시지  포커스
        $password2FocusMsg = $('#password2FocusMsg'), // 패스워드 체크2 메시지 포커스
        $password1warningMsg = $('#password1warningMsg'), // 패스워드 체크1 메시지 별로다!
        $password2warningMsg = $('#password2warningMsg'), // 패스워드 체크2 메시지 별로다!
        $password1goodMsg = $('#password1goodMsg'), // 패스워드 체크1 메시지 굳이다!
        $password2goodMsg = $('#password2goodMsg'); // 패스워드 체크2 메시지 굳이다!
		
	if(pw1 == pw2) {
	    $password1FocusMsg.hide();
	    $password2warningMsg.hide();
	    $password2FocusMsg.text("동일한 비밀번호가 입력되었습니다.").show().css({color:"green"});
	    console.log("비밀번호 재확인 통과");
	    
	    return true;
	} else {
		$password1FocusMsg.hide();
	    $password2warningMsg.hide();
	    $password2FocusMsg.text("위 비밀번호와 동일해야 합니다.").show().css({color:"red"});
	    console.log("비밀번호 재확인 불햅격");
	
		console.log(pw1);
	
	    return false;
	}
    
}
// ======================================== 휴대전화 유효성검사 시작 ========================================
var $memberPhone = (target) => {
    target.value = target.value
    .replace(/[^0-9]/g, '')
    .replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, '');
    
    console.log(target.value);

    return true;
};

// ======================================== 이름 유효성검사 시작 ========================================
var $memberName = (target) => {
    target.value = target.value
    .replace(/[^ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, '');
    // .replace();
    
    console.log(target.value);
};

// ======================================== 체크박스 상태검사 시작 ========================================




// 체크박스 전체 선택
$(".join_box")
.on("click", "#chkAll", function () {
    $(this).parents(".join_box").find('input').prop("checked", $(this).is(":checked"));
    checkRequiredCheckboxes(); // 필수 체크항목 체크 확인
    return true;
})
// 체크박스 개별 선택
.on("click", ".chk", function() {
    var is_checked = true;
    
    $(".join_box .chk").each(function() {
        is_checked = is_checked && $(this).is(":checked");
    });
    
    $("#chkAll").prop("checked", is_checked);

});



// ======================================== 주소 api 시작 ========================================
$("#sample6_detailAddress, #sample6_address").on("input", function() {
  console.log($(this).val());
});

var address = '';
var detailAdd = '';


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
			address = document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
			detailAdd = document.getElementById("sample6_detailAddress");
			detailAdd.focus();
			
			console.log("주소: " + address + ", 상세 주소: " + detailAdd.value);
        }
        
    }).open();

} // 주소 api종료


// ======================================== 이메일 시작 ========================================

$(document).ready(function() {
    $(".successEmailChk").text("이메일 입력은 필수입니다.").hide();
    
    $("#memberEmail").focus(function() {
        if (!$("#cnum_btn").hasClass("disabled")) {
            $(".successEmailChk").text("이메일 입력은 필수입니다.").css("color", "red").show();
        }
    });
    
    $("#memberEmail").off("keyup").on("keyup", function() {
        //console.log($(this).val());
    });
});



// 인증 메일 발송 버튼 클릭 시

$("#cnum_btn").click(function(){
	const emailVal = $("#memberEmail").val();

    // 한글 제거
    var email = emailVal.replace(/[^a-zA-Z0-9@._-]/g, "");

    // 이메일 검증
    var regEmail = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.[a-zA-Z]{2,4}$/;
    if (!regEmail.test(email)) {
        console.log("유효한 이메일 주소를 입력해주세요.");
        $("#memberEmail").attr("autofocus", true);
        $(".successEmailChk").text("유효한 이메일 주소를 입력해주세요.");
        $(".successEmailChk").css("color", "red");
        return;
    }

    $.ajax({
        type: "GET",
        url: "/member/enroll/mailCheck?email=" + email,
        cache: false,
        beforeSend: function(xhr) {
            xhr.setRequestHeader($("meta[name='_csrf_header']").attr("content"), $("meta[name='_csrf']").attr("content"));
        },
        success: function(data) {
            if(data == "error"){
                console.log("이메일 주소가 올바르지 않습니다. 유효한 이메일 주소를 입력해주세요.");
                $("#memberEmail").attr("autofocus", true);
                $(".successEmailChk").text("유효한 이메일 주소를 입력해주세요.").show();
                $(".successEmailChk").css("color","red");
            }else{                    
                alert("인증번호 발송이 완료되었습니다.\n입력한 이메일에서 인증번호 확인을 해주십시오.");
                $('#memberCnum').focus();
                console.log("인증번호 발송됐대!!");
		        $("#memberCnum").attr("readonly", false);
		        $("#cnum_btn2").css("display", "inline-block");
		        $(".successEmailChk").text("인증번호를 입력한 뒤 이메일 인증을 눌러주십시오.").show();
		        $(".successEmailChk").css("color", "green");
                code = data;
                
                console.log(data); // 인증번호 뭔지 콘솔 찍음!
            }
        }
    });
});

// 이메일 인증하기 버튼 클릭 시
$("#cnum_btn2").click(function(){
    var memberCnum = $("#memberCnum").val();
    if (memberCnum === code) {
        $(".successEmailChk").text("이메일 인증 중입니다. 잠시만 기다려주세요.").show();
        $("#cnum_btn2").attr("disabled", true);
        
        // 이메일 인증 로직 추가
        setTimeout(function() {
            $(".successEmailChk").text("인증번호를 입력한 뒤 이메일 인증을 눌러주십시오.").hide();
            alert("이메일 인증이 완료되었습니다.");
            $("#memberEmail").attr("readonly", true);
            $("#memberCnum").attr("readonly", true);
            // 인증번호 인증 완료되면 받기 버튼 비활성화 및 스타일 변경
        	$("#cnum_btn").prop("disabled", true).addClass("disabled");
        	// 인증번호 인증 완료되면 받기 버튼 비활성화 및 스타일 변경2
            $("#cnum_btn2").attr("readonly", true).addClass("disabled");
        }, 5000); // 5초 후에 인증 완료 처리 및 로딩 표시 숨김
        
    } else {
        alert("인증번호가 일치하지 않습니다. 다시 입력해주세요.");
    }
});


// ======================================== 돋보기 버튼 누르면 패스워드 보이기 시작 ========================================
$('#eye').on('click', function() {
	$('#memberPwd1').toggleClass('active');
	
	if($('#memberPwd1').hasClass('active')) {
	
		$('#memberPwd1').prop('type', "text");
	} else {
	
	$('#memberPwd1').prop('type', "password");
	}
});




// ======================================== 생년월일 셀렉트 박스 시작 ========================================

$(document).ready(function(){            
    var currentDate = new Date();
    var currentYear = currentDate.getFullYear();
    var currentMonth = (currentDate.getMonth() + 1) > 9 ? ''+(currentDate.getMonth() + 1) : '0'+(currentDate.getMonth() + 1); 
    var currentDay = (currentDate.getDate()) > 9 ? ''+(currentDate.getDate()) : '0'+(currentDate.getDate());     
          
    // 출생 연도 selectbox 만들기
    for(var i = 1950 ; i <= currentYear ; i++) {
        $('#memberBirthYY').append('<option value="' + i + '">' + i + '년</option>');
    }

    // 출생 월 selectbox 만들기            
    for(var i=1; i <= 12; i++) {
        var month = i > 9 ? i : "0"+i ;            
        $('#memberBirthMM').append('<option value="' + month + '">' + month + '월</option>');
    }
    
    // 출생 일 selectbox 만들기
    for(var i=1; i <= 31; i++) {
        var day = i > 9 ? i : "0"+i ;            
        $('#memberBirthDD').append('<option value="' + day + '">' + day+ '일</option>');    
    }
    $("#memberBirthYY > option[value="+currentYear+"]").attr("selected", "true");        
    $("#memberBirthMM > option[value="+currentMonth+"]").attr("selected", "true");    
    $("#memberBirthDD > option[value="+currentDay+"]").attr("selected", "true");  

	// 년도로 만 26세 확인
    $('#memberBirthYY').on('change', function() {
        var birthYY = $(this).val();
        var currentYear = new Date().getFullYear();
        if (currentYear - birthYY < 26) {
            $('#memberBirthMsg').text('만 26세 이상만 가입 가능합니다.').css('color', 'red').show();
        } else {
            $('#memberBirthMsg').hide();
        }
    });

    // 월로 만 26세 확인
    $('#memberBirthMM').on('change', function() {
        var birthYY = $('#memberBirthYY').val();
        var birthMM = $(this).val();
        var birthDD = $('#memberBirthDD').val();
        var birth = new Date(birthYY + '/' + birthMM + '/' + birthDD);
        var now = new Date();
        var age = now.getFullYear() - birth.getFullYear();
        birth.setFullYear(now.getFullYear());
        if (now < birth) {
            age--;
        }
        if (age < 26) {
            $('#memberBirthMsg').text('만 26세 이상만 가입 가능합니다.').css('color', 'red').show();
        } else {
            $('#memberBirthMsg').hide();
        }
    });

    // 일자로 만 26세 확인
    $('#memberBirthDD').on('change', function() {
        var birthYY = $('#memberBirthYY').val();
        var birthMM = $('#memberBirthMM').val();
        var birthDD = $(this).val();
        var birth = new Date(birthYY + '/' + birthMM + '/' + birthDD);
        var now = new Date();
        var age = now.getFullYear() - birth.getFullYear();
        birth.setFullYear(now.getFullYear());
        if (now < birth) {
            age--;
        }
        if (age < 26) {
        
		$('#memberBirthMsg').text('만 26세 이상만 가입 가능합니다.').css('color', 'red').show();
		} else {
		
		$('#memberBirthMsg').hide();
		}
	});


});


// ======================================== 가입하기 버튼 시작 ========================================


			
	// 가입하기 버튼 클릭 이벤트 핸들러
	$("#signup_btn").on("click", function(e) {
		e.preventDefault();
	

			
		var id = $("#memberId").val();
		var password = $("#memberPwd2").val();
		var passwordConfirm = $("#memberPwd1").val();
		var name = $("#memberName").val();
		var email = $("#memberEmail").val();
		var phone = $("#memberPhone").val();
		var birthYY = $("#memberBirthYY").val() || "Unknown";
		var birthMM = $("#memberBirthMM").val() || "Unknown";
		var birthDD = $("#memberBirthDD").val() || "Unknown";
		var birth = birthYY.slice(2) + "/" + birthMM + "/" + birthDD;
		// FormData 객체를 생성해서 폼 데이터를 담는다
		var formData = new FormData();
			formData.append("id", $("#memberId").val());
			formData.append("password", $("#memberPwd2").val());
			formData.append("name", $("#memberName").val());
			formData.append("birth", birth);
			formData.append("email", $("#memberEmail").val());
			formData.append("phone", $("#memberPhone").val());
			formData.append("gender", $('#genderSelectBox option:selected').text());
			formData.append("address", $("#sample6_address").val());
			formData.append("detailAdd", $("#sample6_detailAddress").val());
			formData.append("cnum", $("#memberCnum").val());
			formData.append("verified", 'Y');

	   // 필수 체크항목 체크 확인
	    var chk1Checked = $("input:checkbox[name='chk1']").is(":checked");
	    var chk2Checked = $("input:checkbox[name='chk2']").is(":checked");

	    
		// 아이디, 비밀번호, 비밀번호 확인, 이름, 이메일, 휴대폰번호, 생년월일을 각각 변수에 담음!
		if (!id || !password || !passwordConfirm || !name || !email || !phone || !birthYY || !birthMM || !birthDD) {
		    alert("필수 입력 항목이 누락되었습니다. 다시 확인해주세요.");
		    
		    return false;
		} else {
		    var missingFields = "";
		    if (!id) {
		        missingFields += "아이디 ";
		    }
		    if (!password) {
		        missingFields += "비밀번호 재확인 ";
		    }
		    if (!passwordConfirm) {
		        missingFields += "비밀번호 ";
		    }
		    if (!name) {
		        missingFields += "이름 ";
		    }
		    if (!email) {
		        missingFields += "이메일 ";
		    }
		    if (!phone) {
		        missingFields += "휴대폰번호 ";
		    }
		    if (!birthYY || !birthMM || !birthDD) {
		        missingFields += "생년월일 ";
		    }
		    if (missingFields) {
		        alert(missingFields + "입력이 누락되었습니다. 다시 확인해주세요.");
		        
		        return false;
		    }
			
		    if (!chk1Checked || !chk2Checked) {
		        alert("필수 체크항목을 체크해주세요.");
		        
		        return false;
		    }
		}









        // AJAX를 이용해서 폼 데이터를 서버로 전송한다.
        $.ajax({
            type: "POST",
            url: "/member/enroll",
            data: formData,
			beforeSend: function(xhr) {
            xhr.setRequestHeader($("meta[name='_csrf_header']").attr("content"), $("meta[name='_csrf']").attr("content"));
       		},
            processData: false,
            contentType: false,
            success: function(result) {
                console.log(result);
                
                alert("회원가입이 완료되었습니다.");
    			window.location.href = "/member/login"; // 로그인 페이지로 이동
            },
            error: function(xhr, status, error) {
				if(xhr.status === 400) {
					alert("잘못된 요청입니다.");
				} else if(xhr.status === 401) {
					alert("인증이 실패하였습니다.");
				} else if(xhr.status === 404) {
					alert("페이지를 찾을 수 없습니다.");
				} else if(xhr.status === 500) {
					alert("서버 오류가 발생하였습니다.");
				} else {
					alert("오류가 발생하였습니다. 다시 시도해주세요.");
					
					window.location.href = "/"; // 홈으로 이동
				}
					console.log(xhr);
					console.log(status);
					console.log(error);
				}
			});
		});
