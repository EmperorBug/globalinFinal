package com.global.kapla.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class UserController {
	
	@GetMapping("/user")
	public String hello() {
		log.info("main()......");
		return "main";
	}
}
