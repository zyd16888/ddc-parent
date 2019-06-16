package com.ddc.server.shiro;

import org.apache.shiro.authc.AuthenticationToken;

/**
 * @author dingpengfei
 * @since 2019-05-09
 */
public class JWTToken implements AuthenticationToken {

    /**
     * 密钥
     */
    private String token;

    public JWTToken(String token) {
        this.token = token;
    }

    @Override
    public Object getPrincipal() {
        return token;
    }

    @Override
    public Object getCredentials() {
        return token;
    }
}
