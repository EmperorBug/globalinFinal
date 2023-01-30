package com.global.kapla.service;

import java.util.List;

import com.global.kapla.vo.ItemVO;

public interface ItemService {
	
	public List<ItemVO> getList(int category_no);//리스트 메소드

	public ItemVO viewProductPage(int item_no);
}
