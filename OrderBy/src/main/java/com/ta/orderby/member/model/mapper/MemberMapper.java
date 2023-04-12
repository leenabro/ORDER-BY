package com.ta.orderby.member.model.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
//import org.apache.ibatis.session.SqlSession;

import com.ta.orderby.member.model.vo.Member;

@Mapper
public interface MemberMapper {

	// 로그인 시
	Member selectMemberById(@Param("mId") String id);
	
	int insertMember(Member member);
	
	int updateMember(Member member);
	
	int updateMemberStatus(@Param("mNo") int no, @Param("status") String status);

	// 아이디 중복체크
	// vo가 @Param("mId") 임!
	int checkId(@Param("mId") String id);
}
