package com.global.kapla.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.global.kapla.paging.Criteria;
import com.global.kapla.service.CartService;
import com.global.kapla.service.MyPageService;
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
	CartService cartService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	OrderService orderService;
	
	@Autowired
	MyPageService mypageService;
	/**
	 * 2023.02.08
	 * 아이디 중복 체크
	 * 김도형
	 */
	@PostMapping("/idchk")
	public int idChk(@RequestBody UserVO userVO) {
		
		return userService.findUser(userVO);
	}
	
	//////////////////   카트     //////////////////////// 
	@PutMapping("/cart")
	public int updateCart(@RequestBody CartVO cartVO, Principal principal) {
		
		cartVO.setId(principal.getName());
		
		return cartService.updateCart(cartVO);
	}
	
	@DeleteMapping("/cart")
	public int deleteCart(@RequestBody CartVO cartVO, Principal principal) {
		
		cartVO.setId(principal.getName());
		log.info("값들"+cartVO);
		
		return cartService.deleteCart(cartVO);
	}
	
	@PutMapping("/user")
	public int updateUser(@RequestBody UserVO userVO, Principal principal) throws Exception {
		
		userVO.setId(principal.getName());
		int num = userService.updateUser(userVO);
		
		return num;
	}
	
	/**
	 * 2023.02.02
	 * 주문정보 저장
	 * 김도형
	 */
	@PostMapping("/order")
	public int insertOrder(@RequestBody OrderVO orderVO, Principal principal) {
		
		orderVO.setId(principal.getName());
		
		return orderService.insertOrder(orderVO);
	}
	
	@GetMapping("/order/list")
	public List<OrderVO> order_list(Principal principal,Criteria criteria, @RequestParam String startDate, @RequestParam String endDate) throws Exception {
		
		criteria.setStartDate(startDate);
		criteria.setEndDate(endDate);
		criteria.setId(principal.getName());
		return mypageService.getRecentOrderList(criteria);
	}
	
	@PostMapping("/pwdChk")
	public int pwdChk(@RequestBody UserVO userVO, Principal principal) {
		userVO.setId(principal.getName());
		return userService.pwdChk(userVO);
	}
}
