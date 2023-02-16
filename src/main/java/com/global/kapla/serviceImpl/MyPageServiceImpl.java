package com.global.kapla.serviceImpl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.global.kapla.mapper.MyPageMapper;
import com.global.kapla.paging.Criteria;
import com.global.kapla.service.MyPageService;
import com.global.kapla.vo.OrderVO;

@Service
public class MyPageServiceImpl implements MyPageService{

	@Autowired
	MyPageMapper myPageMapper;
	
	@Override
	public List<OrderVO> getRecentOrderList(Criteria criteria) {
		// TODO Auto-generated method stub
		return myPageMapper.getList(criteria);
	}

	@Override
	public List<HashMap<String, Integer>> getOrderInfo(String id) {
		// TODO Auto-generated method stub
		return myPageMapper.getOrderInfo(id);
	}
	
	
}
