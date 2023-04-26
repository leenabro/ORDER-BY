package com.ta.orderby.common.util;

import org.springframework.stereotype.Component;

import com.github.scribejava.core.builder.api.DefaultApi20;
import com.github.scribejava.core.model.OAuthConfig;

//@Component
//public class NaverOAuthApi20 extends DefaultApi20 {
//	protected NaverOAuthApi20() {
//	}
//
//	private static class InstanceHolder {
//		private static final NaverOAuthApi20 INSTANCE = new NaverOAuthApi20();
//	}
//
//	public static NaverOAuthApi20 instance() {
//		return InstanceHolder.INSTANCE;
//	}
//
//	@Override
//	public String getAccessTokenEndpoint() {
//		return "https://nid.naver.com/oauth2.0/token";
//	}
//
//	@Override
//	protected String getAuthorizationBaseUrl() {
//		return "https://nid.naver.com/oauth2.0/authorize";
//	}
//}






@Component
public class NaverOAuthApi20 extends DefaultApi20 {

    private static final String AUTHORIZE_URL = "https://nid.naver.com/oauth2.0/authorize";

    protected NaverOAuthApi20() {
    }

    private static class InstanceHolder {
        private static final NaverOAuthApi20 INSTANCE = new NaverOAuthApi20();
    }

    public static NaverOAuthApi20 instance() {
        return InstanceHolder.INSTANCE;
    }

    @Override
    public String getAccessTokenEndpoint() {
        return "https://nid.naver.com/oauth2.0/token";
    }
    
    public String getAuthorizationBaseUrl(OAuthConfig config) {
        return String.format(AUTHORIZE_URL + "?client_id=%s&redirect_uri=%s&response_type=code&state=%s",
                config.getApiKey(), config.getCallback(), config.getState());
    }

	@Override
	protected String getAuthorizationBaseUrl() {

		return AUTHORIZE_URL;
	}
}