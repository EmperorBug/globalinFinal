package com.global.kapla.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.global.kapla.mapper.ItemMapper;
import com.global.kapla.service.ItemService;
import com.global.kapla.vo.ItemVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ItemServiceImpl implements ItemService{

	
	@Autowired
	ItemMapper itemMapper;
	
	public List<ItemVO> getList() {
		log.info("getList() ..");
		
		return itemMapper.getList();
	}

	@Override
	public ItemVO viewProductPage(int item_no) {
		log.info("db연동된 상품 view페이지 연결됨 ..");	
		return itemMapper.productView(item_no);
	}
	
}
