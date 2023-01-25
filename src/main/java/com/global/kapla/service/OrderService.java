package com.global.kapla.service;

import java.util.List;

import com.global.kapla.vo.CartVO;

public interface OrderService {
	
	public List<CartVO> getCartList(String[] itemList, String[] quantityList);
	public int getTotalPrice(List<CartVO> list);
	public String getOrderNo();
}
