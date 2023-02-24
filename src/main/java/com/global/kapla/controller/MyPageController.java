package com.global.kapla.controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.global.kapla.service.MyPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PathVariable;
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

	@Autowired
	private MyPageService myPageService;

	
	@GetMapping("/modify_information")
	public String modify_information(Model model, UserVO userVO, Principal principal) throws Exception {
		
		String id = principal.getName();
		userVO.setId(id);
		
		model.addAttribute("user_info", userService.printUserName(userVO));
		log.info(userVO.getId());
		
		return "mypage/modify_information";
	}
	
	@PostMapping("/ispwdcorrect")
	public String toModifyPage(HttpServletRequest httpServletRequest, Model model, Principal principal) throws Exception {
		
		String id = principal.getName(); // 로그인 id
		
		UserVO userVO = userService.userInfo(id);
		
		BCryptPasswordEncoder b = new BCryptPasswordEncoder();
		boolean test = b.matches(httpServletRequest.getParameter("findPassword"), userVO.getPassword());
		
		/*
		 * log.info(test + "true? or false");
		 * log.info(httpServletRequest.getParameter("findPassword") + "잘 넘어오고있는건가?" +
		 * userVO.getPassword());
		 */
		
		if(test) {
			return "redirect:/mypage/modify_page";
		}
		else
		{
			return "redirect:/mypage/modify_information";
		}
		
	}
	
	@GetMapping("/modify_page")
	public String modify_page(Model model, UserVO userVO, Principal principal) throws Exception {
		
		String id = principal.getName();
		userVO.setId(id);
		
		model.addAttribute("user_info", userService.printUserName(userVO));
		log.info(userVO.getId());
		
		return "mypage/modify_page";
	}
	@GetMapping("/order/{order_no}")
	public String orderDetail(@PathVariable String order_no, Model model, Principal principal) throws Exception {
		log.info("오더번호"+order_no);
		Map<String,String> order_map = new HashMap<>();

		order_map.put("order_no", order_no);
		order_map.put("id",principal.getName());

		model.addAttribute("order",myPageService.getDetailList(order_map));
		return "mypage/detail_view";
	}
	
	@PostMapping("/updatecomplete")
	public String modify_infoSave(UserVO userVO, Principal principal) {
		log.info("회원정보 수정이 되었습니다.");
		
		String id = principal.getName();
		userVO.setId(id);
		
		userService.updateUserInfo(userVO);
		
		return "redirect:/mypage";
	}
	
}
