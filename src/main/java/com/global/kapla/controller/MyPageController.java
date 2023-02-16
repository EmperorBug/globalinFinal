package com.global.kapla.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.global.kapla.paging.Criteria;

@Controller
@RequestMapping("/mypage")
public class MyPageController {
	
	@GetMapping("/orderList")
	public String orderList(Criteria criteria, Model model) {
		
		return "mypage/order_list";
	}

}
