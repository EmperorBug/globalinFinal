package com.global.kapla.controller;

import java.util.List;

import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.global.kapla.vo.CartVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequestMapping("/rest")
public class KaplaRestController {
	
	@PutMapping("/cart")
	public int updateCart(@RequestBody List<CartVO> cartVO) {
		log.info("넘어온값 "+cartVO);
		log.info("넘어온값길이 "+cartVO.size());
		return 1;
	}
}
