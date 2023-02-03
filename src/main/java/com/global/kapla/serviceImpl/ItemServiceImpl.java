package com.global.kapla.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.global.kapla.mapper.ItemMapper;
import com.global.kapla.service.ItemService;
import com.global.kapla.vo.CartVO;
import com.global.kapla.vo.ItemVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ItemServiceImpl implements ItemService{

	
	@Autowired
	ItemMapper itemMapper;
	
	public List<ItemVO> getList(int category_no) {
		log.info("getList()" + category_no);
		
		return itemMapper.getList(category_no);
	}

	@Override
	public ItemVO viewProductPage(int item_no) {
		log.info("db연동된 상품 view페이지 연결됨 ..");	
		return itemMapper.productView(item_no);
	}

	@Override
	public void insertItemToCart(CartVO cartVO) {
		log.info("아이템이 넘어갔습니다.");
		itemMapper.insertItemToCart(cartVO);
	}
	
}
