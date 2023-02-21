package com.global.kapla.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.global.kapla.security.CustomUserDetailsService;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Configuration
@EnableWebSecurity	//시큐리티 필터가 스프링 필터체인에 등록
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	//개발자가 구현
	@Autowired
	CustomUserDetailsService customUserDetailsService;
	
	private final AuthenticationSuccessHandler customSuccessHandler;
	private final AuthenticationFailureHandler customFailureHandler;
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		/*
		 *초기 개발시에는 꺼주고 나중에 다시 킨다.
		*/
		//메인, 로그인, 
		http.csrf().disable();
		http.authorizeHttpRequests()
//			.antMatchers("/admin/**").hasAnyRole("ADMIN")
			.antMatchers("/order/**", "/cart/**", "/product/cart", "/mypage/**").hasAnyRole("USER","ADMIN")
			.antMatchers("/**").permitAll();	
		
		//스프링 기본 로그인폼으로 띄움
		//스프링에서 파라미터로 넘겨받는 기본값은 username, password다
		//이걸 변경하려면 밑에 파라미터 설정값을 변경해준다
		http.formLogin()
		.loginPage("/user/login")
		.usernameParameter("id")	//기본값 username을 id로 변경 jsp에서도 바꿔줘야함
		.successHandler(customSuccessHandler)
		.failureHandler(customFailureHandler);
	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(customUserDetailsService).passwordEncoder(new BCryptPasswordEncoder());
	}
}
