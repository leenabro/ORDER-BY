package com.ta.orderby.member.controller;

import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.ta.orderby.member.model.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/member")
// Model 객체에 loginMember라는 키값으로 Attribute가 추가되면 해당 Attribute를 세션 스코프에 추가
@SessionAttributes("loginMember")
public class MemberController {
	@Autowired
	private MemberService service;
	
	@Autowired
	private JavaMailSender mailSender;


//	
//	// 관리자 전용 페이지 요청
//	@GetMapping("/admin/view")
//	public String admin() {
//		log.info("/admin/view 페이지 요청");
//		
//		return "admin/view";
//	}
//	
//	// 회원 전용 페이지 요청
//	@GetMapping("/member/view")
//	public String member() {
//		log.info("/member/view 페이지 요청");
//		
//		return "member/view";
//	}
//
//	// 엑세스 에러 페이지 요청
//	@GetMapping("/accessError")
//	public String accessError() {
//		log.info("/accessError 페이지 요청");
//		
//		return "common/accessError";
//	}
	
	
	
	
	// 로그인 페이지로 이동
	@GetMapping("/login")
	public String write() {
		log.info("로그인 페이지 입장!");
		
		return "member/login";
	}
	
//	// 로그인 정보 입력 후 처리(시큐리티 처리전에 여기로 로그인정보 받았었음..시큐리티 적용 후에는 detail(MemberServiceImpl로 받음)
	
	// 회원가입 페이지로 이동
	@GetMapping("/enroll")
	public String enroll() {
		log.info("회원가입 페이지 입장!");
		
		return "member/enroll"; // jsp 경로
	}
		

// ------------------------------ 회원가입 ------------------------------ //
		
	//아이디 중복체크
//	@RequestMapping(value = "/enroll", method = {RequestMethod.POST})
	@GetMapping("/checkId")
	public @ResponseBody int checkId(String id) {
		
		log.info("checkId() 입장!");
		
		int result = service.checkId(id);
		
		log.info("결과값 = " + result);
		
		return result;
		
	}
	

///*--------------------------------------------------------------------로그아웃 구현 */	
//	/*
//	 * 로그아웃 처리
//	 * 1. HttpSession 객체 사용
//	 */
//	@GetMapping("/logout")
//	public String logout(HttpSession session) {
//		
//		session.invalidate();
//		
//		return "redirect:/";
//	}
	

/*--------------------------------------------------------------------로그아웃 구현2 */	
	/*
	 * 로그아웃 처리
	 * 2. SessionStatus 객체 사용(스코프 확장 시 사용하는거같음..)
	 */
//	@GetMapping("/logout")
//	public String logout(SessionStatus status) {
//		log.info("status : {}", status.isComplete()); // 다 지워졌니? false
//		
//		// 세션 스코프로 확장된 Attribute를 지워준다.
//		status.setComplete();
//		
//		log.info("status : {}", status.isComplete()); // 다 지워졌니? true
//		
//		return "redirect:/";
//	}
//	
//	//회원가입 버튼 눌렀을때 get 요청
//	@GetMapping("/member/enroll")
//	public String enroll() {
//		log.info("회원가입 페이지요청!!!!!!!!!!!!!!!");
//		
//		return "/member/enroll";
//	}
//	
//	// 회원가입 완료버튼 눌렀을때 post 요청
//	@PostMapping("/member/enroll")
//	public ModelAndView enroll(ModelAndView modelAndView, @ModelAttribute Member member) {
////		log.info("회원가입 완료!!!!!!!!!!!!!!!");
//		// 전달해야할 정보, 보여줘야할 뷰 둘다 한꺼번에 보내고싶을때 ModelAndView
//		log.info(member.toString());
//		
//		int result = 0;
//		
//		result = service.save(member);
//		
//		if(result > 0) {
//			modelAndView.addObject("msg", "회원가입이 정상적으로 완료되었습니다.");
//			modelAndView.addObject("location", "/"); // 로케이션은 홈으로 보낸다.
//		} else {
//			modelAndView.addObject("msg", "회원가입을 실패하였습니다.");
//			modelAndView.addObject("location", "/member/enroll"); // 로케이션은 회원가입페이지로 보낸다.
//		}
//
//		modelAndView.setViewName("common/msg");
//		
//		return modelAndView;
//	}
//	/*
//	 * @ResponseBody
//	 *   - 일반적으로 컨트롤러 메소드의 반환형이 String일 경우 뷰의 이름을 반환한다.
//	 *   - @ResponseBody 붙은 메소드의 반환형이 String일 경우 해당 요청을 보낸 클라이언트에 전달할 데이터를 의미한다.
//	 * 
//	 * jackson 라이브러리
//	 *   - 자바 객체를 JSON 문자열 형태의 데이터로 변화하는 라이브러리이다.
//	 *   - 스프링에서 jackson 라이브러리를 추가하고 @ResponseBody을 사용하면 리턴되는 객체를 자동으로
//	 *     JSON 문자열로 변경해서 반환한다.
//	 * 
//	 * @RestController
//	 *   - 해당 어노테이션이 붙은 컨트롤러의 모든 메소드에서 데이터를 반환하는 경우에 사용한다.
//	 *   - @Controller, @ResponseBody를 합쳐놓은 역할을 수행한다.
//	 */
//	@GetMapping("/jsonTest")
//	@ResponseBody
//	public Object jsonTest() {
//		Map<String, Object> map = new HashMap<>();
//		
//		map.put("test1", null);
//		map.put("test2", "hi");
//		map.put("test3", 10);
//		map.put("test4", false);
//		
////		return new Member("ismoon", "1234", "문인수");
//
//		return map;
//	}
//	
////	// 아이디 중복체크
////	@PostMapping("/member/idCheck")
////	@ResponseBody
////													// 사용자가 입력한 아이디 인풋에 값을 담는 변수명이 userId임
////	public Map<String, Boolean> idCheck(@RequestParam("userId") String id) {
////		Map<String, Boolean> map = new HashMap<>();
////		
////		map.put("duplicate", service.isDuplicateId(id));
////		System.out.println(id);
////		
////		return map; // 값을 jsp가 아니라 데이터로 주고싶을때 @ResponseBody 어노테이션 주기!
////	}
//	
//	
//	
//	/*
//	 * @ResponseBody을 사용하지 않고 JSON 문자열을 반환하는 방법!
//	 * SpringFramework에서 제공해주는 HttpEntity 클래스는 Header와 Body를 합쳐준다!
//	 * 
//	 * HttpEntity
//	 *   - SpringFramework에서 제공하는 클래스로 HTTP 요청 또는 응답에 해당하는 HTTP Header와 HTTP Body를 포함하는 클래스이다.
//	 *   
//	 * ResponseEntity
//	 *   - HttpEntity를 상속하는 클래스로 HTTP 응답 데이터를 포함하는 클래스이다.
//	 *   - 개발자가 직접 HTTP Header, Body, Status Code를 세팅하여 반환할 수 있다.(헤더나 상태코드 변경해야할때는 http서블릿리스폰즈 다시 받아오고 쌩지랄해야됨)
//	 */
//	// 아이디 중복체크2
//	@PostMapping("/member/idCheck")
//													// 사용자가 입력한 아이디 인풋에 값을 담는 변수명이 userId임
//	public ResponseEntity<Map<String, Boolean>> idCheck(@RequestParam("userId") String id) {
//		Map<String, Boolean> map = new HashMap<>();
//		
//		map.put("duplicate", service.isDuplicateId(id));
//		
////		return new ResponseEntity<Map<String, Boolean>>(map, HttpStatus.OK);
////		return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build(); // 인터널 서버에러 날려보기 (개발자모드에서 500에러뜸)
//		return ResponseEntity.ok()
//							 .header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE)
////							 .header(id, null) // 헤더값 여러개 설정 가능!!
//							 .body(map); // 상태값, 헤더값, 바디값을 내가 지정함!!
//	}
//	
//	// 마이페이지 들어가기
//	@GetMapping("/member/myPage")
//	public String myPage() {
//		log.info("회원 정보 수정 페이지 요청!!!!!!!!!!	");
//		
//		return "/member/myPage";
//	}
//
//	// 정보수정 완료버튼 누를때 (업데이트서블릿 참고)
//	// 전달해야할 정보, 보여줘야할 뷰 둘다 한꺼번에 보내고싶을때 ModelAndView
//	@PostMapping("/member/update")
//	public ModelAndView update(
//				ModelAndView modelAndView,
//				@SessionAttribute("loginMember") Member loginMember,
//				@ModelAttribute Member member) {
//	
//	int result = 0;
//		
//		System.out.println(loginMember);
//		System.out.println(member);
//		
//		member.setNo(loginMember.getNo());
//		
//		log.info(member.toString());
//		
//		result = service.save(member);
//		
//		if(result > 0) {
//			modelAndView.addObject("loginMember", service.findMemberById(loginMember.getId()));
//			modelAndView.addObject("msg", "회원 정보 수정을 완료했습니다.");
//		} else {
//			modelAndView.addObject("msg", "회원 정보 수정을 실패했습니다.");			
//		}
//		
////		modelAndView.addObject("msg", "업데이트 테스트");
//		modelAndView.addObject("location", "/member/myPage");
//		modelAndView.setViewName("common/msg");
//		
//		return modelAndView;
//	}
//	
//	// 회원 탈퇴
//	@GetMapping("/member/delete")
//	public ModelAndView delete(
//				ModelAndView modelAndView,
//				@SessionAttribute("loginMember") Member loginMember) {
//		
//		int result = 0;
//		
//		result = service.delete(loginMember.getNo());
//		
//		if(result > 0) {
//			modelAndView.addObject("msg", "정상적으로 탈퇴되었습니다.");
//			modelAndView.addObject("location", "/logout");
//		} else {
//			modelAndView.addObject("msg", "회원 탈퇴를 실패하였습니다.");
//			modelAndView.addObject("location", "/member/myPage");
//		}
//		
//		modelAndView.setViewName("common/msg");
//		
//		return modelAndView;
//	}
//	
//	
//	
	
	// 04-19 메일 테스트(완료)
	// sendMail 코드
	@RequestMapping(value = "/enroll/mailCheck", method = RequestMethod.GET)
	@ResponseBody
	public String sendMail(String email) {

		//뷰에서 넘어왔는지 확인
		System.out.println("이메일 전송");
		
		//난수 생성(인증번호)
		Random r = new Random();
		int num = r.nextInt(888888) + 111111;  //111111 ~ 999999 난수~
		System.out.println("인증번호 : " + num);
		
		/* 이메일 보내기 */
        String setFrom = "mailsender0128@gmail.com"; //보내는 이메일
        String toMail = email; //받는 사람 이메일
        String title = "ORDER BY 회원가입 인증 이메일 입니다.";
        String content = 
                "ORDER BY 홈페이지를 방문해주셔서 감사합니다." +
                "<br><br>" + 
                "인증 번호는 " + num + " 입니다." + 
                "<br>" + 
                "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
        
        try {
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
            helper.setFrom(setFrom);
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(content,true);
            mailSender.send(message);
            
        }catch(Exception e) {
        	e.printStackTrace();
        }
        String rnum = Integer.toString(num);  //view로 다시 반환할 때 String만 가능
        
        return rnum;
	}
	


}
