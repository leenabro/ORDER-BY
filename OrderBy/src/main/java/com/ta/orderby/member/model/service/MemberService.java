package com.ta.orderby.member.model.service;

import com.ta.orderby.member.model.vo.Member;
import com.ta.orderby.member.model.vo.PopQNA;

public interface MemberService {
	// 인터페이스기때문에 추상메소드로만 구현될거다. (결합도 낮추기위해 다형성) 서비스는 딱히 걍 패스해주는정도의 조연급인듯
	
	
	// 아이디 조회
	Member findMemberById(String id);
	
	// 로그인
	Member login(String id, String password);
	
	// 회원가입 (1이면 ㅇㅋ 0이면 ㄴㄴ)
	int save(Member member); // 컨트롤러 엔롤안에 포함될거임
//	void join(Member member) throws Exception; // 컨트롤러 엔롤안에 포함될거임
	
	// 회원 탈퇴
	int delete(int no);

	// 아이디 중복체크
	int checkId(String id);

//	// 회원 가입 
//	int insertMember(Member member);


	//팝업 문의 보내기
	void insertPopQNA(PopQNA popQNA);





}
