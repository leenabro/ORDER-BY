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

	private int mNo; // 회원 번호 SEQ (PK)

	private String mId; // 회원 아이디
	
	private String mPassword; // 회원 비밀번호
	
	private String mName; // 가입자 이름
	
	private String mBirth; // 가입자 생년월일
	
	private String mEmail; // 가입자 이메일
	
	private String mPhone; // 가입자 전화번호
	
	private String mGender; // 가입자 성별

	private String mAddress; // 가입자 주소

	private String mDetailAdd; // 가입자 상세주소
	
	private int mPoint; // 회원 보유 포인트 default 0
	
	private String mRole; // 회원등급 (브론즈B, 실버S, 골드G, 다이아D, 마스터M(관리자)) default B
	
	private Date mEnrollDate; // 가입일자 default sysdate

	private Date mModifyDate; // 정보 수정일자 default sysdate
	
	private String mStatus; // 회원상태 (Y회원, N탈퇴) default Y
	
	private int mCnum; // 인증번호 default 0

	private int mPcount; // 회원 결제횟수 default 0

	
	public Member(String mId, String mPassword) {
		this.mId = mId;
		this.mPassword = mPassword;
	}


	@Override
	public String getUsername() {
		
		return this.mId;
	}
	
	@Override
	public String getPassword() {
		
		return this.mPassword;
	}
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		ArrayList<GrantedAuthority> authorities = new ArrayList<>();
		
		// 이 메소드를 통해서 권한목록을 가져올거다! 가장 만만한 arrayList배열로.. 인덱스..꺼내옴....
		authorities.add(new SimpleGrantedAuthority(this.mRole));
		
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
		return this.mStatus.equals("Y");
	}
}


