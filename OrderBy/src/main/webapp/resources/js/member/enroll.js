


// ajax 통신을 위한 csrf 설정
//var token = $("meta[name='_csrf']").attr("content");
//var header = $("meta[name='_csrf_header']").attr("content");
//$(document).ajaxSend(function(e, xhr, options) {
//    xhr.setRequestHeader(header, token);
//});



//-------------------------------------------------------------------------------

// function checkAll() {
//     if (!checkUserId(form.userId.value)) {
//         return false;
//     } else if (!checkPassword(form.userId.value, form.password1.value,
//             form.password2.value)) {
//         return false;
//     } else if (!checkMail(form.mail.value)) {
//         return false;
//     } else if (!checkName(form.name.value)) {
//         return false;
//     } else if (!checkBirth(form.identi1.value, form.identi2.value)) {
//         return false;
//     } else if (!checkFavorite()) {
//         return false;
//     } else if (!checkIntro()) {
//         return false;
//     }
//     return true;
// }

$(function() { // 윈도우가 열리면

	var $ = jQuery;





    // 년도
// var $regYear = /^[1-2]{1}[0-9]{0,4}$/;

    // 폼태그도 담아둠
const form = $('#signupForm'),
    // 입력 변수
    $memberId  = $('#memberId'), // 아이디
    $memberPwd1 = $('#memberPwd1'), // 비밀번호
    $memberPwd2 = $('#memberPwd2'), // 비밀번호 재확인
    // $memberName = $('#memberName'), // 이름
    $memberBirthYY = $('#memberBirthYY'), // 생년
    $memberBirthMM = $('#memberBirthMM'), // 월
    $memberBirthDD = $('#memberBirthDD'), // 일
    // $genderSelectBox = $("#genderSelectBox option:selected").val(), // 성별
    $genderSelect = $('#genderSelectBox'), // 성별
    // $memberPhone = $('#memberPhone'), // 휴대전화
    $memberEmail = $('#memberEmail'), // 이메일
    $memberCnum = $('#memberCnum'), // 인증번호

    // 메시지 변수
    $idFocusMsg  = $('#idFocusMsg'), // 아이디 체크 메시지 포커스
    $idCheckMsg1 = $('#idCheckMsg1'), // 아이디 체크 메시지 실패
    $idCheckMsg2 = $('#idCheckMsg2'), // 아이디 체크 메시지 성공
    $password1FocusMsg = $('#password1FocusMsg'), // 패스워드 체크1 메시지 포커스
    $password2FocusMsg = $('#password2FocusMsg'), // 패스워드 체크2 메시지 포커스
    $password1warningMsg = $('#password1warningMsg'), // 패스워드 체크1 메시지 별로다!
    $password2warningMsg = $('#password2warningMsg'), // 패스워드 체크2 메시지 별로다!
    $password1goodMsg = $('#password1goodMsg'), // 패스워드 체크1 메시지 굳이다!
    $password2goodMsg = $('#password2goodMsg'), // 패스워드 체크2 메시지 굳이다!
    $memberNameMsg = $('#memberNameMsg'), // 이름 메시지
    $memberBirthMsg = $('#memberBirthMsg'), // 생년월일 메시지
    $memberPhoneMsg = $('#memberPhoneMsg'), // 휴대전화 메시지
    $memberEmailMsg = $('#memberEmailMsg')  // 이메일 메시지
    ;

            // 정규식 패턴 (참고용...)
    // 아이디 영문 숫자 '_' 포함 (대소문자 구분안함)
const $regId = /[^a-z0-9\_]/gi,
    // 한글만 가능 (ㄱㄴㄷ... 형식으로는 입력 불가능, 띄어쓰기 불가능)
    $regName = /^[가-힣]{2,6}$/,
    // 비밀번호 (최소 대문자, 소문자, 숫자 1개씩 8~16자)
    $regPassword = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,16}/g,
    // 이메일
    $regEmail = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.[a-zA-Z]{2,4}$/;

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



    


// 엔터 처리(없어도될듯)
form
.on('keydown', 'input[type="text"], input[type="email"], input[type="password"], input[type="number"]', function () {
	// console.log('엔터눌렀지 뿌우');
})

// ======================================== 생년월일 유효성검사 시작 ========================================

$('select[name=memberBirthYY]')
.on({
    "change":function() {
        $('#memberBirthYY option:selected').text();
        console.log($(this).val()); //value값
        console.log($('select[name=memberBirthYY] option:selected').text()); //text값

        if($('select[name=memberBirthYY]') == '') {
            console.log(false);
            $('#signup_btn').attr('disabled', true);
        }
        
        console.log(true);
    }
});
$('select[name=memberBirthMM]')
.on({
    "change":function() {
        $('#memberBirthMM option:selected').text();
        console.log($(this).val()); //value값
        console.log($('select[name=memberBirthMM] option:selected').text()); //text값

        if($('select[name=memberBirthMM]') == '') {
            console.log(false);
            $('#signup_btn').attr('disabled', true);
        }
        
        console.log(true);
    }
});
$('select[name=memberBirthDD]')
.on({
    "change":function() {
        $('#memberBirthDD option:selected').text();
        console.log($(this).val()); //value값
        console.log($('select[name=memberBirthDD] option:selected').text()); //text값

        if($('select[name=memberBirthDD]') == '') {
            console.log(false);
            $('#signup_btn').attr('disabled', true);
        }
        
        console.log(true);
    }
});


// ======================================== 성별 유효성검사 시작 ========================================
// 성별값 가져오기
$('select[name=genderSelectBox]')
.on({
    "change":function() {
        $('#genderSelectBox option:selected').text();
        console.log($(this).val()); //value값
        console.log($('select[name=genderSelectBox] option:selected').text()); //text값
    }
})
;
    
// ======================================== 포커스 시 텍스트 시작 ========================================
// 포커스 시 텍스트
form
.on('focus', '#memberId', function() {
  $('#idFocusMsg').show().text("아이디는 필수 입력 정보 입니다.").css({color:"red"});
})
.on('focus', '#memberPwd1', function() {
  $('#password1FocusMsg').show().text("8자 이상 영문 대/소문자, 숫자와 특수문자를 모두 포함해야 합니다.");
})
.on('focus', '#memberPwd2', function() {
  $('#password2FocusMsg').show().text("위 비밀번호와 동일해야 합니다.");
})
.on('focus', '.YYMMDD', function() {
  $('#memberBirthMsg').show().text('생년월일은 필수 입력 정보 입니다.').css({color:"red"});
})
.on('focus', '#memberPhone', function() {
  $('#memberPhoneMsg').show().text('ORDER BY의 다양한 혜택문자를 받아보세요.').css({color:"gray"});
});


// ======================================== 생년월일 셀렉트 박스 시작 ========================================

    // '출생 연도' 셀렉트 박스 option 목록 동적 생성
    var birthYearEl = document.querySelector('#memberBirthYY')
    // option 목록 생성 여부 확인
    isYearOptionExisted = false;
    birthYearEl.addEventListener('focus', function () {
    // year 목록 생성되지 않았을 때 (최초 클릭 시)
        if(!isYearOptionExisted) {
            isYearOptionExisted = true
            for(var i = 1950; i <= 2022; i++) {
            // option element 생성
            const YearOption = document.createElement('option')
            YearOption.setAttribute('value', i)
            YearOption.innerText = i
            // birthYearEl의 자식 요소로 추가
            this.appendChild(YearOption);
        }
    }
    });
    // '월' 셀렉트 박스 option 목록 동적 생성
    var birthMonthEl = document.querySelector('#memberBirthMM')
    // option 목록 생성 여부 확인
    isMonthOptionExisted = false;
    birthMonthEl.addEventListener('focus', function () {
    // month 목록 생성되지 않았을 때 (최초 클릭 시)
        if(!isMonthOptionExisted) {
            isMonthOptionExisted = true
            for(var i = 1; i <= 12; i++) {
            // option element 생성
            const MonthOption = document.createElement('option')
            MonthOption.setAttribute('value', i)
            MonthOption.innerText = i
            // birthMonthEl의 자식 요소로 추가 
            this.appendChild(MonthOption);
            }
        }
    });
    // '일' 셀렉트 박스 option 목록 동적 생성
    var birthDayEl = document.querySelector('#memberBirthDD')
    // option 목록 생성 여부 확인
    isDayOptionExisted = false;
    birthDayEl.addEventListener('focus', function () {
    // month 목록 생성되지 않았을 때 (최초 클릭 시)
        if(!isDayOptionExisted) {
            isDayOptionExisted = true
            for(var i = 1; i <= 31; i++) {
            // option element 생성
            const DayOption = document.createElement('option')
            DayOption.setAttribute('value', i)
            DayOption.innerText = i
            // birthDayEl의 자식 요소로 추가
            this.appendChild(DayOption);
            }
        }
    });

});

// ======================================== id 유효성검사 시작 ========================================
// 아이디 문자열 치환(변경)
var memberIdch = (target) => {
    target.value = target.value
    .replace(/[^a-z0-9\_]/gi, '');
    // .replace();
    
    console.log(target.value);
};	

var idCheck = 0;
var pwdCheck = 0;
var phoneCheck = 0;
var nameCheck = 0;
var pwCheck = 0;
var authCheck = 0;

// 아이디 중복확인 ajax포함
function checkId() {
    $('#memberId').trigger('input');
}

$('#memberId')
	.on("propertychange change keyup paste input", function(){
		var memberId = $(this).val().trim(); // #memberId에 입력되는 값
		if(memberId === '') { // memberId가 빈 문자열인 경우 중복 체크를 하지 않음
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
});


// ======================================== password 유효성검사 시작 ========================================
function memberPwd1ch() {

    var pw = $("#memberPwd1").val();
    var id = $("#memberId").val();
        
    var reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
    var hangulcheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;

    var $password1FocusMsg = $('#password1FocusMsg'), // 패스워드 체크1 메시지  포커스
        $password2FocusMsg = $('#password2FocusMsg'), // 패스워드 체크2 메시지 포커스
        $password1warningMsg = $('#password1warningMsg'), // 패스워드 체크1 메시지 별로다!
        $password2warningMsg = $('#password2warningMsg'), // 패스워드 체크2 메시지 별로다!
        $password1goodMsg = $('#password1goodMsg'), // 패스워드 체크1 메시지 굳이다!
        $password2goodMsg = $('#password2goodMsg'); // 패스워드 체크2 메시지 굳이다!

    if(false === reg.test(pw)) {
        // alert('비밀번호는 8자 이상이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함해야 합니다.');
        $password1FocusMsg.text("8자 이상 영문 대/소문자, 숫자와 특수문자를 모두 포함해야 합니다.").show();
    
    } else if(/(\w)\1\1\1/.test(pw)) {
        // alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
        $password1warningMsg.text("같은 문자를 4번 이상 사용할 수 없습니다.").show();
        
        return false;
    } else if(pw.search(id) > -1) {
        alert("비밀번호에 아이디가 포함되었습니다.");
        $password1warningMsg.text("비밀번호에 아이디가 포함되었습니다.").show();

        return false;
    } else if(pw.search(/\s/) != -1) {
        alert("비밀번호는 공백 없이 입력해주세요.");
    
        return false;
    } else if(hangulcheck.test(pw)) {
        alert("비밀번호에 한글을 사용 할 수 없습니다."); 

        return false;
    } else {
        $password1FocusMsg.hide();
        $password1goodMsg.text("사용가능한 비밀번호 입니다.").show();
        console.log("비밀번호 통과");

        return true;
    }
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
        $password2FocusMsg.text("위 비밀번호와 동일해야 합니다.").hide();
        $password2goodMsg.text("비밀번호가 동일합니다.").show();
        console.log("비밀번호 재확인 통과");
        
        return true;
    } else {
        $password2FocusMsg.text("위 비밀번호와 동일해야 합니다.").css({color:"red"}).show();
        $password2goodMsg.text("비밀번호가 동일합니다.").hide();
        console.log("비밀번호 재확인 불햅격");

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
$("input:checkbox[name='chkAll']").prop("checked", true);
$("input:checkbox[name='chk1']").prop("checked", true);
$("input:checkbox[name='chk2']").prop("checked", true);
$("input:checkbox[name='chk3']").prop("checked", true);
$("input:checkbox[name='chk4']").prop("checked", true);
// console.log($("input:checkbox[name='chk1']").val());



// 체크박스 전체 선택
$(".join_box")
.on("click", "#chkAll", function () {
    $(this).parents(".join_box").find('input').prop("checked", $(this).is(":checked"));

    return true;
})
// 체크박스 개별 선택
.on("click", ".chk", function() {
    var is_checked = true;
    
    $(".join_box .chk").each(function() {
        is_checked = is_checked && $(this).is(":checked");
    });
    
    $("#chkAll").prop("checked", is_checked);


    if($("#chkAll").is(":checked") == false) {
    }

})
;

// ======================================== 주소 api 시작 ========================================
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
} // 주소 api종료


// ======================================== 이메일 시작 ========================================

    $(document).ready(function() {
        $(".successEmailChk").text("이메일 입력은 필수입니다.").hide();
        $("#memberEmail").focus(function() {
            $(".successEmailChk").text("이메일 입력은 필수입니다.").show();
        });
    });


// 인증 메일 발송 버튼 클릭 시
var code = "";
$("#cnum_btn").click(function(){
    var emailVal = $("#memberEmail").val();

    // 한글 제거
    var email = emailVal.replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, "");

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
                $("#memberEmail").attr("autofocus",true);
                $(".successEmailChk").text("유효한 이메일 주소를 입력해주세요.").show();
                $(".successEmailChk").css("color","red");
            }else{                    
                alert("인증번호 발송이 완료되었습니다.\n입력한 이메일에서 인증번호 확인을 해주십시오.");
                $('#memberCnum').focus();
                console.log("인증번호 발송됐대!!");
		        $("#memberCnum").attr("disabled",false);
		        $("#cnum_btn2").css("display","inline-block");
		        $(".successEmailChk").text("인증번호를 입력한 뒤 이메일 인증을 눌러주십시오.").show();
		        $(".successEmailChk").css("color","green");
                code = data;
            }
        }
    });
});

// 이메일 인증버튼 클릭 시
$("#cnum_btn2").click(function(){
    var memberCnum = $("#memberCnum").val();
    if (memberCnum === code) {
    
    	$(".successEmailChk").text("인증번호를 입력한 뒤 이메일 인증을 눌러주십시오.").hide();
        alert("이메일 인증이 완료되었습니다.");
        $("#memberEmail").attr("disabled", true);
        $("#memberCnum").attr("disabled", true);
        $("#cnum_btn").attr("disabled", true);
        $("#cnum_btn2").attr("disabled", true);
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

// 회원 가입 버튼 클릭 시
$("#signup_btn").click(function() {
    var name = $("#memberName").val();
    var id = $("#memberId").val();
    var pw1 = $("#memberPwd1").val();
    var pw2 = $("#memberPwd2").val();
    var phone = $("#memberPhone").val();
    var email = $("#memberEmail").val();
    var addr = $("#sample6_postcode").val();
    var code = $("#memberCnum").val();
    var chk1 = $("#chk1").val();
    var chk2 = $("#chk2").val();

    // 입력 데이터 검증
    if (name == "" || id == "" || pw1 == "" || pw2 == "" || phone == "" || email == "" || addr == "" || code == "" || chk1 == "" || chk2 == "") {
        alert("입력하지 않은 항목이 있거나 필수 동의항목에 체크되지 않았습니다. 모든 항목을 입력해주세요.");
        
        return;
    }

    insertMember(name, id, pw1, pw2, phone, email, addr, code, chk1, chk2);
});


