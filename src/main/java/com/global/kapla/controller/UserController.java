package com.global.kapla.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.global.kapla.service.UserService;
import com.global.kapla.util.KaplaCode;
import com.global.kapla.vo.UserVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	UserService userService;
	/**
	 * 2023.01.11
	 * 김도형
	 * 로그인구현
	 */
	@GetMapping("/login")
	public String loginForm( @RequestParam(value = "error", required = false) String error,
            @RequestParam(value = "exception", required = false) String exception,
            Model model) {
		model.addAttribute("error",error);
        model.addAttribute("exception",exception);
		return "user/login";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return KaplaCode.REDIRECT_MAIN;
	}
	
	/**
	 * 2023.01.12
	 * 김도형
	 * 회원가입
	 */
	@PostMapping("/join")
	public String join(UserVO userVO) {
		
		log.info("넘어온 값 : "+userVO);
		
		int num = userService.register(userVO);
		
		log.info("디비에 정확히 들어갔는지 체크"+num);
		return KaplaCode.REDIRECT_LOGIN;
	}
	
}
