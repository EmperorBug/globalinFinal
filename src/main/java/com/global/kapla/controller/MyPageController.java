package com.global.kapla.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.global.kapla.service.UserService;
import com.global.kapla.vo.UserVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/mypage")
public class MyPageController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/orderList")
	public String orderList() {
		return "mypage/order_list";
	}
	
	@GetMapping("/modify_information")
	public String modify_information(Model model, UserVO userVO, Principal principal) throws Exception {
		
		String id = principal.getName();
		userVO.setId(id);
		
		model.addAttribute("user_info", userService.printUserName(userVO));
		log.info(userVO.getId());
		
		return "mypage/modify_information";
	}

}
