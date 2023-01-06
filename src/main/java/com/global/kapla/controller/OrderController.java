package com.global.kapla.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.global.kapla.service.UserService;
import com.global.kapla.vo.UserVO;

@Controller
public class OrderController {

	@Autowired
	UserService userService;
	
	@GetMapping("/order")
	public String order (HttpSession session, Model model) throws Exception {
		
		String user_id = (String) session.getAttribute("id");
		UserVO userVO = userService.userInfo(user_id);
		
		model.addAttribute("user", userVO);
		return "order/order";
	}
}
