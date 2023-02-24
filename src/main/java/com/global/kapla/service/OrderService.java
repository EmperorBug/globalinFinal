package com.global.kapla.service;

import java.util.List;

import com.global.kapla.vo.CartVO;
import com.global.kapla.vo.OrderVO;

public interface OrderService {
	
	public List<CartVO> getCartList(String[] itemList, String[] quantityList);
	public int getTotalPrice(List<CartVO> list);
	public String getOrderNo();
	public int insertOrder(OrderVO orderVO);
	public OrderVO getOrder(OrderVO orderVO);
}
