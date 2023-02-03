package com.global.kapla.service;

import java.util.List;

import com.global.kapla.vo.CartVO;
import com.global.kapla.vo.ItemVO;

public interface ItemService {
	
	public List<ItemVO> getList(int category_no); //리스트 메소드

	public ItemVO viewProductPage(int item_no); // 상품 상세페이지(정보페이지) 불러오는 메소드

	public void insertItemToCart(CartVO cartVO); // 장바구니에 담는 메소드
}
