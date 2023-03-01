package com.global.kapla.mapper;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class CartMapperTest {

	@Autowired
	CartMapper mapper;
	
	@Test
	void test() {
		System.out.println(mapper.getList("testuser3"));
	}

}
