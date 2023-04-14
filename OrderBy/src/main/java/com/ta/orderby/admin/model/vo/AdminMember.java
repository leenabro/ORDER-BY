package com.ta.orderby.admin.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AdminMember {
	private int no; // 회원 번호 SEQ (PK)

	private String id; // 회원 아이디
	
	private String password; // 회원 비밀번호
	
	private String name; // 가입자 이름
	
	private String birth; // 가입자 생년월일
	
	private String email; // 가입자 이메일
	
	private String phone; // 가입자 전화번호
	
	private String gender; // 가입자 성별

	private String address; // 가입자 주소

	private String detailAdd; // 가입자 상세주소
	
	private int point; // 회원 보유 포인트 default 0
	
	private String role; // 회원등급 (브론즈, 실버, 골드, 다이아, 마스터(관리자)) default 브론즈
	
	private Date enrollDate; // 가입일자 default sysdate

	private Date modifyDate; // 정보 수정일자 default sysdate
	
	private String status; // 회원상태 (Y회원, N탈퇴) default Y
	
	private int cnum; // 인증번호 default 0

	private int pcount;
	
	public AdminMember(String id, String password) {
		this.id = id;
		this.password = password;
	}
}


