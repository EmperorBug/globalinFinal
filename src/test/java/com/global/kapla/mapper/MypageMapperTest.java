package com.global.kapla.mapper;


import com.global.kapla.vo.OrderVO;
import com.global.kapla.vo.UserVO;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@SpringBootTest
class MypageMapperTest {
	
	@Autowired
	private MyPageMapper mapper;
	@Test
	void test() {
		Map<String, String> test_map = new HashMap<>();
		test_map.put("order_no", "20230209033718119081");
		test_map.put("id","testuser3");
		List<OrderVO> result = mapper.getDetailList(test_map);

		log.info("결과 : "+result);
	}

}
