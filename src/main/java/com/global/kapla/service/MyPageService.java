package com.global.kapla.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.global.kapla.paging.Criteria;
import com.global.kapla.vo.OrderVO;

public interface MyPageService {

	public List<OrderVO> getRecentOrderList(Criteria criteria);
	public List<HashMap<String, Integer>> getOrderInfo(String id);
	public List<OrderVO> getDetailList(Map<String, String> order_map);

}
