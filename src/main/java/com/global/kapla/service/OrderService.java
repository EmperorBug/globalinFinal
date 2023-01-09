package com.global.kapla.service;

import java.util.HashMap;
import java.util.List;

public interface OrderService {
	
	public List<HashMap<String, Object>> getCartList();
	public int getTotalPrice(List<HashMap<String, Object>> list);
}
