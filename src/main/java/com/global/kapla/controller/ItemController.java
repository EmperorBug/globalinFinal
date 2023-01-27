package com.global.kapla.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.global.kapla.service.ItemService;
import com.global.kapla.vo.ItemVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/product")
public class ItemController {
	
	@Autowired
	private ItemService itemService;
	
	// http://localhost:8282/product/itemlist?category_no=1
	@GetMapping("/itemlist")
	public String itemListPage2(ItemVO itemVO, Model model) {
		log.info("데이터베이스에서 아이템 리스트를 불러왔습니다.");
		
		int category_num = itemVO.getCategory_num();
		model.addAttribute("products", itemService.getList(category_num));
		return "itemlist"; 
	}
	
	// http://localhost:8282/product/product_view?id=1
	@GetMapping("/product_view")
	public String content_view(ItemVO itemVO, Model model) {
		log.info("product_detail_view() ..");
		
		int item_no = itemVO.getItem_no();		
		model.addAttribute("product_view", itemService.viewProductPage(item_no));
		
		
		return "product_detail";
	}
	
}
