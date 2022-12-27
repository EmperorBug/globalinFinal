package com.global.kepla.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class MainController {
	
	@GetMapping("/")
	public String hello() {
		return "main";
	}
	
	@GetMapping("/map")
	public String map() {
		return "directions"; 
	}
}
