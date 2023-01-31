package com.global.kapla.service;

import java.util.List;

import com.global.kapla.vo.CartVO;

public interface CartService {
	
	public List<CartVO> getList(String id);
	
	public int updateCart(CartVO cartVO);
	
	public int deleteCart(CartVO cartVO);
}
