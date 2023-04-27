package com.ta.orderby.member.controller;
 
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;

import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.oauth.OAuth20Service;
import com.ta.orderby.common.util.KakaoOAuthApi20;


 
@Component
public class KakaoLoginBO {

	// 카카오 로그인 정보
	// REST API KEYYYYY
	private final static String KAKAO_CLIENT_ID = "a1977c256a18495a90a24d8914cc3d97";
	// 보안 > Client Secret
	private final static String KAKAO_CLIENT_SECRET = "byecVJI9dOQMzbNCynFxUAILBQOp49IX";
	private final static String KAKAO_REDIRECT_URI = "/auth/kakao/callback";
	
	private final static String SESSION_STATE = "kakao_oauth_state";
	private final static String PROFILE_API_URL = "https://kapi.kakao.com/v2/user/me";

	public String getAuthorizationUrl(HttpSession session, String serverUrl) {
		String state = generateRandomString();
		setSession(session, state);
		OAuth20Service oauthService = new ServiceBuilder().apiKey(KAKAO_CLIENT_ID).apiSecret(KAKAO_CLIENT_SECRET).callback(serverUrl + KAKAO_REDIRECT_URI).state(state).build(KakaoOAuthApi20.instance());
		return oauthService.getAuthorizationUrl();
	}

	public OAuth2AccessToken getAccessToken(HttpSession session, String code, String state, String serverUrl) throws Exception {
		String sessionState = getSession(session);
		if (StringUtils.equals(sessionState, state)) {
			OAuth20Service oauthService = new ServiceBuilder().apiKey(KAKAO_CLIENT_ID).apiSecret(KAKAO_CLIENT_SECRET).callback(serverUrl + KAKAO_REDIRECT_URI).state(state).build(KakaoOAuthApi20.instance());
			OAuth2AccessToken accessToken = oauthService.getAccessToken(code);
			return accessToken;
		}
		return null;
	}

	public String getUserProfile(OAuth2AccessToken oauthToken, String serverUrl) throws Exception {
		OAuth20Service oauthService = new ServiceBuilder().apiKey(KAKAO_CLIENT_ID).apiSecret(KAKAO_CLIENT_SECRET).callback(serverUrl + KAKAO_REDIRECT_URI).build(KakaoOAuthApi20.instance());
		OAuthRequest request = new OAuthRequest(Verb.GET, PROFILE_API_URL, oauthService);
		oauthService.signRequest(oauthToken, request);
		Response response = request.send();
		return response.getBody();
	}
	
	private String generateRandomString() {
		return UUID.randomUUID().toString();
	}

	private void setSession(HttpSession session, String state) {
		session.setAttribute(SESSION_STATE, state);
	}

	private String getSession(HttpSession session) {
		return (String) session.getAttribute(SESSION_STATE);
	}
}