package com.global.kapla.controller;

import java.security.Principal;

import com.global.kapla.vo.OrderVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.global.kapla.paging.Criteria;

import com.global.kapla.service.UserService;
import com.global.kapla.vo.UserVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/mypage")
public class MyPageController {
	
	@Autowired
	private UserService userService;

//	주문목록 페이지 따로 만들지않고 메인페이지랑 같이 사용
//	@GetMapping("/orderList")
//	public String orderList(Criteria criteria, Model model) {
//
//		return "mypage/order_list";
//	}
	
	@GetMapping("/modify_information")
	public String modify_information(Model model, UserVO userVO, Principal principal) throws Exception {
		
		String id = principal.getName();
		userVO.setId(id);
		
		model.addAttribute("user_info", userService.printUserName(userVO));
		log.info(userVO.getId());
		
		return "mypage/modify_information";
	}

	@GetMapping("/order/{order_no}")
	public String orderDetail(@PathVariable String order_no, Model model, Principal principal) throws Exception {

		return "/mypage/detail_view";
	}
}
