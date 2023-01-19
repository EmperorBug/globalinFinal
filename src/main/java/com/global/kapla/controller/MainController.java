package com.global.kapla.controller;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.slf4j.Slf4j;

@Slf4j
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
	
	@GetMapping("/cart")
	public String cartPage() {
		return "cart"; 
	}

	@GetMapping("/admin")
	public String adminPage() {
		return "admin";
	}

	@GetMapping("/event")
	public String eventPage() {
		return "event";
	}
	
}
