package com.global.kapla.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.global.kapla.mapper.UserMapper;
import com.global.kapla.vo.UserDetailsVO;
import com.global.kapla.vo.UserVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class CustomUserDetailsService implements UserDetailsService {
	
	@Autowired
	private UserMapper userMapper;
	
	//커스텀마이징 하는부분
	//UserDetailsService 구현해주면
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		//스프링 시큐리티가 이 메소드를 제일 먼저 호출함.
		//스프링 시큐리티는 필터쪽에서 동작.
		log.warn("Load User by UserVO number : "+username);
		UserVO vo = userMapper.getUser(username);
		
		
		log.warn("queried User by UserVO mapper : "+vo);
		return vo == null ? null : new UserDetailsVO(vo);
		
		
	}
	
	
}
