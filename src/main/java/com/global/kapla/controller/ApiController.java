package com.global.kapla.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.global.kapla.service.KakaoService;
import com.global.kapla.service.UserService;
import com.global.kapla.vo.KakaoVO;
import com.global.kapla.vo.UserVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/api")
@Controller
public class ApiController {

	@Autowired
	KakaoService kakaoService;
	
	@Autowired
	UserService userService;
	
	/**
	 * 김도형
	 * 카카오 로그인 
	 * 2023.01.02
	 * @throws Exception 
	 */
	@GetMapping("/kakaoLogin")
	public String kakaoLogin(@RequestParam String code, HttpSession session) throws Exception {
		
		//로그인코드로 엑세스토큰 받아오기
		String access = kakaoService.getToken(code);
		
		//엑세스토큰으로 유저정보 받아온후 디비 저장&로그인
		KakaoVO kakaoVO = kakaoService.getInfo(access);
		
		UserVO userVO = kakaoService.login(kakaoVO);
		
		session.setAttribute("id", userVO.getId());
		return "redirect:/";
	}
}
