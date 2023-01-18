package com.global.kapla.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.global.kapla.service.OrderService;
import com.global.kapla.service.UserService;

import lombok.extern.slf4j.Slf4j;

/**
 * オーダページ
 * @author gimdohyeong
 *　
 */
@Slf4j
@Controller
public class OrderController {

	@Autowired
	UserService userService;
	
	@Autowired
	OrderService orderServoce;
	
	@GetMapping("/order")
	public String order (HttpServletRequest request,  Model model) throws Exception {
		
//		HttpSession session = request.getSession(false);
//		
//		if (session.getAttribute("id").equals(null)) return KaplaCode.REDIRECT_LOGIN;
		
//		String user_id = (String) session.getAttribute("id");
//		UserVO userVO = userService.userInfo(user_id);
		List<HashMap<String,Object>> list = orderServoce.getCartList();
		
		model.addAttribute("total_price", orderServoce.getTotalPrice(list));
//		model.addAttribute("user", userVO);
		model.addAttribute("cart_list", list);
		
		
		return "order/order";
	}
}
