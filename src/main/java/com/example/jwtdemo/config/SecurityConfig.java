package com.example.jwtdemo.config;

import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests() // HttpServletRequest 를 사용하는 요청들에 대한 접근제한 설정
                .antMatchers("/api/hello").permitAll() // "/api/hello"에 대한 요청은 인증없이 접근허용
                .anyRequest().authenticated(); // 나머지 요청은 인증 받아야 함
    }
}
