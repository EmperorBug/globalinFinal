package com.global.kapla.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.global.kapla.service.OrderService;
import com.global.kapla.service.UserService;
import com.global.kapla.vo.CartVO;
import com.global.kapla.vo.OrderVO;

import lombok.extern.slf4j.Slf4j;

/**
 * オーダページ
 * @author gimdohyeong
 *　
 */
@Slf4j
@RequestMapping("/order")
@Controller
public class OrderController {

	@Autowired
	UserService userService;
	
	@Autowired
	OrderService orderService;
	
	@GetMapping("/order")
	public String order (HttpServletRequest request, Model model) throws Exception {
		String[] item_no = request.getParameterValues("item");
		String[] quantity = request.getParameterValues("quantity");
		
		String id = (String) request.getSession().getAttribute("id");
		List<CartVO> list = orderService.getCartList(item_no,quantity);
		
		
		model.addAttribute("total_price", orderService.getTotalPrice(list));
		model.addAttribute("user",userService.userInfo(id));
		model.addAttribute("order_no",orderService.getOrderNo());
		model.addAttribute("cart_list", list);
		
		
		return "order/order";
	}
	
	@PostMapping("/test")
	public String test(OrderVO orderVO) {
		log.info("넘어온값"+orderVO);
		return "";
	}
}
