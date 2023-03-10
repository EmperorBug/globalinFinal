package com.global.kapla.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.global.kapla.paging.Criteria;
import com.global.kapla.service.CartService;
import com.global.kapla.service.MyPageService;
import com.global.kapla.service.OrderService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MainController {
// 장바구니 서비스
	@Autowired
	CartService cartService;

	@Autowired
	OrderService orderService;
	
	@Autowired
	MyPageService myPageService;
	
	@GetMapping("/")
	public String hello() {
		return "main";
	}

	@GetMapping("/map")
	public String map() {
		return "directions"; 
	}
	
	@GetMapping("/brand")
	public String brandPage() {
		return "brand"; 
	}
	
	@GetMapping("/signup")
	public String signUpPage() {
		return "user/signUp"; 
	}
	
	@GetMapping("/favorite")
	public String favoritePage() {
		return "favorite"; 
	}

	@GetMapping("/mypage")
	public String myPage(Model model, Principal principal, Criteria criteria) {
		log.info("mypage들어옴");
		
		criteria.setAmount(10);//최근 7건의 주문내역 가져옴
		criteria.setId(principal.getName());
		
//		model.addAttribute("order_list", myPageService.getRecentOrderList(criteria));
		model.addAttribute("order_info", myPageService.getOrderInfo(principal.getName()));
		return "mypage/main";
	}
	
	@GetMapping("/admin")
	public String adminPage() {
		return "admin";
	}

	@GetMapping("/event")
	public String eventPage() {

		return "event";
	}

	
	@GetMapping("/cart")
	public String cartPage(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		
		String id = (String) session.getAttribute("id");
		
		model.addAttribute("list", cartService.getList(id));
		
		return "/order/cart";
	}

}