package com.global.kapla.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage")
public class MyPageController {
	
	@GetMapping("/orderList")
	public String orderList() {
		return "mypage/order_list";
	}

}
