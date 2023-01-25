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
	// 고객센터 메인 페이지
	
	@GetMapping("/customerservice/faq")
	public String faqPage(Model model) {
		model.addAttribute("boards", boardService.getList());
		return "customerservice";
	}
	// FAQ 페이지 = 고객센터 메인 페이지
	
	@GetMapping("/customerservice/notice")
	public String noticePage() {
		
		return "notice";
	}
	// 공지사항 부분

	@GetMapping("/customerservice/qa")
	public String qaPage() {
		
		return "qa";
	}
	
}
