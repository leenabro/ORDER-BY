package com.ta.orderby.member.model.vo;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member implements UserDetails {
	/**
	 * 
	 */
	private static final long serialVersionUID = -9164206131055194574L;

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
	
	private String role; // 회원등급 (브론즈B, 실버S, 골드G, 다이아D, 마스터M(관리자)) default B
	
	private Date enrollDate; // 가입일자 default sysdate

	private Date modifyDate; // 정보 수정일자 default sysdate
	
	private String status; // 회원상태 (Y회원, N탈퇴) default Y
	
	private int cnum; // 인증번호 default 0

	private int pcount; // 회원 결제횟수 default 0

	private String verified; // 메일 인증 여부 true Y false N
	
	// 여기서부터는 TOKEN 테이블
	
	private int tkNo; // 토큰번호 SEQ

//	private int no; // 회원번호 SEQ(멤버 테이블 외래키)
	
	private String tkEmail; // 인증 할 이메일
	
	private String tkToken; // 인증토큰
	
	private int tkAuth; // default 0, 1은 인증되었다는 뜻

	
	
	
	
	public Member(String id, String password) {
		this.id = id;
		this.password = password;
	}


	@Override
	public String getUsername() {
		
		return this.name;
	}
	
	@Override
	public String getPassword() {
		
		return this.password;
	}
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		ArrayList<GrantedAuthority> authorities = new ArrayList<>();
		
		// 이 메소드를 통해서 권한목록을 가져올거다! 가장 만만한 arrayList배열로.. 인덱스..꺼내옴....
		authorities.add(new SimpleGrantedAuthority(this.role));
		
		return authorities;
	}	

	@Override
	// 계정이 만료되지 않았는가?
	public boolean isAccountNonExpired() {
		
		return true;
	}

	@Override
	// 계정이 잠기지 않았는가?
	public boolean isAccountNonLocked() {
		
		return true;
	}

	@Override
	// 패스워드가 만료되지 않았는가?
	public boolean isCredentialsNonExpired() {
		
		return true;
	}

	@Override
	// 계정이	활성화 되었는가?
	public boolean isEnabled() {
		
		// 계정 스테이터스값이 Y이면 계정 살아있음!
		return this.status.equals("Y");
	}
}


