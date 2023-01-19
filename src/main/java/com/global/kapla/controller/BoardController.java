package com.global.kapla.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.global.kapla.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@GetMapping("/customerservice")
	public void customerService(Model model) {
		model.addAttribute("boards", boardService.getList());
	}
	
	
	@GetMapping("/customerservice2")
	public String customerService2() {
		
		return "customerservice";
	}
	
}
