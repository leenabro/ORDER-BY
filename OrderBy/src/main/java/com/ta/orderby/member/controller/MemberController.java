package com.ta.orderby.member.controller;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.ta.orderby.member.model.service.MemberService;
import com.ta.orderby.member.model.vo.Member;

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
	
	@Autowired
	NaverLoginBO naverLoginBO;
	
	@Autowired
	KakaoLoginBO kakaoLoginBO;

	
	// 로그인 페이지로 이동
//	@GetMapping("/login")
//	public String write() {
//		log.info("로그인 페이지 입장!");
//		
//		return "member/login";
//	}
	
	
	// 로그인 화면
	@RequestMapping(value = "/login")
	public String login(HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) {

		String serverUrl = request.getScheme()+"://"+request.getServerName();
		if(request.getServerPort() != 88) {
			serverUrl = serverUrl + ":" + request.getServerPort();
		}
		
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session, serverUrl);
		model.addAttribute("naverAuthUrl", naverAuthUrl);
		
		String kakaoAuthUrl = kakaoLoginBO.getAuthorizationUrl(session, serverUrl);
		model.addAttribute("kakaoAuthUrl", kakaoAuthUrl);

		return "member/login";
	}

	// 네이버 로그인 성공시 callback
	@RequestMapping(value = "/auth/naver/callback", method = { RequestMethod.GET, RequestMethod.POST })
	public String naverOauth2ClientCallback(HttpServletRequest request, HttpServletResponse response, Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws Exception {

		String serverUrl = request.getScheme()+"://"+request.getServerName();
		if(request.getServerPort() != 88) {
			serverUrl = serverUrl + ":" + request.getServerPort();
		}

		OAuth2AccessToken oauthToken;
		oauthToken = naverLoginBO.getAccessToken(session, code, state, serverUrl);
		if(oauthToken == null) {
			model.addAttribute("msg", "네이버 로그인 access 토큰 발급 오류 입니다.");
			model.addAttribute("url", "/");
			
			return "/common/redirect";
//			return "home";
		}
		
		// 로그인 사용자 정보를 읽어온다
		String apiResult = naverLoginBO.getUserProfile(oauthToken, serverUrl);
		
		JSONParser jsonParser = new JSONParser();
		Object obj = jsonParser.parse(apiResult);
		JSONObject jsonObj = (JSONObject) obj;
		
		JSONObject response_obj = (JSONObject) jsonObj.get("response");

		// 프로필 조회
		String id = (String) response_obj.get("id");
		String gender = (String) response_obj.get("gender");
		
		// 세션에 사용자 정보 등록
		session.setAttribute("islogin_r", "Y");
		session.setAttribute("id", id);
		session.setAttribute("gender", gender);
		
		return "redirect:/";
	}
	
	// 카카오 로그인 성공시 callback
	@RequestMapping(value = "/auth/kakao/callback", method = { RequestMethod.GET, RequestMethod.POST })
	public String kakaoOauth2ClientCallback(HttpServletRequest request, HttpServletResponse response, Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws Exception {

		String serverUrl = request.getScheme() + "://" + request.getServerName();
		if (request.getServerPort() != 88) {
			serverUrl = serverUrl + ":" + request.getServerPort();
		}

		OAuth2AccessToken oauthToken;
		oauthToken = kakaoLoginBO.getAccessToken(session, code, state, serverUrl);
		if (oauthToken == null) {
			model.addAttribute("msg", "카카오 로그인 access 토큰 발급 오류 입니다.");
			model.addAttribute("url", "/");
			
			return "/common/redirect";
//			return "home";
		}

		// 로그인 사용자 정보를 읽어온다
		String apiResult = kakaoLoginBO.getUserProfile(oauthToken, serverUrl);

		JSONParser jsonParser = new JSONParser();
		Object obj = jsonParser.parse(apiResult);
		JSONObject jsonObj = (JSONObject) obj;

		JSONObject response_obj = (JSONObject) jsonObj.get("kakao_account");
		
		// 프로필 조회
		String id = (String) response_obj.get("id");
		String gender = (String) response_obj.get("gender");
		
		// 세션에 사용자 정보 등록
		session.setAttribute("islogin_r", "Y");
		session.setAttribute("id", id);
		session.setAttribute("gender", gender);	

		return "redirect:/";
	}

	// 로그아웃
	@RequestMapping(value = "/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {

		// 세션 삭제
		session.invalidate();
		
		return "redirect:/";
	}	

    
    
	// 아이디찾기 페이지로 이동!
    @GetMapping("/findId")
    public String findId() {
    	
        return "member/findId"; // 아이디 찾기 화면을 나타내는 뷰 이름
    }
    
	// 비번찾기 페이지로 이동!
    @GetMapping("/findPwd")
    public String findPwd() {
    	
        return "member/findPwd"; // 비밀번호 찾기 화면을 나타내는 뷰 이름
    }
    
    

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
	
	
	
	

//	@PostMapping("/login")
//	public String loginPost(@RequestParam("id") String id,
//	                        @RequestParam("password") String password,
//	                        RedirectAttributes redirectAttributes,
//	                        HttpSession session) {
//
//	    // 아이디와 비밀번호를 이용해 로그인 시도
//	    Member member = service.login(id, password);
//
//	    if (member != null) {
//	        // 로그인 성공 시 필요한 정보만 세션에 저장
//	        session.setAttribute("loginMemberNo", member.getNo());
//	        session.setAttribute("loginMemberName", member.getName());
//	        return "redirect:/";
//	    } else {
//	        // 로그인 실패 시 에러 메시지를 리다이렉트 속성에 추가하여 로그인 페이지로 리다이렉트
//	        redirectAttributes.addFlashAttribute("errorMessage", "아이디 또는 비밀번호가 일치하지 않습니다.");
//	        return "redirect:/member/login";
//	    }
//	}
	


    
    
    
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
		
		log.info("아이디 중복 결과값 : (1이면 중복 0이면 안중복..) " + result);

		
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

	
	
	// 회원가입 완료버튼 눌렀을때 post 요청
	@PostMapping("/enroll")
	public ModelAndView enroll(ModelAndView modelAndView, @ModelAttribute Member member) {
	    // 전달해야할 정보, 보여줘야할 뷰 둘다 한꺼번에 보내고싶을때 ModelAndView
	    log.info(member.toString());
	    
		System.out.println(member.getNo());
		System.out.println(member.getId());
		System.out.println(member.getPassword());
		System.out.println(member.getName());
		System.out.println(member.getBirth());
		System.out.println(member.getEmail());
		System.out.println(member.getPhone());
		System.out.println(member.getGender());
		System.out.println(member.getAddress());
		System.out.println(member.getDetailAdd());

	    
	    
	    int result = service.save(member); // 서비스 세이브 가져옴
	    System.out.println("컨트롤러 멤버 값" + member);	    
	    if(result > 0) {
	        modelAndView.addObject("msg", "회원가입이 정상적으로 완료되었습니다.");
	        modelAndView.addObject("location", "/"); // 로케이션은 홈으로 보낸다.
	    } else {
	        modelAndView.addObject("msg", "회원가입을 실패하였습니다.");
	        modelAndView.addObject("location", "/member/enroll"); // 로케이션은 회원가입페이지로 보낸다.
	    }

	    modelAndView.setViewName("common/msg");
	    
	    log.info("컨트롤러 모델엔뷰 값 : {}", modelAndView);
	    System.out.println("컨트롤러 모델엔뷰 값" + modelAndView);
	    
	    System.out.println("컨트롤러 멤버 값" + member);	
		System.out.println(member.getNo());
		System.out.println(member.getId());
		System.out.println(member.getPassword());
		System.out.println(member.getName());
		System.out.println(member.getBirth());
		System.out.println(member.getEmail());
		System.out.println(member.getPhone());
		
		System.out.println(member.getGender());
		System.out.println(member.getAddress());
		System.out.println(member.getDetailAdd());
	    
	    return modelAndView;
	}
	
	// 회원가입 완료버튼 눌렀을때 post 요청
//	@RequestMapping(value="/enroll", method=RequestMethod.POST)
//	public String joinPOST(Member member) throws Exception{
//		
//		log.info("join 진입");
//		
//		// 회원가입 서비스 실행
//		service.join(member);
//		
//		log.info("join Service 성공하고 로그인화면으로 간다!");
//		
//		return "member/login";
//		
//	}
	
	

	    

	
	
	
	
	
	
	
	

	
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
