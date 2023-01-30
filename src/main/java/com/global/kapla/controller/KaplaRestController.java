package com.global.kapla.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.global.kapla.service.OrderService;
import com.global.kapla.service.UserService;
import com.global.kapla.vo.CartVO;
import com.global.kapla.vo.OrderVO;
import com.global.kapla.vo.UserVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequestMapping("/rest")
public class KaplaRestController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	OrderService orderService;
	
	@PutMapping("/cart")
	public int updateCart(@RequestBody List<CartVO> cartVO) {
		log.info("넘어온값 "+cartVO);
		log.info("넘어온값길이 "+cartVO.size());
		return 1;
	}
	
	@PutMapping("/user")
	public int updateUser(@RequestBody UserVO userVO, Principal principal) throws Exception {
		log.info("넘어온값"+userVO);
		log.info("넘어온값"+principal);
		userVO.setId(principal.getName());
		int num = userService.updateUser(userVO);
		return num;
	}
	
//	넘어오는값 수정필요
	@PostMapping("/order")
	public int test(@RequestBody OrderVO orderVO, Principal principal) {
		log.info("넘어온값 :"+orderVO);
		orderVO.setId(principal.getName());
		return orderService.insertOrder(orderVO);
	}
}
