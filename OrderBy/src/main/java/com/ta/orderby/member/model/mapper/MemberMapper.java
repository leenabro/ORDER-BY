package com.ta.orderby.member.model.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
//import org.apache.ibatis.session.SqlSession;

import com.ta.orderby.member.model.vo.Member;

@Mapper
public interface MemberMapper {

	// 로그인 시
	Member selectMemberById(String id);
	
	// 회원가입 시
	int insertMember(Member member);
	
	int updateMember(Member member);
	
	int updateMemberStatus(int no, String status);

	// 아이디 중복체크
	// vo가 @Param("mId") 임!
	int selectCountById(String id);

	
	// 메일 인증
	void setVerified(String email);

	void insertVerificationToken(@Param("tkEmail") String mEmail, @Param("tkToken") String token);
	
	String getVerificationToken(@Param("tkEmail") String email);

	Member getEmail(String email);

	void saveVerificationToken(String id, @Param("tkToken") String token);

	Member findByEmail(String email);

	
	// 메일중복체크
	Member selectOneMember(String email);

	
	// (04-19) 이메일 인증 테스트
	void insertToken(Member token);

	
	
	
	

	
}
