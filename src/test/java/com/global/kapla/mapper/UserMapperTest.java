package com.global.kapla.mapper;


import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.global.kapla.vo.UserVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
class UserMapperTest {
	
	@Autowired
	private UserMapper mapper;
	@Test
	void test() {
		UserVO vo = new UserVO();
		vo.setId("testuser3");
		UserVO list = mapper.login(vo);
		
		log.info(new BCryptPasswordEncoder().encode("test123@"));
		log.info(list.getPassword());
		boolean pwd = new BCryptPasswordEncoder().matches("test123@", list.getPassword());
		log.info("결과 : "+pwd);

	}

}
