package com.global.kapla.serviceImpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.global.kapla.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService{

	@Override
	public List<HashMap<String, Object>> getCartList() {
		// TODO Auto-generated method stub
		
		List<HashMap<String, Object>> list = new ArrayList<HashMap<String,Object>>();
		
		HashMap<String, Object> map1 = new HashMap<String, Object>();
		HashMap<String, Object> map2 = new HashMap<String, Object>();
		
		map1.put("item", "Bloom");
		map1.put("price", 50000);
		map1.put("quantity", 2);
		map1.put("sumPrice", 100000);
		list.add(map1);
		
		map2.put("item", "Bloom");
		map2.put("price", 50000);
		map2.put("quantity", 2);
		map2.put("sumPrice", 100000);
		list.add(map2);
		return list;
	}

	@Override
	public int getTotalPrice(List<HashMap<String, Object>> list) {
		
		int total_price = 0;
		
		for (int i=0; i <list.size(); i++) {
			total_price += (int)list.get(i).get("sumPrice");
		}
		
		return total_price;
	}

	
	
}
