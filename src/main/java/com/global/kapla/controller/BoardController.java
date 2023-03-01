package com.global.kapla.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.global.kapla.service.BoardService;
import com.global.kapla.vo.BoardVO;


@Controller
@RequestMapping("/customerservice")
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@GetMapping("/main")
	public String customerService(Model model) {
		model.addAttribute("boards", boardService.getList());
		return "customerservice";
	}
	// 고객센터 메인 페이지
	
	@GetMapping("/faq")
	public String faqPage(Model model) {
		model.addAttribute("boards", boardService.getList());
		return "customerservice";
	}
	// FAQ 페이지 = 고객센터 메인 페이지
	
	@GetMapping("/notice")
	public String noticePage(Model model) {
		model.addAttribute("notices", boardService.getNoticeList());
		return "notice";
	}
	// 공지사항 부분

	@GetMapping("/qa")
	public String qaPage() {
		
		return "qa";
	}
	
	@GetMapping("/notice/readPost")
	public String noticeView(BoardVO boardVO, Model model) {
		
		int board_no = boardVO.getBoard_no();		
		model.addAttribute("noticeView", boardService.readPost(board_no));
		
		
		return "noticeView";
	}
	
}
