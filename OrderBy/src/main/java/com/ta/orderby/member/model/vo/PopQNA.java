package com.ta.orderby.member.model.vo;

import java.util.Collection;
import java.util.Date;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PopQNA implements UserDetails {
	/**
	 * 
	 */
	private static final long serialVersionUID = -9164206131055194574L;
	// 여기서부터는 POPQNA 테이블
	private int popNo; // 문의번호(popNo)
	
	private String popName; // 문의자이름(popName)
	
	private String popEmail; // 문의자이메일(popEmail)
	
	private String popPhone; // 문의자연락처(popPhone)
	
	private String popContent; // 문의내용(popContent)
	
	private Date popDate; // 문의작성일자(popDate)
	
	private String popStatus; // 문의확인여부(popStatus)


	

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
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return false;
	}


}


