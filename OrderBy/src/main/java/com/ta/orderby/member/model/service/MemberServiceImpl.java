package com.ta.orderby.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ta.orderby.member.model.mapper.MemberMapper;
import com.ta.orderby.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

// 구현내용이 바뀌어서 다른 구현체를 써야할때 결합도를 최소화하기위해 인터페이스를 만들고 그걸 구현한다.
@Service // 비지니스 로직을 처리하는 빈으로 만들거임!
@Transactional
@Slf4j
public class MemberServiceImpl implements MemberService, UserDetailsService {
//	@Autowired
//	private MemberDao dao;
//	
//	@Autowired
//	private SqlSession session;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	// 회원가입때는 암호화된(인코딩) 값으로 넘길예정 $2a$10$52EUR2ea4FnPkD8G0x81QuWNOEPZSgRTVy.UaiTAgqEECQGt7XuHW << 요딴식임
	//$2a$10$tQ7jxV2b63HE7rnV7ePm3OcqS6v.jklc0.gY16HstiP20InwobqAK 1234
	
	@Autowired
	private MemberMapper mapper;

	// (04-19) 이메일 구현 테스트 ------------------------------------------------------------------
	@Autowired
    private JavaMailSender mailSender;
    
    @Autowired
    private MemberMapper memberMapper;
//    -------------------------------------------------------------------------------------- 여기까지
	
	// UserDetailsService 로그인쪽 조회구현(시큐리티 흑흑)
	@Override
	public UserDetails loadUserByUsername(String name) throws UsernameNotFoundException {
		Member member = mapper.selectMemberById(name);
		
		System.out.println("name : " + name);
		System.out.println("member : " + member);
		
		if(member == null) {
			throw new UsernameNotFoundException(name + "의 사용자를 찾을 수 없습니다.");
		}
		
		
		log.info("name : {}", member.getId());
		
		return member;
	}
	

	
	// 로그인(시큐리티)
	@Override
	public Member login(String id, String password) {
		Member member = null;
		
		member = this.findMemberById(id);
		
		// 매번 랜덤한 솔트값을 가지고 암호화 하기 때문에 매번 다른 값으로 암호화 된다.
		System.out.println(passwordEncoder.encode(password));
		
		//matches() 메소드를 사용하면 내부적으로 복화화해서 나온 결과 값에 솔트값을 땐 나머지 값과 원문을 비교한다.
										// matches : 암호화가 되지않은 원문하고 암호화된 문자열을 받아서 둘을 비교하고 동일하면 true가 나온다.
		System.out.println(passwordEncoder.matches(password, member.getPassword()));
		
		if (member != null && passwordEncoder.matches(password, member.getPassword())) {
			
			return member;
		} else {
			
			return null;
		}
		
	}
	
	// 아이디 조회 (로그인 시 가능)
	@Override
	public Member findMemberById(String id) {
		
		return mapper.selectMemberById(id);
	}

	// 회원가입
	@Override
	@Transactional
	public int save(Member member) {
		int result = 0;
		
		if(member.getNo() > 0) {
			// update
			result = mapper.updateMember(member);
		} else {
			// insert 먼저할거임 (이거 3월 20일 월요일에 안바꿔서 sql문에 null들어갔다고 에러났으니 주의하셈)
			member.setPassword(passwordEncoder.encode(member.getPassword()));
			
			result = mapper.insertMember(member);
		}
		
//		if(true) { // 오류발생!!
//			throw new RuntimeException();
//		}
		
		return result;
	}
	
	
	// 아이디 중복체크
	@Override
	public int checkId(String id) {
		int result = mapper.selectCountById(id);
		System.out.println("result: " + result);
		
		return result;
	}
	

	// 회원 탈퇴
	@Override
	@Transactional // 중간에 잘못되면 롤백될수있게 트랜잭셔널 어노테이션 붙여줌!
	public int delete(int no) {
		
		return mapper.updateMemberStatus(no, "N");
	}


	
	





    

}
