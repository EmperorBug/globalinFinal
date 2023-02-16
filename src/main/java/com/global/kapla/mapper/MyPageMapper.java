package com.global.kapla.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.global.kapla.paging.Criteria;
import com.global.kapla.vo.OrderVO;

@Mapper
public interface MyPageMapper {
	public List<OrderVO> getList(Criteria criteria);
	public List<HashMap<String, Integer>> getOrderInfo(String id); 
}
