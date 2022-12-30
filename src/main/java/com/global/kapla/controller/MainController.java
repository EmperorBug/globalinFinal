package com.global.kapla.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MainController {
	
	@GetMapping("/")
	public String hello() {
		log.info("main()......");
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
	
	@GetMapping("/itemlist")
	public String itemListPage() {
		return "itemlist"; 
	}
	
	@GetMapping("/signup")
	public String signUpPage() {
		return "signUp"; 
	}
	
}
