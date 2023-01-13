package com.global.kapla.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.global.kapla.vo.UserVO;

@RestController
@RequestMapping("/rest")
public class KaplaRestController {

	@PostMapping("/login")
	public int login(UserVO userVO) {
		int result_code = 200;
		return result_code;
	}
}
